@interface TIAnalyticsEventSpec
+ (id)eventSpecWithName:(id)name inputModeRequired:(BOOL)required;
+ (id)eventSpecWithName:(id)name inputModeRequired:(BOOL)required fieldSpecs:(id)specs;
- (TIAnalyticsEventSpec)initWithName:(id)name inputModeRequired:(BOOL)required fieldSpecs:(id)specs;
@end

@implementation TIAnalyticsEventSpec

- (TIAnalyticsEventSpec)initWithName:(id)name inputModeRequired:(BOOL)required fieldSpecs:(id)specs
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  specsCopy = specs;
  v31.receiver = self;
  v31.super_class = TIAnalyticsEventSpec;
  v10 = [(TIAnalyticsEventSpec *)&v31 init];
  if (v10)
  {
    requiredCopy = required;
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(specsCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = specsCopy;
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
          name = [v17 name];
          [v11 setObject:v17 forKey:name];
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }

    v19 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v19;

    v10->_isInputModeRequired = requiredCopy;
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

+ (id)eventSpecWithName:(id)name inputModeRequired:(BOOL)required fieldSpecs:(id)specs
{
  requiredCopy = required;
  specsCopy = specs;
  nameCopy = name;
  v9 = [[TIAnalyticsEventSpec alloc] initWithName:nameCopy inputModeRequired:requiredCopy fieldSpecs:specsCopy];

  return v9;
}

+ (id)eventSpecWithName:(id)name inputModeRequired:(BOOL)required
{
  requiredCopy = required;
  nameCopy = name;
  v6 = [[TIAnalyticsEventSpec alloc] initWithName:nameCopy inputModeRequired:requiredCopy fieldSpecs:0];

  return v6;
}

@end