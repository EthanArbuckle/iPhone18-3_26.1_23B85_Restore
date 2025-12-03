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
  formatCopy = format;
  objectCopy = object;
  v12 = [[NSString alloc] initWithFormat:formatCopy arguments:arguments];

  v13 = [(TSUDescription *)self initWithObject:objectCopy class:class header:v12];
  return v13;
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
  v5 = [(TSUDescription *)self initWithObject:objectCopy class:object_getClass(objectCopy) format:&stru_1001D3878];

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
  v6 = [[TSUDescription alloc] initWithObject:objectCopy class:class format:&stru_1001D3878];

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
  formatCopy = format;
  v6 = [[NSString alloc] initWithFormat:formatCopy arguments:&v10];

  v7 = [[TSUDescription alloc] initWithCFType:type header:v6];

  return v7;
}

+ (unint64_t)pushDescriptionDepth
{
  v2 = +[NSThread currentThread];
  threadDictionary = [v2 threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [threadDictionary setObject:v6 forKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];

  return (unsignedIntegerValue + 1);
}

+ (unint64_t)popDescriptionDepth
{
  v2 = +[NSThread currentThread];
  threadDictionary = [v2 threadDictionary];

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

  v7 = [NSNumber numberWithUnsignedInteger:v6];
  [threadDictionary setObject:v7 forKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];

  return v6;
}

+ (unint64_t)peekDescriptionDepth
{
  v2 = +[NSThread currentThread];
  threadDictionary = [v2 threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)p_header
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  if (WeakRetained)
  {
    Name = class_getName(self->_class);
    v5 = objc_loadWeakRetained(&self->_object);
    v6 = [NSString stringWithFormat:@"(%s*)%p%@", Name, v5, self->_header];
  }

  else
  {
    cfType = self->_cfType;
    if (cfType)
    {
      v8 = CFGetTypeID(cfType);
      v9 = CFCopyTypeIDDescription(v8);
      v6 = [NSString stringWithFormat:@"(%@Ref)%p%@", v9, self->_cfType, self->_header];
      CFRelease(v9);
    }

    else
    {
      v6 = @"(void*)nil";
    }
  }

  return v6;
}

- (void)addField:(id)field value:(id)value
{
  fieldCopy = field;
  valueCopy = value;
  if (!self->_fields)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    fields = self->_fields;
    self->_fields = v8;

    v10 = objc_alloc_init(NSMutableArray);
    fieldOrder = self->_fieldOrder;
    self->_fieldOrder = v10;
  }

  if (!valueCopy)
  {
    valueCopy = @"nil";
  }

  if (fieldCopy && [fieldCopy length])
  {
    [NSString stringWithFormat:@"%@: ", fieldCopy];
  }

  else
  {
    [NSString stringWithFormat:@"$$$%lu", [(NSMutableDictionary *)self->_fields count]];
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
  formatCopy = format;
  fieldCopy = field;
  v8 = [[NSString alloc] initWithFormat:formatCopy arguments:&v9];

  [(TSUDescription *)self addField:fieldCopy value:v8];
}

- (void)addFieldWithFormat:(id)format
{
  formatCopy = format;
  v5 = [[NSString alloc] initWithFormat:formatCopy arguments:&v6];

  [(TSUDescription *)self addField:0 value:v5];
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
  p_vtable = &OBJC_METACLASS___TSPDataStorageWriteResult.vtable;
  if (!self->_fields)
  {
    goto LABEL_5;
  }

  if (+[TSUDescription peekDescriptionDepth]< 5)
  {
    p_header = [(TSUDescription *)self p_header];
    p_header2 = [NSMutableString stringWithFormat:@"%@ {", p_header];

    v31 = objc_alloc_init(NSMutableString);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = self->_fieldOrder;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v27 = p_header2;
      v12 = 0;
      v13 = 0;
      v14 = &stru_1001D3878;
      v15 = *v33;
      v29 = *v33;
      do
      {
        v16 = 0;
        v28 = v13;
        v17 = (v13 + 1);
        v18 = v14;
        v30 = v11;
        do
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v9);
          }

          if (v17 > 0x63)
          {
            ++v12;
          }

          else
          {
            v19 = v9;
            v20 = *(*(&v32 + 1) + 8 * v16);
            v21 = [(NSMutableDictionary *)self->_fields objectForKey:v20];
            v22 = [v21 mutableCopy];

            v23 = v20;
            [v22 tsu_indentBy:self->_fieldNameWidth];
            if ([(__CFString *)v23 hasPrefix:@"$$$"])
            {

              v23 = &stru_1001D3878;
            }

            [v22 replaceCharactersInRange:0 withString:{-[__CFString length](v23, "length"), v23}];
            [v31 appendFormat:@"%@%@", v18, v22];

            v9 = v19;
            v15 = v29;
            v11 = v30;
          }

          v24 = @",\n";
          if (!self->_commaSeparated)
          {
            v24 = @"\n";
          }

          v14 = v24;

          ++v16;
          ++v17;
          v18 = v14;
        }

        while (v11 != v16);
        v13 = &v11[v28];
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);

      if (v12)
      {
        v25 = "";
        if (v12 != 1)
        {
          v25 = "s";
        }

        [v31 appendFormat:@"%@...omitting %lu field%s (set to truncate after %lu field%s)", v14, v12, v25, 99, "s"];
      }

      p_vtable = (&OBJC_METACLASS___TSPDataStorageWriteResult + 24);
      p_header2 = v27;
    }

    else
    {

      v14 = &stru_1001D3878;
    }

    while (([v31 hasSuffix:@"\n"] & 1) != 0 || objc_msgSend(v31, "hasSuffix:", @" "))
    {
      [v31 deleteCharactersInRange:{objc_msgSend(v31, "length") - 1, 1}];
    }

    v6 = v31;
    [v31 tsu_indentBy:2];
    [p_header2 appendFormat:@"\n%@\n}", v31];

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
  [p_vtable + 332 popDescriptionDepth];

  return p_header2;
}

@end