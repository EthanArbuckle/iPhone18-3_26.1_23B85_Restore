@interface TIAnalyticsEventSpec
+ (id)eventSpecWithName:(id)a3 inputModeRequired:(BOOL)a4;
+ (id)eventSpecWithName:(id)a3 inputModeRequired:(BOOL)a4 fieldSpecs:(id)a5;
- (TIAnalyticsEventSpec)initWithName:(id)a3 inputModeRequired:(BOOL)a4 fieldSpecs:(id)a5;
@end

@implementation TIAnalyticsEventSpec

- (TIAnalyticsEventSpec)initWithName:(id)a3 inputModeRequired:(BOOL)a4 fieldSpecs:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v31.receiver = self;
  v31.super_class = TIAnalyticsEventSpec;
  v10 = [(TIAnalyticsEventSpec *)&v31 init];
  if (v10)
  {
    v26 = a4;
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v17 name];
          [v11 setObject:v17 forKey:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }

    v19 = [v8 copy];
    name = v10->_name;
    v10->_name = v19;

    v10->_isInputModeRequired = v26;
    if (v12)
    {
      v21 = [v12 copy];
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    fieldSpecs = v10->_fieldSpecs;
    v10->_fieldSpecs = v21;

    v23 = [v11 copy];
    fieldSpecsByName = v10->_fieldSpecsByName;
    v10->_fieldSpecsByName = v23;
  }

  return v10;
}

+ (id)eventSpecWithName:(id)a3 inputModeRequired:(BOOL)a4 fieldSpecs:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = a3;
  v9 = [[TIAnalyticsEventSpec alloc] initWithName:v8 inputModeRequired:v5 fieldSpecs:v7];

  return v9;
}

+ (id)eventSpecWithName:(id)a3 inputModeRequired:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[TIAnalyticsEventSpec alloc] initWithName:v5 inputModeRequired:v4 fieldSpecs:0];

  return v6;
}

@end