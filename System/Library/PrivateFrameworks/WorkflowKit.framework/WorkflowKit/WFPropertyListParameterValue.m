@interface WFPropertyListParameterValue
+ (Class)classForValueType:(int64_t)a3;
+ (Class)processedClassForValueType:(int64_t)a3;
+ (id)defaultStateForValueType:(int64_t)a3;
+ (id)localizedTitleForValueType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)containedVariables;
- (WFPropertyListObject)serializedRepresentation;
- (WFPropertyListParameterValue)initWithArray:(id)a3;
- (WFPropertyListParameterValue)initWithBoolean:(id)a3;
- (WFPropertyListParameterValue)initWithChooseFromMenuItem:(id)a3;
- (WFPropertyListParameterValue)initWithChooseFromMenuString:(id)a3;
- (WFPropertyListParameterValue)initWithDictionary:(id)a3;
- (WFPropertyListParameterValue)initWithNumber:(id)a3;
- (WFPropertyListParameterValue)initWithObject:(id)a3;
- (WFPropertyListParameterValue)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFPropertyListParameterValue)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5 valueType:(int64_t)a6 variableStringStateClass:(Class)a7;
- (WFPropertyListParameterValue)initWithString:(id)a3;
- (WFPropertyListParameterValue)initWithType:(int64_t)a3 state:(id)a4;
- (WFPropertyListParameterValue)initWithType:(int64_t)a3 state:(id)a4 identity:(id)a5;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFPropertyListParameterValue

- (unint64_t)hash
{
  v2 = [(WFPropertyListParameterValue *)self state];
  v3 = [v2 hash];

  return v3 ^ 0x700F00D5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFPropertyListParameterValue *)v4 state];
      v6 = [(WFPropertyListParameterValue *)self state];
      if ([v5 isEqual:v6])
      {
        v7 = 1;
      }

      else
      {
        v8 = [(WFPropertyListParameterValue *)v4 state];
        if (v8)
        {
          v7 = 0;
        }

        else
        {
          v9 = [(WFPropertyListParameterValue *)self state];
          v7 = v9 == 0;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSArray)containedVariables
{
  v2 = [(WFPropertyListParameterValue *)self state];
  v3 = [v2 containedVariables];

  return v3;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFPropertyListParameterValue *)self state];
  if (v11)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__WFPropertyListParameterValue_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
    v12[3] = &unk_1E837C818;
    v12[4] = self;
    v14 = v10;
    v13 = v8;
    [v11 processWithContext:v13 userInputRequiredHandler:v9 valueHandler:v12];
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

void __89__WFPropertyListParameterValue_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() processedClassForValueType:*(v7 + 8)];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 isSubclassOfClass:objc_opt_class()])
  {
    v9 = [MEMORY[0x1E6996DB0] resultsForString:v5 ofTypes:0x200000000 error:0];
    v10 = [v9 number];

    v5 = v10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && *(*(a1 + 32) + 8) == 4 && (WFNumberIsBoolean(v5) & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "BOOLValue")}];

    v5 = v11;
  }

  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = [objc_opt_class() defaultStateForValueType:*(v12 + 8)];
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = [objc_alloc(objc_opt_class()) initWithType:*(v14 + 8) state:v13];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __89__WFPropertyListParameterValue_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
      v17[3] = &unk_1E837BD10;
      v16 = *(a1 + 40);
      v18 = *(a1 + 48);
      [v15 processWithContext:v16 userInputRequiredHandler:v17 valueHandler:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (WFPropertyListObject)serializedRepresentation
{
  v3 = objc_opt_new();
  v4 = [(WFPropertyListParameterValue *)self valueType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [v3 setObject:v5 forKey:@"WFItemType"];

  v6 = [(WFPropertyListParameterValue *)self state];
  v7 = v6;
  if (v6)
  {
    if (v4 > 2)
    {
      if (v4 == 6)
      {
        v13 = [v6 serializedRepresentation];
        [v3 setObject:v13 forKey:@"WFValue"];

        [v3 setObject:&unk_1F4A9AD08 forKey:@"WFItemType"];
        goto LABEL_21;
      }

      if (v4 == 4)
      {
        v12 = [v6 numberSubstitutableState];
        goto LABEL_19;
      }

      if (v4 != 3)
      {
        goto LABEL_13;
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        v14 = WFSerializedVariableObject(v6);
        v9 = [v14 mutableCopy];

        v15 = [v7 variable];

        if (!v15)
        {
          v11 = @"WFDictionaryFieldValue";
          goto LABEL_16;
        }

LABEL_17:
        [v3 setObject:v9 forKey:@"WFValue"];
LABEL_20:

        goto LABEL_21;
      }

      if (v4 == 2)
      {
        v8 = WFSerializedVariableObject(v6);
        v9 = [v8 mutableCopy];

        v10 = [v7 variable];

        if (!v10)
        {
          v11 = @"WFArrayParameterState";
LABEL_16:
          [v9 setObject:v11 forKey:@"WFSerializationType"];
          goto LABEL_17;
        }

        goto LABEL_17;
      }

LABEL_13:
      v9 = WFSerializedVariableObject(v6);
      goto LABEL_17;
    }

    v12 = [v6 variableString];
LABEL_19:
    v9 = v12;
    v16 = WFSerializedVariableObject(v12);
    [v3 setObject:v16 forKey:@"WFValue"];

    goto LABEL_20;
  }

LABEL_21:

  return v3;
}

- (WFPropertyListParameterValue)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5 valueType:(int64_t)a6 variableStringStateClass:(Class)a7
{
  v12 = a4;
  v13 = a5;
  v14 = [a3 objectForKey:@"WFValue"];
  if (a6 > 3)
  {
    if (a6 == 4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = WFDeserializedVariableObject(v14, v12, v13);
        v20 = [[WFBooleanSubstitutableState alloc] initWithNumberSubstitutableState:v17];
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    if (a6 == 6)
    {
      v16 = [[WFChooseFromMenuItemParameterState alloc] initWithSerializedRepresentation:v14 variableProvider:v12 parameter:v13];
      if (v16)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_10:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v14 objectForKeyedSubscript:@"WFSerializationType"];
      if ([v17 isEqualToString:@"WFDictionaryFieldValue"])
      {
        v18 = WFDictionarySubstitutableParameterState;
      }

      else
      {
        if (![v17 isEqualToString:@"WFArrayParameterState"])
        {
          v20 = WFDeserializedVariableObject(v14, v12, v13);
LABEL_31:
          v16 = v20;

          if (v16)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v18 = WFArraySubstitutableParameterState;
      }

      v20 = [[v18 alloc] initWithSerializedRepresentation:v14 variableProvider:v12 parameter:v13];
      goto LABEL_31;
    }

LABEL_25:
    v16 = [objc_opt_class() defaultStateForValueType:a6];
    goto LABEL_26;
  }

  if (a6 && a6 != 3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = WFDeserializedVariableObject(v14, v12, v13);
LABEL_15:
    v19 = v15;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [[WFVariableString alloc] initWithString:v14];
    goto LABEL_15;
  }

  v19 = 0;
LABEL_19:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [[a7 alloc] initWithVariableString:v19];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [a7 alloc];
      v22 = [[WFVariableString alloc] initWithVariable:v19];
      v16 = [v21 initWithVariableString:v22];
    }

    else
    {
      v16 = 0;
    }
  }

  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_26:
  v23 = [(WFPropertyListParameterValue *)self initWithType:a6 state:v16];

  return v23;
}

- (WFPropertyListParameterValue)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 objectForKey:@"WFItemType"];
  v12 = [v11 integerValue];

  v13 = [(WFPropertyListParameterValue *)self initWithSerializedRepresentation:v10 variableProvider:v9 parameter:v8 valueType:v12 variableStringStateClass:objc_opt_class()];
  return v13;
}

- (WFPropertyListParameterValue)initWithType:(int64_t)a3 state:(id)a4 identity:(id)a5
{
  v9 = a4;
  v10 = a5;
  [objc_opt_class() classForValueType:a3];
  if ((objc_opt_isKindOfClass() & 1) == 0 && (a3 != 5 || v9))
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFPropertyListParameterValue.m" lineNumber:108 description:@"State for WFPropertyListParameterValue is not of the expected class"];
  }

  v18.receiver = self;
  v18.super_class = WFPropertyListParameterValue;
  v11 = [(WFPropertyListParameterValue *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_valueType = a3;
    v13 = [v9 copyWithZone:MEMORY[0x1CCAA2CE0]()];
    state = v12->_state;
    v12->_state = v13;

    objc_storeStrong(&v12->_identity, a5);
    v15 = v12;
  }

  return v12;
}

- (WFPropertyListParameterValue)initWithType:(int64_t)a3 state:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = [v6 UUID];
  v9 = [(WFPropertyListParameterValue *)self initWithType:a3 state:v7 identity:v8];

  return v9;
}

+ (Class)processedClassForValueType:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3 > 2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3 <= 4)
  {
    if (a3 != 3)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v3 = objc_opt_class();

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3 == 5 || a3 == 6)
  {
LABEL_9:
    v3 = objc_opt_class();
  }

LABEL_10:

  return v3;
}

+ (Class)classForValueType:(int64_t)a3
{
  if (a3 <= 6)
  {
    v4 = *off_1E837BDD0[a3];
    a1 = objc_opt_class();
  }

  return a1;
}

+ (id)defaultStateForValueType:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v11 = [WFDictionarySubstitutableParameterState alloc];
        v5 = [(WFDictionarySubstitutableParameterState *)v11 initWithKeyValuePairs:MEMORY[0x1E695E0F0]];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_17;
        }

        v4 = [WFArraySubstitutableParameterState alloc];
        v5 = [(WFArraySubstitutableParameterState *)v4 initWithValues:MEMORY[0x1E695E0F0]];
      }

      goto LABEL_16;
    }

    v6 = WFVariableStringParameterState;
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    v7 = [WFVariableStringParameterState alloc];
    v8 = [WFVariableString alloc];
    v9 = @"0";
    goto LABEL_13;
  }

  if (a3 != 4)
  {
    if (a3 != 6)
    {
      goto LABEL_17;
    }

    v6 = WFChooseFromMenuItemParameterState;
LABEL_11:
    v7 = [v6 alloc];
    v8 = [WFVariableString alloc];
    v9 = &stru_1F4A1C408;
LABEL_13:
    v10 = [(WFVariableString *)v8 initWithString:v9];
    v3 = [(WFVariableStringParameterState *)v7 initWithVariableString:v10];

    goto LABEL_17;
  }

  v12 = [WFBooleanSubstitutableState alloc];
  v5 = [(WFNumberSubstitutableState *)v12 initWithNumber:MEMORY[0x1E695E110]];
LABEL_16:
  v3 = v5;
LABEL_17:

  return v3;
}

+ (id)localizedTitleForValueType:(int64_t)a3
{
  if (a3 <= 6)
  {
    a1 = WFLocalizedString(off_1E837BD98[a3]);
  }

  return a1;
}

- (WFPropertyListParameterValue)initWithObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFPropertyListParameterValue *)self initWithString:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFPropertyListParameterValue *)self initWithDictionary:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(WFPropertyListParameterValue *)self initWithArray:v4];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && WFNumberIsBoolean(v4))
        {
          v5 = [(WFPropertyListParameterValue *)self initWithBoolean:v4];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [(WFPropertyListParameterValue *)self initWithNumber:v4];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v6 = 0;
              goto LABEL_15;
            }

            v5 = [(WFPropertyListParameterValue *)self initWithChooseFromMenuItem:v4];
          }
        }
      }
    }
  }

  self = v5;
  v6 = self;
LABEL_15:

  return v6;
}

- (WFPropertyListParameterValue)initWithChooseFromMenuItem:(id)a3
{
  v4 = a3;
  v5 = [WFVariableString alloc];
  v6 = [v4 string];
  v7 = [(WFVariableString *)v5 initWithString:v6];

  v8 = [v4 synonyms];
  v9 = [v8 if_map:&__block_literal_global_342];

  v10 = [WFVariableString alloc];
  v11 = [v4 subtitle];

  v12 = [(WFVariableString *)v10 initWithString:v11];
  v13 = [[WFChooseFromMenuItemParameterState alloc] initWithVariableString:v7 synonyms:v9 subtitle:v12];
  v14 = [(WFPropertyListParameterValue *)self initWithChooseFromMenuItemState:v13];

  return v14;
}

WFChooseFromMenuItemSynonym *__72__WFPropertyListParameterValue_Convenience__initWithChooseFromMenuItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFVariableString alloc] initWithString:v2];

  v4 = [WFChooseFromMenuItemSynonym alloc];
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [(WFChooseFromMenuItemSynonym *)v4 initWithIdentity:v5 synonym:v3];

  return v6;
}

- (WFPropertyListParameterValue)initWithBoolean:(id)a3
{
  v4 = a3;
  v5 = [(WFNumberSubstitutableState *)[WFBooleanSubstitutableState alloc] initWithNumber:v4];

  v6 = [(WFPropertyListParameterValue *)self initWithBooleanState:v5];
  return v6;
}

- (WFPropertyListParameterValue)initWithNumber:(id)a3
{
  v4 = a3;
  v5 = [WFVariableStringParameterState alloc];
  v6 = [WFVariableString alloc];
  v7 = [v4 stringValue];

  v8 = [(WFVariableString *)v6 initWithString:v7];
  v9 = [(WFVariableStringParameterState *)v5 initWithVariableString:v8];
  v10 = [(WFPropertyListParameterValue *)self initWithNumberState:v9];

  return v10;
}

- (WFPropertyListParameterValue)initWithArray:(id)a3
{
  v4 = [a3 if_map:&__block_literal_global_54751];
  v5 = [[WFArraySubstitutableParameterState alloc] initWithValues:v4];
  v6 = [(WFPropertyListParameterValue *)self initWithArrayState:v5];

  return v6;
}

WFPropertyListParameterValue *__59__WFPropertyListParameterValue_Convenience__initWithArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFPropertyListParameterValue alloc] initWithObject:v2];

  return v3;
}

- (WFPropertyListParameterValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__WFPropertyListParameterValue_Convenience__initWithDictionary___block_invoke;
  v10[3] = &unk_1E837BD38;
  v11 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = [[WFDictionarySubstitutableParameterState alloc] initWithKeyValuePairs:v6];
  v8 = [(WFPropertyListParameterValue *)self initWithDictionaryState:v7];

  return v8;
}

void __64__WFPropertyListParameterValue_Convenience__initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v11 = [[WFVariableString alloc] initWithString:v6];

  v7 = [[WFPropertyListParameterValue alloc] initWithObject:v5];
  if (v11)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = [[WFDictionaryParameterKeyValuePair alloc] initWithKey:v11 value:v7];
    [v9 addObject:v10];
  }
}

- (WFPropertyListParameterValue)initWithChooseFromMenuString:(id)a3
{
  v4 = a3;
  v5 = [WFChooseFromMenuItemParameterState alloc];
  v6 = [[WFVariableString alloc] initWithString:v4];

  v7 = [(WFVariableStringParameterState *)v5 initWithVariableString:v6];
  v8 = [(WFPropertyListParameterValue *)self initWithChooseFromMenuItemState:v7];

  return v8;
}

- (WFPropertyListParameterValue)initWithString:(id)a3
{
  v4 = a3;
  v5 = [WFVariableStringParameterState alloc];
  v6 = [[WFVariableString alloc] initWithString:v4];

  v7 = [(WFVariableStringParameterState *)v5 initWithVariableString:v6];
  v8 = [(WFPropertyListParameterValue *)self initWithStringState:v7];

  return v8;
}

@end