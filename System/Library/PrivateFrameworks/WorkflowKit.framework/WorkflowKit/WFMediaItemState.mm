@interface WFMediaItemState
+ (id)processingValueClasses;
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFMediaItemState)initWithMediaType:(id)type persistentID:(id)d;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFMediaItemState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    if (variable2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      prompt = [variable2 prompt];
      handlerCopy[2](handlerCopy, prompt, 0);
    }

    else
    {

      variable2 = [(WFVariableSubstitutableParameterState *)self variable];
      [variable2 getContentWithContext:contextCopy completionHandler:valueHandlerCopy];
    }
  }

  else
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self value];
    valueHandlerCopy[2](valueHandlerCopy, variable2, 0);
  }
}

- (WFMediaItemState)initWithMediaType:(id)type persistentID:(id)d
{
  typeCopy = type;
  dCopy = d;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v8 = getMPMediaPropertyPredicateClass_softClass_53772;
  v38 = getMPMediaPropertyPredicateClass_softClass_53772;
  if (!getMPMediaPropertyPredicateClass_softClass_53772)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getMPMediaPropertyPredicateClass_block_invoke_53773;
    v33 = &unk_1E837FAC0;
    v34 = &v35;
    __getMPMediaPropertyPredicateClass_block_invoke_53773(&v30);
    v8 = v36[3];
  }

  v9 = v8;
  _Block_object_dispose(&v35, 8);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v10 = getMPMediaItemClass_softClass_53774;
  v38 = getMPMediaItemClass_softClass_53774;
  if (!getMPMediaItemClass_softClass_53774)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getMPMediaItemClass_block_invoke_53775;
    v33 = &unk_1E837FAC0;
    v34 = &v35;
    __getMPMediaItemClass_block_invoke_53775(&v30);
    v10 = v36[3];
  }

  v11 = v10;
  _Block_object_dispose(&v35, 8);
  v12 = [v10 persistentIDPropertyForGroupingType:WFGroupingPropertyForMediaType_53776(typeCopy)];
  v13 = [v8 predicateWithValue:dCopy forProperty:v12];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v14 = getMPMediaQueryClass_softClass_53777;
  v38 = getMPMediaQueryClass_softClass_53777;
  if (!getMPMediaQueryClass_softClass_53777)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getMPMediaQueryClass_block_invoke_53778;
    v33 = &unk_1E837FAC0;
    v34 = &v35;
    __getMPMediaQueryClass_block_invoke_53778(&v30);
    v14 = v36[3];
  }

  v15 = v14;
  _Block_object_dispose(&v35, 8);
  v16 = [v14 alloc];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:v13];
  v18 = [v16 initWithFilterPredicates:v17];

  [v18 setGroupingType:WFGroupingPropertyForMediaType_53776(typeCopy)];
  collections = [v18 collections];
  v20 = [collections count];

  if (!v20)
  {
    goto LABEL_23;
  }

  if (![typeCopy isEqualToString:@"Playlist"])
  {
    if (([typeCopy isEqualToString:@"Album"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"Compilation"))
    {
      collections2 = [v18 collections];
      firstObject = [collections2 firstObject];
      representativeItem = [firstObject representativeItem];
      albumTitle = [representativeItem albumTitle];
LABEL_13:
      name = albumTitle;

      goto LABEL_14;
    }

    if ([typeCopy isEqualToString:@"Song"])
    {
      collections2 = [v18 collections];
      firstObject = [collections2 firstObject];
      representativeItem = [firstObject representativeItem];
      albumTitle = [representativeItem title];
      goto LABEL_13;
    }

    if ([typeCopy isEqualToString:@"Artist"])
    {
      collections2 = [v18 collections];
      firstObject = [collections2 firstObject];
      representativeItem = [firstObject representativeItem];
      albumTitle = [representativeItem artist];
      goto LABEL_13;
    }

    if ([typeCopy isEqualToString:@"Genre"])
    {
      collections2 = [v18 collections];
      firstObject = [collections2 firstObject];
      representativeItem = [firstObject representativeItem];
      albumTitle = [representativeItem genre];
      goto LABEL_13;
    }

    if ([typeCopy isEqualToString:@"Composer"])
    {
      collections2 = [v18 collections];
      firstObject = [collections2 firstObject];
      representativeItem = [firstObject representativeItem];
      albumTitle = [representativeItem composer];
      goto LABEL_13;
    }

LABEL_23:
    name = 0;
    goto LABEL_24;
  }

  collections2 = [v18 collections];
  firstObject = [collections2 firstObject];
  name = [firstObject name];
LABEL_14:

LABEL_24:
  v26 = [[WFMediaItemDescriptor alloc] initWithMediaItemName:name persistentIdentifier:dCopy mediaType:typeCopy];
  v29.receiver = self;
  v29.super_class = WFMediaItemState;
  v27 = [(WFVariableSubstitutableParameterState *)&v29 initWithValue:v26];

  return v27;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (valueCopy)
    {
LABEL_3:
      v6 = [(MTLJSONAdapter *)WFPropertyListJSONAdapter JSONDictionaryFromModel:valueCopy error:0];
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMediaItemState.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFMediaItemDescriptor class]]"}];

    if (valueCopy)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v22 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = objc_opt_class();
  v7 = representationCopy;
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = getWFGeneralLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315906;
      v15 = "WFEnforceClass";
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v6;
      v10 = v19;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v14, 0x2Au);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if ([v8 count])
  {
    v11 = [(MTLJSONAdapter *)WFPropertyListJSONAdapter modelOfClass:objc_opt_class() fromJSONDictionary:v8 error:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)processingValueClasses
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end