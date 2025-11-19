@interface PUIJSONSerialization
+ (id)dataWithJSONObject:(id)a3 options:(unint64_t)a4 error:(id *)a5;
+ (id)dateToString:(id)a3;
+ (id)recursivelyReplaceNSDateWithNSString:(id)a3;
@end

@implementation PUIJSONSerialization

+ (id)recursivelyReplaceNSDateWithNSString:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = v4;
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
          v13 = [a1 recursivelyReplaceNSDateWithNSString:v12];
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
        v20 = [a1 dateToString:v4];
      }

      else
      {
        v20 = v4;
      }

      v19 = v20;
      goto LABEL_23;
    }

    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v4;
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

          v18 = [a1 recursivelyReplaceNSDateWithNSString:{*(*(&v23 + 1) + 8 * j), v23}];
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

+ (id)dateToString:(id)a3
{
  v3 = dateToString__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[PUIJSONSerialization dateToString:];
  }

  v5 = [dateToString__formatter stringFromDate:v4];

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

+ (id)dataWithJSONObject:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [a1 recursivelyReplaceNSDateWithNSString:a3];
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___PUIJSONSerialization;
  v9 = objc_msgSendSuper2(&v11, sel_dataWithJSONObject_options_error_, v8, a4, a5);

  return v9;
}

@end