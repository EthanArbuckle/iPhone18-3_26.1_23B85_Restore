@interface WFTTSString
+ (id)parseAnnotatedString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)displayString;
- (WFTTSString)initWithComponents:(id)a3;
- (id)description;
@end

@implementation WFTTSString

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFTTSString *)self components];
    v6 = [v4 components];
    v7 = [v5 isEqualToArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = WFTTSString;
  v3 = [(WFTTSString *)&v7 description];
  v4 = [(WFTTSString *)self components];
  v5 = [v3 stringByAppendingFormat:@": %@", v4];

  return v5;
}

- (NSString)displayString
{
  v2 = [(WFTTSString *)self components];
  v3 = [v2 if_compactMap:&__block_literal_global_19333];

  v4 = [v3 componentsJoinedByString:&stru_1F28FBBB8];

  return v4;
}

id __28__WFTTSString_displayString__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 displayString];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (WFTTSString)initWithComponents:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFTTSString.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"components"}];
  }

  v12.receiver = self;
  v12.super_class = WFTTSString;
  v6 = [(WFTTSString *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    components = v6->_components;
    v6->_components = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)parseAnnotatedString:(id)a3
{
  v37[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"WFTTSString.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v27 = a1;
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v28 = objc_opt_new();
  v6 = [v5 rangeOfString:@"[Siri " options:0 range:{0, objc_msgSend(v5, "length")}];
  v30 = 0;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v30 = 0;
    do
    {
      v9 = v8 + v7;
      v10 = [v5 rangeOfString:@"]" options:0 range:{v9, objc_msgSend(v5, "length") - v9}];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v10;
        v31 = v11;
        v13 = [v5 substringWithRange:{v9, v10 - v9}];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = v29;
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v33;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v32 + 1) + 8 * i) parseAnnotationString:v13];
              if (v19)
              {
                v20 = v19;

                v21 = [v5 substringWithRange:{v30, v8 - v30}];
                if ([v21 length])
                {
                  [v28 addObject:v21];
                }

                [v28 addObject:v20];
                v9 = v12 + v31;

                v30 = v12 + v31;
                goto LABEL_18;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_18:
      v8 = [v5 rangeOfString:@"[Siri " options:0 range:{v9, objc_msgSend(v5, "length") - v9}];
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v30 != [v5 length])
  {
    v22 = [v5 substringWithRange:{v30, objc_msgSend(v5, "length") - v30}];
    [v28 addObject:v22];
  }

  v23 = [[v27 alloc] initWithComponents:v28];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end