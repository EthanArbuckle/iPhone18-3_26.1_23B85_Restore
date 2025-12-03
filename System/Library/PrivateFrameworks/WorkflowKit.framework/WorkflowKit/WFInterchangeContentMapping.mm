@interface WFInterchangeContentMapping
- (BOOL)inputRequired;
- (BOOL)skipURLEncoding;
- (BOOL)supportsMultipleItems;
- (NSDictionary)valueMapping;
- (NSOrderedSet)contentItemClasses;
- (NSString)destinationKey;
- (NSString)destinationType;
- (NSString)sourceKey;
- (NSString)sourceType;
- (WFInterchangeContentMapping)initWithDefinition:(id)definition;
- (WFParameterDefinition)parameterUI;
- (id)parameterDefault;
- (void)getContentCollection:(id)collection withInput:(id)input parameters:(id)parameters;
- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters;
@end

@implementation WFInterchangeContentMapping

- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters
{
  representationCopy = representation;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__WFInterchangeContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v10[3] = &unk_1E8378930;
  v10[4] = self;
  v11 = representationCopy;
  v9 = representationCopy;
  [(WFInterchangeContentMapping *)self getContentCollection:v10 withInput:input parameters:parameters];
}

void __76__WFInterchangeContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  if ([v7 numberOfItems] != 1)
  {
    goto LABEL_6;
  }

  v10 = [v7 items];
  v11 = [v10 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [v7 items];
    v14 = [v13 firstObject];

    v15 = [v14 number];
    [v15 BOOLValue];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
LABEL_6:
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__WFInterchangeContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2;
    v17[3] = &unk_1E837B490;
    v16 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v16;
    [v7 getStringRepresentation:v17];
  }
}

void __76__WFInterchangeContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v16 = v3;
    v4 = [*(a1 + 32) definition];
    v5 = [v4 objectForKey:@"ValuePrefix"];
    v6 = objc_opt_class();
    v7 = WFEnforceClass_1501(v5, v6);

    v8 = [*(a1 + 32) definition];
    v9 = [v8 objectForKey:@"ValueSuffix"];
    v10 = objc_opt_class();
    v11 = WFEnforceClass_1501(v9, v10);

    if (v7)
    {
      v12 = [v7 stringByAppendingString:v16];

      v13 = v12;
    }

    else
    {
      v13 = v16;
    }

    v17 = v13;
    if (v11)
    {
      v15 = [v13 stringByAppendingString:v11];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = *(*(a1 + 40) + 16);

    v14();
  }
}

- (void)getContentCollection:(id)collection withInput:(id)input parameters:(id)parameters
{
  v27[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  inputCopy = input;
  parametersCopy = parameters;
  sourceType = [(WFInterchangeContentMapping *)self sourceType];
  if (![sourceType isEqualToString:@"Input"])
  {
    if (![sourceType isEqualToString:@"Parameter"])
    {
      goto LABEL_20;
    }

    sourceKey = [(WFInterchangeContentMapping *)self sourceKey];
    v14 = [parametersCopy objectForKey:sourceKey];

    v15 = v14;
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
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

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contentCollection = v15;
LABEL_17:
      v12 = contentCollection;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = MEMORY[0x1E6996D40];
      v27[0] = v15;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v12 = [v19 collectionWithItems:v20];
    }

    else
    {
      if (v17)
      {
        contentCollection = [v17 contentCollection];
        goto LABEL_17;
      }

      if (!v15)
      {
        v12 = 0;
LABEL_18:

        if (v12)
        {
          goto LABEL_19;
        }

LABEL_20:
        (*(collectionCopy + 2))(collectionCopy, 0, 0, 0);
        goto LABEL_21;
      }

      v24 = MEMORY[0x1E6996D40];
      v20 = [MEMORY[0x1E6996D58] itemWithObject:v15];
      v26 = v20;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      v12 = [v24 collectionWithItems:v25];
    }

    goto LABEL_18;
  }

  v12 = inputCopy;
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_19:
  contentItemClasses = [(WFInterchangeContentMapping *)self contentItemClasses];
  array = [contentItemClasses array];
  [v12 generateCollectionByCoercingToItemClasses:array completionHandler:collectionCopy];

LABEL_21:
  v23 = *MEMORY[0x1E69E9840];
}

- (NSOrderedSet)contentItemClasses
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  definition = [(WFInterchangeContentMapping *)self definition];
  v5 = [definition objectForKey:@"ItemClasses"];

  definition2 = [(WFInterchangeContentMapping *)self definition];
  v7 = [definition2 objectForKey:@"ItemClass"];

  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = NSClassFromString(*(*(&v20 + 1) + 8 * i));
          if (v13)
          {
            [v3 addObject:{v13, v20}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

LABEL_15:

    v16 = v3;
    goto LABEL_16;
  }

  if (v7)
  {
    definition3 = [(WFInterchangeContentMapping *)self definition];
    v8 = [definition3 objectForKey:@"ItemClass"];

    v15 = NSClassFromString(v8);
    if (v15)
    {
      [v3 addObject:v15];
    }

    goto LABEL_15;
  }

  v16 = [MEMORY[0x1E695DFB8] orderedSetWithObject:objc_opt_class()];
LABEL_16:
  v17 = v16;

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)inputRequired
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v4 = [definition objectForKey:@"InputRequired"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    sourceType = [(WFInterchangeContentMapping *)self sourceType];
    bOOLValue = [sourceType isEqualToString:@"Input"];
  }

  return bOOLValue;
}

- (BOOL)supportsMultipleItems
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"MultipleItems"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)parameterDefault
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"ParameterDefault"];

  return v3;
}

- (WFParameterDefinition)parameterUI
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"ParameterUI"];

  return v3;
}

- (BOOL)skipURLEncoding
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"SkipURLEncoding"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSDictionary)valueMapping
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"ValueMapping"];

  return v3;
}

- (NSString)destinationKey
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"DestinationKey"];

  return v3;
}

- (NSString)sourceKey
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"SourceKey"];

  return v3;
}

- (NSString)destinationType
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"DestinationType"];

  return v3;
}

- (NSString)sourceType
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"SourceType"];

  return v3;
}

- (WFInterchangeContentMapping)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = [definitionCopy objectForKey:@"ContentMappingClass"];
  v6 = v5;
  if ((!v5 || NSClassFromString(v5)) && (self = [(WFInterchangeContentMapping *)self init]) != 0)
  {
    v7 = [definitionCopy copy];
    definition = self->_definition;
    self->_definition = v7;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end