@interface WFPropertyListParameterValue
+ (Class)classForValueType:(int64_t)type;
+ (Class)processedClassForValueType:(int64_t)type;
+ (id)defaultStateForValueType:(int64_t)type;
+ (id)localizedTitleForValueType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (NSArray)containedVariables;
- (WFPropertyListObject)serializedRepresentation;
- (WFPropertyListParameterValue)initWithArray:(id)array;
- (WFPropertyListParameterValue)initWithBoolean:(id)boolean;
- (WFPropertyListParameterValue)initWithChooseFromMenuItem:(id)item;
- (WFPropertyListParameterValue)initWithChooseFromMenuString:(id)string;
- (WFPropertyListParameterValue)initWithDictionary:(id)dictionary;
- (WFPropertyListParameterValue)initWithNumber:(id)number;
- (WFPropertyListParameterValue)initWithObject:(id)object;
- (WFPropertyListParameterValue)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFPropertyListParameterValue)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter valueType:(int64_t)type variableStringStateClass:(Class)class;
- (WFPropertyListParameterValue)initWithString:(id)string;
- (WFPropertyListParameterValue)initWithType:(int64_t)type state:(id)state;
- (WFPropertyListParameterValue)initWithType:(int64_t)type state:(id)state identity:(id)identity;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFPropertyListParameterValue

- (unint64_t)hash
{
  state = [(WFPropertyListParameterValue *)self state];
  v3 = [state hash];

  return v3 ^ 0x700F00D5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      state = [(WFPropertyListParameterValue *)equalCopy state];
      state2 = [(WFPropertyListParameterValue *)self state];
      if ([state isEqual:state2])
      {
        v7 = 1;
      }

      else
      {
        state3 = [(WFPropertyListParameterValue *)equalCopy state];
        if (state3)
        {
          v7 = 0;
        }

        else
        {
          state4 = [(WFPropertyListParameterValue *)self state];
          v7 = state4 == 0;
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
  state = [(WFPropertyListParameterValue *)self state];
  containedVariables = [state containedVariables];

  return containedVariables;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  state = [(WFPropertyListParameterValue *)self state];
  if (state)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__WFPropertyListParameterValue_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
    v12[3] = &unk_1E837C818;
    v12[4] = self;
    v14 = valueHandlerCopy;
    v13 = contextCopy;
    [state processWithContext:v13 userInputRequiredHandler:handlerCopy valueHandler:v12];
  }

  else
  {
    (*(valueHandlerCopy + 2))(valueHandlerCopy, 0, 0);
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
  valueType = [(WFPropertyListParameterValue *)self valueType];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:valueType];
  [v3 setObject:v5 forKey:@"WFItemType"];

  state = [(WFPropertyListParameterValue *)self state];
  v7 = state;
  if (state)
  {
    if (valueType > 2)
    {
      if (valueType == 6)
      {
        serializedRepresentation = [state serializedRepresentation];
        [v3 setObject:serializedRepresentation forKey:@"WFValue"];

        [v3 setObject:&unk_1F4A9AD08 forKey:@"WFItemType"];
        goto LABEL_21;
      }

      if (valueType == 4)
      {
        numberSubstitutableState = [state numberSubstitutableState];
        goto LABEL_19;
      }

      if (valueType != 3)
      {
        goto LABEL_13;
      }
    }

    else if (valueType)
    {
      if (valueType == 1)
      {
        v14 = WFSerializedVariableObject(state);
        v9 = [v14 mutableCopy];

        variable = [v7 variable];

        if (!variable)
        {
          v11 = @"WFDictionaryFieldValue";
          goto LABEL_16;
        }

LABEL_17:
        [v3 setObject:v9 forKey:@"WFValue"];
LABEL_20:

        goto LABEL_21;
      }

      if (valueType == 2)
      {
        v8 = WFSerializedVariableObject(state);
        v9 = [v8 mutableCopy];

        variable2 = [v7 variable];

        if (!variable2)
        {
          v11 = @"WFArrayParameterState";
LABEL_16:
          [v9 setObject:v11 forKey:@"WFSerializationType"];
          goto LABEL_17;
        }

        goto LABEL_17;
      }

LABEL_13:
      v9 = WFSerializedVariableObject(state);
      goto LABEL_17;
    }

    numberSubstitutableState = [state variableString];
LABEL_19:
    v9 = numberSubstitutableState;
    v16 = WFSerializedVariableObject(numberSubstitutableState);
    [v3 setObject:v16 forKey:@"WFValue"];

    goto LABEL_20;
  }

LABEL_21:

  return v3;
}

- (WFPropertyListParameterValue)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter valueType:(int64_t)type variableStringStateClass:(Class)class
{
  providerCopy = provider;
  parameterCopy = parameter;
  v14 = [representation objectForKey:@"WFValue"];
  if (type > 3)
  {
    if (type == 4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = WFDeserializedVariableObject(v14, providerCopy, parameterCopy);
        v20 = [[WFBooleanSubstitutableState alloc] initWithNumberSubstitutableState:v17];
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    if (type == 6)
    {
      v16 = [[WFChooseFromMenuItemParameterState alloc] initWithSerializedRepresentation:v14 variableProvider:providerCopy parameter:parameterCopy];
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
          v20 = WFDeserializedVariableObject(v14, providerCopy, parameterCopy);
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

      v20 = [[v18 alloc] initWithSerializedRepresentation:v14 variableProvider:providerCopy parameter:parameterCopy];
      goto LABEL_31;
    }

LABEL_25:
    v16 = [objc_opt_class() defaultStateForValueType:type];
    goto LABEL_26;
  }

  if (type && type != 3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = WFDeserializedVariableObject(v14, providerCopy, parameterCopy);
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
    v16 = [[class alloc] initWithVariableString:v19];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [class alloc];
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
  v23 = [(WFPropertyListParameterValue *)self initWithType:type state:v16];

  return v23;
}

- (WFPropertyListParameterValue)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  parameterCopy = parameter;
  providerCopy = provider;
  representationCopy = representation;
  v11 = [representationCopy objectForKey:@"WFItemType"];
  integerValue = [v11 integerValue];

  v13 = [(WFPropertyListParameterValue *)self initWithSerializedRepresentation:representationCopy variableProvider:providerCopy parameter:parameterCopy valueType:integerValue variableStringStateClass:objc_opt_class()];
  return v13;
}

- (WFPropertyListParameterValue)initWithType:(int64_t)type state:(id)state identity:(id)identity
{
  stateCopy = state;
  identityCopy = identity;
  [objc_opt_class() classForValueType:type];
  if ((objc_opt_isKindOfClass() & 1) == 0 && (type != 5 || stateCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFPropertyListParameterValue.m" lineNumber:108 description:@"State for WFPropertyListParameterValue is not of the expected class"];
  }

  v18.receiver = self;
  v18.super_class = WFPropertyListParameterValue;
  v11 = [(WFPropertyListParameterValue *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_valueType = type;
    v13 = [stateCopy copyWithZone:MEMORY[0x1CCAA2CE0]()];
    state = v12->_state;
    v12->_state = v13;

    objc_storeStrong(&v12->_identity, identity);
    v15 = v12;
  }

  return v12;
}

- (WFPropertyListParameterValue)initWithType:(int64_t)type state:(id)state
{
  v6 = MEMORY[0x1E696AFB0];
  stateCopy = state;
  uUID = [v6 UUID];
  v9 = [(WFPropertyListParameterValue *)self initWithType:type state:stateCopy identity:uUID];

  return v9;
}

+ (Class)processedClassForValueType:(int64_t)type
{
  if (type <= 2)
  {
    if (type > 2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (type <= 4)
  {
    if (type != 3)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v3 = objc_opt_class();

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (type == 5 || type == 6)
  {
LABEL_9:
    v3 = objc_opt_class();
  }

LABEL_10:

  return v3;
}

+ (Class)classForValueType:(int64_t)type
{
  if (type <= 6)
  {
    v4 = *off_1E837BDD0[type];
    self = objc_opt_class();
  }

  return self;
}

+ (id)defaultStateForValueType:(int64_t)type
{
  v3 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        v11 = [WFDictionarySubstitutableParameterState alloc];
        v5 = [(WFDictionarySubstitutableParameterState *)v11 initWithKeyValuePairs:MEMORY[0x1E695E0F0]];
      }

      else
      {
        if (type != 2)
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

  if (type == 3)
  {
    v7 = [WFVariableStringParameterState alloc];
    v8 = [WFVariableString alloc];
    v9 = @"0";
    goto LABEL_13;
  }

  if (type != 4)
  {
    if (type != 6)
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

+ (id)localizedTitleForValueType:(int64_t)type
{
  if (type <= 6)
  {
    self = WFLocalizedString(off_1E837BD98[type]);
  }

  return self;
}

- (WFPropertyListParameterValue)initWithObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFPropertyListParameterValue *)self initWithString:objectCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFPropertyListParameterValue *)self initWithDictionary:objectCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(WFPropertyListParameterValue *)self initWithArray:objectCopy];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && WFNumberIsBoolean(objectCopy))
        {
          v5 = [(WFPropertyListParameterValue *)self initWithBoolean:objectCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [(WFPropertyListParameterValue *)self initWithNumber:objectCopy];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              selfCopy = 0;
              goto LABEL_15;
            }

            v5 = [(WFPropertyListParameterValue *)self initWithChooseFromMenuItem:objectCopy];
          }
        }
      }
    }
  }

  self = v5;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (WFPropertyListParameterValue)initWithChooseFromMenuItem:(id)item
{
  itemCopy = item;
  v5 = [WFVariableString alloc];
  string = [itemCopy string];
  v7 = [(WFVariableString *)v5 initWithString:string];

  synonyms = [itemCopy synonyms];
  v9 = [synonyms if_map:&__block_literal_global_342];

  v10 = [WFVariableString alloc];
  subtitle = [itemCopy subtitle];

  v12 = [(WFVariableString *)v10 initWithString:subtitle];
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

- (WFPropertyListParameterValue)initWithBoolean:(id)boolean
{
  booleanCopy = boolean;
  v5 = [(WFNumberSubstitutableState *)[WFBooleanSubstitutableState alloc] initWithNumber:booleanCopy];

  v6 = [(WFPropertyListParameterValue *)self initWithBooleanState:v5];
  return v6;
}

- (WFPropertyListParameterValue)initWithNumber:(id)number
{
  numberCopy = number;
  v5 = [WFVariableStringParameterState alloc];
  v6 = [WFVariableString alloc];
  stringValue = [numberCopy stringValue];

  v8 = [(WFVariableString *)v6 initWithString:stringValue];
  v9 = [(WFVariableStringParameterState *)v5 initWithVariableString:v8];
  v10 = [(WFPropertyListParameterValue *)self initWithNumberState:v9];

  return v10;
}

- (WFPropertyListParameterValue)initWithArray:(id)array
{
  v4 = [array if_map:&__block_literal_global_54751];
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

- (WFPropertyListParameterValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__WFPropertyListParameterValue_Convenience__initWithDictionary___block_invoke;
  v10[3] = &unk_1E837BD38;
  v11 = v5;
  v6 = v5;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v10];

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

- (WFPropertyListParameterValue)initWithChooseFromMenuString:(id)string
{
  stringCopy = string;
  v5 = [WFChooseFromMenuItemParameterState alloc];
  v6 = [[WFVariableString alloc] initWithString:stringCopy];

  v7 = [(WFVariableStringParameterState *)v5 initWithVariableString:v6];
  v8 = [(WFPropertyListParameterValue *)self initWithChooseFromMenuItemState:v7];

  return v8;
}

- (WFPropertyListParameterValue)initWithString:(id)string
{
  stringCopy = string;
  v5 = [WFVariableStringParameterState alloc];
  v6 = [[WFVariableString alloc] initWithString:stringCopy];

  v7 = [(WFVariableStringParameterState *)v5 initWithVariableString:v6];
  v8 = [(WFPropertyListParameterValue *)self initWithStringState:v7];

  return v8;
}

@end