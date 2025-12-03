@interface NSArray(FormField)
- (id)_fieldsOfSource:()FormField;
- (id)_fieldsOfType:()FormField;
- (id)_flattenedFields;
- (id)_nonFieldRegions;
@end

@implementation NSArray(FormField)

- (id)_flattenedFields
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = &unk_1F2C0BF90;
        v9 = v7;
        if ([v9 conformsToProtocol:{v8, v15}])
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          v11 = CRCastAsClass<CROutputRegion>(v10);
          if (v11 && ![v10 fieldType])
          {
            formFieldRegions = [v11 formFieldRegions];
            _flattenedFields = [formFieldRegions _flattenedFields];
            [v2 addObjectsFromArray:_flattenedFields];
          }

          else
          {
            [v2 addObject:v10];
          }
        }
      }

      v4 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  return v2;
}

- (id)_fieldsOfSource:()FormField
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__NSArray_FormField___fieldsOfSource___block_invoke;
  v7[3] = &__block_descriptor_40_e49_B24__0___CRFormFieldProviding__8__NSDictionary_16l;
  v7[4] = a3;
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:v7];
  v5 = [self filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)_fieldsOfType:()FormField
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NSArray_FormField___fieldsOfType___block_invoke;
  v7[3] = &__block_descriptor_40_e49_B24__0___CRFormFieldProviding__8__NSDictionary_16l;
  v7[4] = a3;
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:v7];
  v5 = [self filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)_nonFieldRegions
{
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_117];
  v3 = [self filteredArrayUsingPredicate:v2];

  return v3;
}

@end