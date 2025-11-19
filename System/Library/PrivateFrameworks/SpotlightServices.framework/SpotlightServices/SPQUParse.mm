@interface SPQUParse
- (SPQUParse)initWithIntentLabel:(id)a3 tokenArguments:(id)a4;
- (id)getEncodedData;
@end

@implementation SPQUParse

- (SPQUParse)initWithIntentLabel:(id)a3 tokenArguments:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPQUParse;
  v9 = [(SPQUParse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intentLabel, a3);
    objc_storeStrong(&v10->_tokenArguments, a4);
  }

  return v10;
}

- (id)getEncodedData
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 setValue:self->_intentLabel forKey:@"intentLabel"];
  [v3 setValue:self->_isPQA forKey:@"isPQA"];
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_tokenArguments;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (v12)
        {
          v13 = [*(*(&v20 + 1) + 8 * i) getEncodedData];
          [v4 addObject:v13];

          v14 = [v12 tokenLabel];
          EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

          v9 |= EnumValueFromIntentArgString == 95;
          v8 |= EnumValueFromIntentArgString == 94;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:v9 & 1];
  [v3 setValue:v16 forKey:@"resolveDatesInPast"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v8 & 1];
  [v3 setValue:v17 forKey:@"resolveDatesInFuture"];

  [v3 setValue:v4 forKey:@"arguments"];
  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

@end