@interface PUIJSONSerialization
+ (id)dataWithJSONObject:(id)object options:(unint64_t)options error:(id *)error;
+ (id)dateToString:(id)string;
+ (id)recursivelyReplaceNSDateWithNSString:(id)string;
@end

@implementation PUIJSONSerialization

+ (id)recursivelyReplaceNSDateWithNSString:(id)string
{
  v33 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = stringCopy;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];
          v13 = [self recursivelyReplaceNSDateWithNSString:v12];
          [v5 setObject:v13 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [self dateToString:stringCopy];
      }

      else
      {
        v20 = stringCopy;
      }

      v19 = v20;
      goto LABEL_23;
    }

    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = stringCopy;
    v14 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v6);
          }

          v18 = [self recursivelyReplaceNSDateWithNSString:{*(*(&v23 + 1) + 8 * j), v23}];
          [v5 addObject:v18];
        }

        v15 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }
  }

  v19 = [v5 copy];
LABEL_23:

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)dateToString:(id)string
{
  v3 = dateToString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    +[PUIJSONSerialization dateToString:];
  }

  v5 = [dateToString__formatter stringFromDate:stringCopy];

  return v5;
}

void __37__PUIJSONSerialization_dateToString___block_invoke()
{
  v0 = objc_opt_new();
  v1 = dateToString__formatter;
  dateToString__formatter = v0;

  [dateToString__formatter setFormatOptions:3955];
  v2 = [MEMORY[0x277CBEBB0] localTimeZone];
  [dateToString__formatter setTimeZone:v2];
}

+ (id)dataWithJSONObject:(id)object options:(unint64_t)options error:(id *)error
{
  v8 = [self recursivelyReplaceNSDateWithNSString:object];
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___PUIJSONSerialization;
  v9 = objc_msgSendSuper2(&v11, sel_dataWithJSONObject_options_error_, v8, options, error);

  return v9;
}

@end