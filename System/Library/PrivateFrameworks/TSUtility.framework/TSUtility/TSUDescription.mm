@interface TSUDescription
+ (id)descriptionWithCFType:(void *)type format:(id)format;
+ (id)descriptionWithObject:(id)object class:(Class)class;
- (TSUDescription)initWithCFType:(void *)type header:(id)header;
- (TSUDescription)initWithObject:(id)object;
- (TSUDescription)initWithObject:(id)object class:(Class)class format:(id)format arguments:(char *)arguments;
- (TSUDescription)initWithObject:(id)object class:(Class)class header:(id)header;
- (id)descriptionString;
- (id)p_header;
- (void)addField:(id)field format:(id)format;
- (void)addField:(id)field value:(id)value;
- (void)addFieldWithFormat:(id)format;
- (void)addSuperDescription;
- (void)dealloc;
@end

@implementation TSUDescription

- (TSUDescription)initWithObject:(id)object class:(Class)class header:(id)header
{
  ++TSUDescriptionDepth;
  v11.receiver = self;
  v11.super_class = TSUDescription;
  v8 = [(TSUDescription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_object = object;
    v8->_class = class;
    v8->_header = [header copy];
  }

  return v9;
}

- (TSUDescription)initWithCFType:(void *)type header:(id)header
{
  ++TSUDescriptionDepth;
  v9.receiver = self;
  v9.super_class = TSUDescription;
  v6 = [(TSUDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_cfType = type;
    v6->_header = [header copy];
  }

  return v7;
}

- (TSUDescription)initWithObject:(id)object class:(Class)class format:(id)format arguments:(char *)arguments
{
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:format arguments:arguments];
  v10 = [(TSUDescription *)self initWithObject:object class:class header:v9];

  return v10;
}

- (TSUDescription)initWithObject:(id)object
{
  Class = object_getClass(object);

  return [(TSUDescription *)self initWithObject:object class:Class format:&stru_287DDF830];
}

+ (id)descriptionWithObject:(id)object class:(Class)class
{
  v4 = [[TSUDescription alloc] initWithObject:object class:class format:&stru_287DDF830];

  return v4;
}

+ (id)descriptionWithCFType:(void *)type format:(id)format
{
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:format arguments:&v8];
  v6 = [[TSUDescription alloc] initWithCFType:type header:v5];

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUDescription;
  [(TSUDescription *)&v3 dealloc];
}

- (id)p_header
{
  if (self->_object)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"(%s*)%p%@", class_getName(self->_class), self->_object, self->_header];
  }

  cfType = self->_cfType;
  if (!cfType)
  {
    return @"(void*)nil";
  }

  v5 = CFGetTypeID(cfType);
  v6 = CFCopyTypeIDDescription(v5);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@Ref)%p%@", v6, self->_cfType, self->_header];
  CFRelease(v6);
  return v7;
}

- (void)addField:(id)field value:(id)value
{
  if (!self->_fields)
  {
    self->_fields = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_fieldOrder = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if (!value)
  {
    value = @"nil";
  }

  if (field && [field length])
  {
    field = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: ", field];
  }

  else
  {
    field = [MEMORY[0x277CCACA8] stringWithFormat:@"$$$%lu", -[NSMutableDictionary count](self->_fields, "count")];
  }

  v8 = field;
  [(NSMutableArray *)self->_fieldOrder addObject:field];
  [(NSMutableDictionary *)self->_fields setObject:value forKey:v8];
  if (([v8 hasPrefix:@"$$$"] & 1) == 0)
  {
    v9 = [v8 length];
    if (v9 > self->_fieldNameWidth)
    {
      self->_fieldNameWidth = v9;
    }
  }
}

- (void)addField:(id)field format:(id)format
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:format arguments:&v7];
  [(TSUDescription *)self addField:field value:v6];
}

- (void)addFieldWithFormat:(id)format
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:format arguments:&v5];
  [(TSUDescription *)self addField:0 value:v4];
}

- (void)addSuperDescription
{
  object = self->_object;
  v3 = self->_class;
  v6.receiver = object;
  v6.super_class = class_getSuperclass(v3);
  v5 = [(TSUDescription *)&v6 description];
  [(TSUDescription *)self addFieldValue:v5, v6.receiver];
}

- (id)descriptionString
{
  v34 = *MEMORY[0x277D85DE8];
  if (!self->_fields)
  {
    goto LABEL_5;
  }

  if (TSUDescriptionDepth >= 5)
  {
    if (objc_opt_respondsToSelector())
    {
      shortDescription = [self->_object shortDescription];
LABEL_6:
      v4 = shortDescription;
      goto LABEL_30;
    }

LABEL_5:
    shortDescription = [(TSUDescription *)self p_header];
    goto LABEL_6;
  }

  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ {", -[TSUDescription p_header](self, "p_header")];
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_fieldOrder;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v25 = v4;
    v8 = 0;
    v9 = 0;
    v10 = &stru_287DDF830;
    v11 = *v30;
    v12 = @"\n";
    do
    {
      v13 = 0;
      v26 = v9;
      v27 = v7;
      v14 = v9 + 1;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        if (v14 > 0x63)
        {
          ++v8;
        }

        else
        {
          v15 = v12;
          v16 = v5;
          v17 = *(*(&v29 + 1) + 8 * v13);
          v18 = v11;
          v19 = v8;
          v20 = [-[NSMutableDictionary objectForKey:](self->_fields objectForKey:{v17), "mutableCopy"}];
          [v20 tsu_indentBy:self->_fieldNameWidth];
          if ([(__CFString *)v17 hasPrefix:@"$$$"])
          {
            v17 = &stru_287DDF830;
          }

          v21 = [(__CFString *)v17 length];
          v22 = v17;
          v5 = v16;
          v12 = v15;
          [v20 replaceCharactersInRange:0 withString:{v21, v22}];
          [v5 appendFormat:@"%@%@", v10, v20];

          v8 = v19;
          v11 = v18;
          v7 = v27;
        }

        if (self->_commaSeparated)
        {
          v10 = @",\n";
        }

        else
        {
          v10 = v12;
        }

        ++v13;
        ++v14;
      }

      while (v7 != v13);
      v9 = v26 + v7;
      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
    v4 = v25;
    if (v8)
    {
      v23 = "";
      if (v8 != 1)
      {
        v23 = "s";
      }

      [v5 appendFormat:@"%@...omitting %lu field%s (set to truncate after %lu field%s)", v10, v8, v23, 99, "s"];
    }
  }

  while (([v5 hasSuffix:@"\n"] & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @" "))
  {
    [v5 deleteCharactersInRange:{objc_msgSend(v5, "length") - 1, 1}];
  }

  [v5 tsu_indentBy:2];
  [v4 appendFormat:@"\n%@\n}", v5];

LABEL_30:
  --TSUDescriptionDepth;
  return v4;
}

@end