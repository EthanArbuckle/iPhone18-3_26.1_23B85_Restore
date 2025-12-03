@interface LNProperty(WFSerializableContent)
+ (id)valueFromSerializedRepresentation:()WFSerializableContent metadata:variableProvider:parameter:bundleIdentifier:;
- (id)wfSerializedRepresentation;
@end

@implementation LNProperty(WFSerializableContent)

- (id)wfSerializedRepresentation
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF90];
  v10 = @"identifier";
  identifier = [self identifier];
  v11[0] = identifier;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [v2 dictionaryWithDictionary:v4];

  value = [self value];
  wfSerializedRepresentation = [value wfSerializedRepresentation];
  [v5 if_setValueIfNonNil:wfSerializedRepresentation forKey:@"value"];

  v8 = *MEMORY[0x1E69E9840];

  return v5;
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
  if (![v17 count])
  {
    v26 = 0;
    goto LABEL_16;
  }

  v18 = [v17 objectForKeyedSubscript:@"identifier"];
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [v12 identifier];
      v20 = [identifier isEqualToString:v18];

      if (!v20)
      {
        v26 = 0;
        goto LABEL_15;
      }

      v21 = [v17 objectForKeyedSubscript:@"value"];
      v22 = MEMORY[0x1E69ACA90];
      valueType = [v12 valueType];
      v24 = [v22 valueFromSerializedRepresentation:v21 valueType:valueType variableProvider:v13 parameter:v14 bundleIdentifier:v15];

      v25 = v24;
      v26 = [objc_alloc(MEMORY[0x1E69AC950]) initWithIdentifier:v18 value:v24];
    }

    else
    {
      v26 = 0;
      v21 = v18;
      v18 = 0;
    }
  }

  else
  {
    v21 = 0;
    v26 = 0;
  }

LABEL_15:
LABEL_16:

  return v26;
}

@end