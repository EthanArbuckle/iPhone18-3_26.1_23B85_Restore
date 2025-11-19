@interface WFMediaItemState
+ (id)processingValueClasses;
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFMediaItemState)initWithMediaType:(id)a3 persistentID:(id)a4;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFMediaItemState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v10)
  {
    v11 = [(WFVariableSubstitutableParameterState *)self variable];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [v11 prompt];
      v8[2](v8, v12, 0);
    }

    else
    {

      v11 = [(WFVariableSubstitutableParameterState *)self variable];
      [v11 getContentWithContext:v13 completionHandler:v9];
    }
  }

  else
  {
    v11 = [(WFVariableSubstitutableParameterState *)self value];
    v9[2](v9, v11, 0);
  }
}

- (WFMediaItemState)initWithMediaType:(id)a3 persistentID:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = [v10 persistentIDPropertyForGroupingType:WFGroupingPropertyForMediaType_53776(v6)];
  v13 = [v8 predicateWithValue:v7 forProperty:v12];

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

  [v18 setGroupingType:WFGroupingPropertyForMediaType_53776(v6)];
  v19 = [v18 collections];
  v20 = [v19 count];

  if (!v20)
  {
    goto LABEL_23;
  }

  if (![v6 isEqualToString:@"Playlist"])
  {
    if (([v6 isEqualToString:@"Album"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"Compilation"))
    {
      v21 = [v18 collections];
      v22 = [v21 firstObject];
      v24 = [v22 representativeItem];
      v25 = [v24 albumTitle];
LABEL_13:
      v23 = v25;

      goto LABEL_14;
    }

    if ([v6 isEqualToString:@"Song"])
    {
      v21 = [v18 collections];
      v22 = [v21 firstObject];
      v24 = [v22 representativeItem];
      v25 = [v24 title];
      goto LABEL_13;
    }

    if ([v6 isEqualToString:@"Artist"])
    {
      v21 = [v18 collections];
      v22 = [v21 firstObject];
      v24 = [v22 representativeItem];
      v25 = [v24 artist];
      goto LABEL_13;
    }

    if ([v6 isEqualToString:@"Genre"])
    {
      v21 = [v18 collections];
      v22 = [v21 firstObject];
      v24 = [v22 representativeItem];
      v25 = [v24 genre];
      goto LABEL_13;
    }

    if ([v6 isEqualToString:@"Composer"])
    {
      v21 = [v18 collections];
      v22 = [v21 firstObject];
      v24 = [v22 representativeItem];
      v25 = [v24 composer];
      goto LABEL_13;
    }

LABEL_23:
    v23 = 0;
    goto LABEL_24;
  }

  v21 = [v18 collections];
  v22 = [v21 firstObject];
  v23 = [v22 name];
LABEL_14:

LABEL_24:
  v26 = [[WFMediaItemDescriptor alloc] initWithMediaItemName:v23 persistentIdentifier:v7 mediaType:v6];
  v29.receiver = self;
  v29.super_class = WFMediaItemState;
  v27 = [(WFVariableSubstitutableParameterState *)&v29 initWithValue:v26];

  return v27;
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v5)
    {
LABEL_3:
      v6 = [(MTLJSONAdapter *)WFPropertyListJSONAdapter JSONDictionaryFromModel:v5 error:0];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"WFMediaItemState.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"[value isKindOfClass:[WFMediaItemDescriptor class]]"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v5;
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