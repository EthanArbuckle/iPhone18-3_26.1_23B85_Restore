@interface TSUDescription
+ (id)descriptionWithCFType:(void *)type format:(id)format;
+ (id)descriptionWithObject:(id)object class:(Class)class;
+ (id)descriptionWithObject:(id)object class:(Class)class format:(id)format;
+ (id)descriptionWithObject:(id)object format:(id)format;
+ (unint64_t)peekDescriptionDepth;
+ (unint64_t)popDescriptionDepth;
+ (unint64_t)pushDescriptionDepth;
- (NSString)descriptionString;
- (TSUDescription)initWithCFType:(void *)type header:(id)header;
- (TSUDescription)initWithObject:(id)object;
- (TSUDescription)initWithObject:(id)object class:(Class)class format:(id)format arguments:(char *)arguments;
- (TSUDescription)initWithObject:(id)object class:(Class)class header:(id)header;
- (TSUDescription)initWithObject:(id)object format:(id)format;
- (id)p_header;
- (void)addField:(id)field format:(id)format;
- (void)addField:(id)field value:(id)value;
- (void)addFieldWithFormat:(id)format;
- (void)addSuperDescription;
@end

@implementation TSUDescription

- (TSUDescription)initWithObject:(id)object class:(Class)class header:(id)header
{
  objectCopy = object;
  headerCopy = header;
  +[TSUDescription pushDescriptionDepth];
  v15.receiver = self;
  v15.super_class = TSUDescription;
  v10 = [(TSUDescription *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_object, objectCopy);
    v11->_class = class;
    v12 = [headerCopy copy];
    header = v11->_header;
    v11->_header = v12;
  }

  return v11;
}

- (TSUDescription)initWithCFType:(void *)type header:(id)header
{
  headerCopy = header;
  +[TSUDescription pushDescriptionDepth];
  v12.receiver = self;
  v12.super_class = TSUDescription;
  v7 = [(TSUDescription *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_cfType = type;
    v9 = [headerCopy copy];
    header = v8->_header;
    v8->_header = v9;
  }

  return v8;
}

- (TSUDescription)initWithObject:(id)object class:(Class)class format:(id)format arguments:(char *)arguments
{
  v10 = MEMORY[0x277CCACA8];
  formatCopy = format;
  objectCopy = object;
  v13 = [[v10 alloc] initWithFormat:formatCopy arguments:arguments];

  v14 = [(TSUDescription *)self initWithObject:objectCopy class:class header:v13];
  return v14;
}

- (TSUDescription)initWithObject:(id)object format:(id)format
{
  formatCopy = format;
  objectCopy = object;
  v8 = [(TSUDescription *)self initWithObject:objectCopy class:object_getClass(objectCopy) format:formatCopy arguments:&v10];

  return v8;
}

- (TSUDescription)initWithObject:(id)object
{
  objectCopy = object;
  v5 = [(TSUDescription *)self initWithObject:objectCopy class:object_getClass(objectCopy) format:&stru_28862C2A0];

  return v5;
}

+ (id)descriptionWithObject:(id)object class:(Class)class format:(id)format
{
  formatCopy = format;
  objectCopy = object;
  v9 = [[TSUDescription alloc] initWithObject:objectCopy class:class format:formatCopy arguments:&v12];

  return v9;
}

+ (id)descriptionWithObject:(id)object class:(Class)class
{
  objectCopy = object;
  v6 = [[TSUDescription alloc] initWithObject:objectCopy class:class format:&stru_28862C2A0];

  return v6;
}

+ (id)descriptionWithObject:(id)object format:(id)format
{
  formatCopy = format;
  objectCopy = object;
  v7 = [[TSUDescription alloc] initWithObject:objectCopy class:object_getClass(objectCopy) format:formatCopy arguments:&v10];

  return v7;
}

+ (id)descriptionWithCFType:(void *)type format:(id)format
{
  v5 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v7 = [[v5 alloc] initWithFormat:formatCopy arguments:&v11];

  v8 = [[TSUDescription alloc] initWithCFType:type header:v7];

  return v8;
}

+ (unint64_t)pushDescriptionDepth
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [threadDictionary setObject:v6 forKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];

  return unsignedIntegerValue + 1;
}

+ (unint64_t)popDescriptionDepth
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v6 = unsignedIntegerValue - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [threadDictionary setObject:v7 forKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];

  return v6;
}

+ (unint64_t)peekDescriptionDepth
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)p_header
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  if (WeakRetained)
  {
    v4 = MEMORY[0x277CCACA8];
    Name = class_getName(self->_class);
    v6 = objc_loadWeakRetained(&self->_object);
    v7 = [v4 stringWithFormat:@"(%s*)%p%@", Name, v6, self->_header];
  }

  else
  {
    cfType = self->_cfType;
    if (cfType)
    {
      v9 = CFGetTypeID(cfType);
      v10 = CFCopyTypeIDDescription(v9);
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@Ref)%p%@", v10, self->_cfType, self->_header];
      CFRelease(v10);
    }

    else
    {
      v7 = @"(void*)nil";
    }
  }

  return v7;
}

- (void)addField:(id)field value:(id)value
{
  fieldCopy = field;
  valueCopy = value;
  if (!self->_fields)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fields = self->_fields;
    self->_fields = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fieldOrder = self->_fieldOrder;
    self->_fieldOrder = v10;
  }

  if (!valueCopy)
  {
    valueCopy = @"nil";
  }

  if (fieldCopy && [fieldCopy length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@: ", fieldCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"$$$%lu", -[NSMutableDictionary count](self->_fields, "count")];
  }
  v13 = ;

  [(NSMutableArray *)self->_fieldOrder addObject:v13];
  [(NSMutableDictionary *)self->_fields setObject:valueCopy forKey:v13];
  if (([v13 hasPrefix:@"$$$"] & 1) == 0)
  {
    v12 = [v13 length];
    if (v12 > self->_fieldNameWidth)
    {
      self->_fieldNameWidth = v12;
    }
  }
}

- (void)addField:(id)field format:(id)format
{
  v6 = MEMORY[0x277CCACA8];
  formatCopy = format;
  fieldCopy = field;
  v9 = [[v6 alloc] initWithFormat:formatCopy arguments:&v10];

  [(TSUDescription *)self addField:fieldCopy value:v9];
}

- (void)addFieldWithFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(TSUDescription *)self addField:0 value:v6];
}

- (void)addSuperDescription
{
  v4.receiver = objc_loadWeakRetained(&self->_object);
  v4.super_class = class_getSuperclass(self->_class);

  v3 = [(TSUDescription *)&v4 description];
  [(TSUDescription *)self addFieldValue:v3, v4.receiver, v4.super_class];
}

- (NSString)descriptionString
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = 0x27A700000uLL;
  if (!self->_fields)
  {
    goto LABEL_5;
  }

  if (+[TSUDescription peekDescriptionDepth]< 5)
  {
    v8 = MEMORY[0x277CCAB68];
    p_header = [(TSUDescription *)self p_header];
    p_header2 = [v8 stringWithFormat:@"%@ {", p_header];

    v32 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = self->_fieldOrder;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v28 = p_header2;
      v13 = 0;
      v14 = 0;
      v15 = &stru_28862C2A0;
      v16 = *v34;
      v30 = *v34;
      do
      {
        v17 = 0;
        v29 = v14;
        v18 = v14 + 1;
        v19 = v15;
        v31 = v12;
        do
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v10);
          }

          if (v18 > 0x63)
          {
            ++v13;
          }

          else
          {
            v20 = v10;
            v21 = *(*(&v33 + 1) + 8 * v17);
            v22 = [(NSMutableDictionary *)self->_fields objectForKey:v21];
            v23 = [v22 mutableCopy];

            v24 = v21;
            [v23 tsu_indentBy:self->_fieldNameWidth];
            if ([(__CFString *)v24 hasPrefix:@"$$$"])
            {

              v24 = &stru_28862C2A0;
            }

            [v23 replaceCharactersInRange:0 withString:{-[__CFString length](v24, "length"), v24}];
            [v32 appendFormat:@"%@%@", v19, v23];

            v10 = v20;
            v16 = v30;
            v12 = v31;
          }

          v25 = @",\n";
          if (!self->_commaSeparated)
          {
            v25 = @"\n";
          }

          v15 = v25;

          ++v17;
          ++v18;
          v19 = v15;
        }

        while (v12 != v17);
        v14 = v29 + v12;
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);

      if (v13)
      {
        v26 = "";
        if (v13 != 1)
        {
          v26 = "s";
        }

        [v32 appendFormat:@"%@...omitting %lu field%s (set to truncate after %lu field%s)", v15, v13, v26, 99, "s"];
      }

      v3 = 0x27A700000;
      p_header2 = v28;
    }

    else
    {

      v15 = &stru_28862C2A0;
    }

    while (([v32 hasSuffix:@"\n"] & 1) != 0 || objc_msgSend(v32, "hasSuffix:", @" "))
    {
      [v32 deleteCharactersInRange:{objc_msgSend(v32, "length") - 1, 1}];
    }

    v6 = v32;
    [v32 tsu_indentBy:2];
    [p_header2 appendFormat:@"\n%@\n}", v32];

    goto LABEL_30;
  }

  WeakRetained = objc_loadWeakRetained(&self->_object);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    p_header2 = [(TSUDescription *)self p_header];
    goto LABEL_31;
  }

  v6 = objc_loadWeakRetained(&self->_object);
  p_header2 = [v6 shortDescription];
LABEL_30:

LABEL_31:
  [*(v3 + 3560) popDescriptionDepth];

  return p_header2;
}

@end