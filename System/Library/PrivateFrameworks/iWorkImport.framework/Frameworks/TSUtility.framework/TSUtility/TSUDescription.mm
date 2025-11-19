@interface TSUDescription
+ (id)descriptionWithCFType:(void *)a3 format:(id)a4;
+ (id)descriptionWithObject:(id)a3 class:(Class)a4;
+ (id)descriptionWithObject:(id)a3 class:(Class)a4 format:(id)a5;
+ (id)descriptionWithObject:(id)a3 format:(id)a4;
+ (unint64_t)peekDescriptionDepth;
+ (unint64_t)popDescriptionDepth;
+ (unint64_t)pushDescriptionDepth;
- (NSString)descriptionString;
- (TSUDescription)initWithCFType:(void *)a3 header:(id)a4;
- (TSUDescription)initWithObject:(id)a3;
- (TSUDescription)initWithObject:(id)a3 class:(Class)a4 format:(id)a5 arguments:(char *)a6;
- (TSUDescription)initWithObject:(id)a3 class:(Class)a4 header:(id)a5;
- (TSUDescription)initWithObject:(id)a3 format:(id)a4;
- (id)p_header;
- (void)addField:(id)a3 format:(id)a4;
- (void)addField:(id)a3 value:(id)a4;
- (void)addFieldWithFormat:(id)a3;
- (void)addSuperDescription;
@end

@implementation TSUDescription

- (TSUDescription)initWithObject:(id)a3 class:(Class)a4 header:(id)a5
{
  v8 = a3;
  v9 = a5;
  +[TSUDescription pushDescriptionDepth];
  v15.receiver = self;
  v15.super_class = TSUDescription;
  v10 = [(TSUDescription *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_object, v8);
    v11->_class = a4;
    v12 = [v9 copy];
    header = v11->_header;
    v11->_header = v12;
  }

  return v11;
}

- (TSUDescription)initWithCFType:(void *)a3 header:(id)a4
{
  v6 = a4;
  +[TSUDescription pushDescriptionDepth];
  v12.receiver = self;
  v12.super_class = TSUDescription;
  v7 = [(TSUDescription *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_cfType = a3;
    v9 = [v6 copy];
    header = v8->_header;
    v8->_header = v9;
  }

  return v8;
}

- (TSUDescription)initWithObject:(id)a3 class:(Class)a4 format:(id)a5 arguments:(char *)a6
{
  v10 = MEMORY[0x277CCACA8];
  v11 = a5;
  v12 = a3;
  v13 = [[v10 alloc] initWithFormat:v11 arguments:a6];

  v14 = [(TSUDescription *)self initWithObject:v12 class:a4 header:v13];
  return v14;
}

- (TSUDescription)initWithObject:(id)a3 format:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TSUDescription *)self initWithObject:v7 class:object_getClass(v7) format:v6 arguments:&v10];

  return v8;
}

- (TSUDescription)initWithObject:(id)a3
{
  v4 = a3;
  v5 = [(TSUDescription *)self initWithObject:v4 class:object_getClass(v4) format:&stru_28862C2A0];

  return v5;
}

+ (id)descriptionWithObject:(id)a3 class:(Class)a4 format:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[TSUDescription alloc] initWithObject:v8 class:a4 format:v7 arguments:&v12];

  return v9;
}

+ (id)descriptionWithObject:(id)a3 class:(Class)a4
{
  v5 = a3;
  v6 = [[TSUDescription alloc] initWithObject:v5 class:a4 format:&stru_28862C2A0];

  return v6;
}

+ (id)descriptionWithObject:(id)a3 format:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TSUDescription alloc] initWithObject:v6 class:object_getClass(v6) format:v5 arguments:&v10];

  return v7;
}

+ (id)descriptionWithCFType:(void *)a3 format:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = [[v5 alloc] initWithFormat:v6 arguments:&v11];

  v8 = [[TSUDescription alloc] initWithCFType:a3 header:v7];

  return v8;
}

+ (unint64_t)pushDescriptionDepth
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];
  v5 = [v4 unsignedIntegerValue];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5 + 1];
  [v3 setObject:v6 forKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];

  return v5 + 1;
}

+ (unint64_t)popDescriptionDepth
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];
  v5 = [v4 unsignedIntegerValue];

  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [v3 setObject:v7 forKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];

  return v6;
}

+ (unint64_t)peekDescriptionDepth
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"TSUDescriptionDepthThreadLocalKey"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
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

- (void)addField:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_fields)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fields = self->_fields;
    self->_fields = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fieldOrder = self->_fieldOrder;
    self->_fieldOrder = v10;
  }

  if (!v7)
  {
    v7 = @"nil";
  }

  if (v6 && [v6 length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@: ", v6];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"$$$%lu", -[NSMutableDictionary count](self->_fields, "count")];
  }
  v13 = ;

  [(NSMutableArray *)self->_fieldOrder addObject:v13];
  [(NSMutableDictionary *)self->_fields setObject:v7 forKey:v13];
  if (([v13 hasPrefix:@"$$$"] & 1) == 0)
  {
    v12 = [v13 length];
    if (v12 > self->_fieldNameWidth)
    {
      self->_fieldNameWidth = v12;
    }
  }
}

- (void)addField:(id)a3 format:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFormat:v7 arguments:&v10];

  [(TSUDescription *)self addField:v8 value:v9];
}

- (void)addFieldWithFormat:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

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
    v9 = [(TSUDescription *)self p_header];
    v7 = [v8 stringWithFormat:@"%@ {", v9];

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
      v28 = v7;
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
      v7 = v28;
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
    [v7 appendFormat:@"\n%@\n}", v32];

    goto LABEL_30;
  }

  WeakRetained = objc_loadWeakRetained(&self->_object);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    v7 = [(TSUDescription *)self p_header];
    goto LABEL_31;
  }

  v6 = objc_loadWeakRetained(&self->_object);
  v7 = [v6 shortDescription];
LABEL_30:

LABEL_31:
  [*(v3 + 3560) popDescriptionDepth];

  return v7;
}

@end