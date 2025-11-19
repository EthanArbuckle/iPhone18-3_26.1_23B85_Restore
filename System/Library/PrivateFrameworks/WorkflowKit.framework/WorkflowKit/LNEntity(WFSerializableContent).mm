@interface LNEntity(WFSerializableContent)
+ (id)valueFromSerializedRepresentation:()WFSerializableContent metadata:variableProvider:parameter:bundleIdentifier:;
- (id)wfSerializedRepresentation;
@end

@implementation LNEntity(WFSerializableContent)

- (id)wfSerializedRepresentation
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ([a1 isTransient])
  {
    v18[0] = @"typeIdentifier";
    v2 = [a1 identifier];
    v3 = [v2 typeIdentifier];
    v18[1] = @"instanceIdentifier";
    v19[0] = v3;
    v4 = [a1 identifier];
    v5 = [v4 instanceIdentifier];
    v19[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v7 = [a1 properties];
    v8 = [v7 if_compactMap:&__block_literal_global_65950];

    v9 = MEMORY[0x1E695DF90];
    v16[0] = @"identifier";
    v16[1] = @"properties";
    v17[0] = v6;
    v17[1] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v11 = [v9 dictionaryWithDictionary:v10];

    v12 = [a1 managedAccountIdentifier];
    [v11 if_setValueIfNonNil:v12 forKey:@"managedAccountIdentifier"];

    v13 = [a1 prototypeMangledTypeName];
    [v11 if_setValueIfNonNil:v13 forKey:@"prototypeMangledTypeName"];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)valueFromSerializedRepresentation:()WFSerializableContent metadata:variableProvider:parameter:bundleIdentifier:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v11;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  if ([v17 count])
  {
    v40 = v13;
    v18 = [v17 objectForKeyedSubscript:@"identifier"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = [v18 objectForKeyedSubscript:@"typeIdentifier"];
      v20 = [v18 objectForKeyedSubscript:@"instanceIdentifier"];
    }

    else
    {

      v19 = [v12 identifier];
      v18 = [v17 objectForKeyedSubscript:@"identifier"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v18;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v20 = v21;
    }

    v23 = v20;

    v22 = 0;
    if (v19 && v23)
    {
      v24 = [objc_alloc(MEMORY[0x1E69AC7D8]) initWithTypeIdentifier:v19 instanceIdentifier:v23];
      if (v12 && ([v12 isTransient] & 1) != 0)
      {
        v25 = [v17 objectForKeyedSubscript:@"properties"];
        v39 = v24;
        if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          v26 = v17;
          if (v26)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          v29 = [v28 if_compactMap:&__block_literal_global_299];

          v25 = [v29 allValues];
        }

        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __122__LNEntity_WFSerializableContent__valueFromSerializedRepresentation_metadata_variableProvider_parameter_bundleIdentifier___block_invoke_2;
        v41[3] = &unk_1E837DFF0;
        v42 = v12;
        v43 = v40;
        v44 = v14;
        v45 = v15;
        v38 = v25;
        v37 = [v25 if_compactMap:v41];
        v30 = [v17 objectForKeyedSubscript:@"prototypeMangledTypeName"];
        if (v30)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v36 = v31;

        v32 = [v17 objectForKeyedSubscript:@"managedAccountIdentifier"];
        if (v32)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        v34 = v33;

        v22 = [objc_alloc(MEMORY[0x1E69AC7D0]) initWithTransient:1 identifier:v39 properties:v37 prototypeMangledTypeName:v36 managedAccountIdentifier:v34];
        v24 = v39;
      }

      else
      {
        v22 = [objc_alloc(MEMORY[0x1E69AC7D0]) initWithIdentifier:v24];
      }
    }

    v13 = v40;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end