@interface WFLinkDynamicOptionSubstitutableState
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter bundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)stateIsEquivalent:(id)equivalent;
- (BOOL)valueNeedsDisplayRepresentation;
- (NSString)localizedSubtitle;
- (NSString)localizedTitle;
- (WFImage)image;
- (WFLinkDynamicOptionSubstitutableState)initWithValue:(id)value localizedTitle:(id)title localizedSubtitle:(id)subtitle image:(id)image;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFLinkDynamicOptionSubstitutableState

- (BOOL)valueNeedsDisplayRepresentation
{
  value = [(WFVariableSubstitutableParameterState *)self value];
  v3Value = [value value];
  valueType = [v3Value valueType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value2 = [(WFVariableSubstitutableParameterState *)self value];
    v6Value = [value2 value];
    displayRepresentation = [v6Value displayRepresentation];
    v9 = displayRepresentation == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFImage)image
{
  image = self->_image;
  if (!image)
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    image = [value image];
    wf_image = [image wf_image];
    v7 = self->_image;
    self->_image = wf_image;

    image = self->_image;
  }

  return image;
}

- (NSString)localizedSubtitle
{
  if (![(NSString *)self->_localizedSubtitle length])
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    subtitle = [value subtitle];
    wf_localizedString = [subtitle wf_localizedString];
    localizedSubtitle = self->_localizedSubtitle;
    self->_localizedSubtitle = wf_localizedString;
  }

  v7 = self->_localizedSubtitle;

  return v7;
}

- (NSString)localizedTitle
{
  if (![(NSString *)self->_localizedTitle length])
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    title = [value title];
    wf_localizedString = [title wf_localizedString];
    localizedTitle = self->_localizedTitle;
    self->_localizedTitle = wf_localizedString;
  }

  v7 = self->_localizedTitle;

  return v7;
}

- (BOOL)stateIsEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  value = [(WFVariableSubstitutableParameterState *)self value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = value;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  value2 = [equivalentCopy value];

  if (value2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = value2;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  LOBYTE(v11) = 0;
  if (v7 && v10)
  {
    value3 = [v7 value];
    value4 = [v10 value];
    v14 = [value3 isEqual:value4];

    if (v14)
    {
      LOBYTE(v11) = 1;
      goto LABEL_99;
    }

    value5 = [v7 value];
    valueType = [value5 valueType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value6 = [v7 value];
      valueType2 = [value6 valueType];
      value7 = [v10 value];
      valueType3 = [value7 valueType];
      v21 = [valueType2 isEqual:valueType3];

      if (v21)
      {
        value8 = [v7 value];
        v22Value = [value8 value];

        value9 = [v10 value];
        v24Value = [value9 value];

        if (([v22Value isTransient] & 1) == 0 && (objc_msgSend(v24Value, "isTransient") & 1) == 0)
        {
          identifier = [v22Value identifier];
          if (identifier)
          {
            v27 = identifier;
            identifier2 = [v24Value identifier];

            if (identifier2)
            {
              identifier3 = [v22Value identifier];
              identifier4 = [v24Value identifier];
              LOBYTE(v11) = [identifier3 isEqual:identifier4];
              goto LABEL_96;
            }
          }
        }

        if ([v22Value isTransient] && objc_msgSend(v24Value, "isTransient"))
        {
          properties = [v22Value properties];
          properties2 = [v24Value properties];
          identifier3 = properties;
          v50 = properties2;
          identifier4 = v50;
          if (identifier3 == v50)
          {
          }

          else
          {
            LOBYTE(v11) = 0;
            v51 = v50;
            v52 = identifier3;
            if (!identifier3 || !v50)
            {
              goto LABEL_95;
            }

            v11 = [identifier3 isEqualToArray:v50];

            if (!v11)
            {
              goto LABEL_96;
            }
          }

          managedAccountIdentifier = [v22Value managedAccountIdentifier];
          managedAccountIdentifier2 = [v24Value managedAccountIdentifier];
          v52 = managedAccountIdentifier;
          v82 = managedAccountIdentifier2;
          v51 = v82;
          v94 = v52;
          if (v52 == v82)
          {
          }

          else
          {
            LOBYTE(v11) = 0;
            v83 = v82;
            if (!v52 || !v82)
            {
LABEL_94:

              v52 = v94;
LABEL_95:

              goto LABEL_96;
            }

            v11 = [v52 isEqualToString:v82];

            if (!v11)
            {
              goto LABEL_95;
            }
          }

          prototypeMangledTypeName = [v22Value prototypeMangledTypeName];
          prototypeMangledTypeName2 = [v24Value prototypeMangledTypeName];
          v52 = prototypeMangledTypeName;
          v89 = prototypeMangledTypeName2;
          v83 = v89;
          if (v52 == v89)
          {
            LOBYTE(v11) = 1;
          }

          else
          {
            LOBYTE(v11) = 0;
            if (v52 && v89)
            {
              LOBYTE(v11) = [v52 isEqualToString:v89];
            }
          }

          goto LABEL_94;
        }

LABEL_54:
        LOBYTE(v11) = 0;
LABEL_98:

        goto LABEL_99;
      }
    }

    else
    {
    }

    value10 = [v7 value];
    valueType4 = [value10 valueType];
    v33 = 0x1E69AC000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value11 = [v7 value];
      valueType5 = [value11 valueType];
      if ([valueType5 typeIdentifier] == 13)
      {
        value12 = [v7 value];
        valueType6 = [value12 valueType];
        value13 = [v10 value];
        valueType7 = [value13 valueType];
        v92 = [valueType6 isEqual:valueType7];

        v33 = 0x1E69AC000;
        if (v92)
        {
          value14 = [v7 value];
          v22Value = [value14 value];

          value15 = [v10 value];
          v24Value = [value15 value];

          type = [v22Value type];
          if (type != [v24Value type])
          {
            goto LABEL_54;
          }

          name = [v22Value name];
          name2 = [v24Value name];
          identifier3 = name;
          v45 = name2;
          identifier4 = v45;
          if (identifier3 == v45)
          {
          }

          else
          {
            LOBYTE(v11) = 0;
            v46 = v45;
            v47 = identifier3;
            if (!identifier3 || !v45)
            {
LABEL_91:

              goto LABEL_96;
            }

            v11 = [identifier3 isEqualToString:v45];

            if (!v11)
            {
              goto LABEL_96;
            }
          }

          identificationHint = [v22Value identificationHint];
          identificationHint2 = [v24Value identificationHint];
          v47 = identificationHint;
          v86 = identificationHint2;
          v46 = v86;
          if (v47 == v86)
          {
            LOBYTE(v11) = 1;
          }

          else
          {
            LOBYTE(v11) = 0;
            if (v47 && v86)
            {
              LOBYTE(v11) = [v47 isEqualToString:v86];
            }
          }

          goto LABEL_91;
        }

LABEL_41:
        value16 = [v7 value];
        valueType8 = [value16 valueType];
        v55 = *(v33 + 2184);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          value17 = [v7 value];
          identifier4 = [value17 valueType];
          if ([identifier4 typeIdentifier] == 12)
          {
            value18 = [v7 value];
            valueType9 = [value18 valueType];
            value19 = [v10 value];
            valueType10 = [value19 valueType];
            LODWORD(v91) = [valueType9 isEqual:valueType10];

            v33 = 0x1E69AC000;
            if (v91)
            {
              value20 = [v7 value];
              v22Value = [value20 value];

              value21 = [v10 value];
              v24Value = [value21 value];

              identifier3 = [v22Value fileURL];
              if (identifier3 || ([v24Value fileURL], (identifier4 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                filename = [v22Value filename];
                if (!filename || ([v24Value filename], (v91 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  fileURL = [v22Value fileURL];
                  fileURL2 = [v24Value fileURL];
                  v77 = fileURL;
                  v78 = fileURL2;
                  v79 = v78;
                  if (v77 == v78)
                  {
                    LOBYTE(v11) = 1;
                  }

                  else
                  {
                    LOBYTE(v11) = 0;
                    if (v77 && v78)
                    {
                      LOBYTE(v11) = [v77 isEqual:v78];
                    }
                  }

                  v64 = v91;
                  if (!filename)
                  {
LABEL_74:

                    if (identifier3)
                    {
LABEL_97:

                      goto LABEL_98;
                    }

LABEL_96:

                    goto LABEL_97;
                  }
                }

                else
                {
                  v64 = 0;
                  LOBYTE(v11) = 0;
                }

                goto LABEL_74;
              }

              identifier3 = 0;
LABEL_53:
              LOBYTE(v11) = 0;
              goto LABEL_96;
            }

LABEL_51:
            v22Value = [v7 value];
            v24Value = [v22Value valueType];
            v65 = *(v33 + 2184);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_54;
            }

            identifier3 = [v7 value];
            identifier4 = [identifier3 valueType];
            if (![identifier4 typeIdentifier])
            {
              value22 = [v7 value];
              valueType11 = [value22 valueType];
              value23 = [v10 value];
              valueType12 = [value23 valueType];
              v93 = [valueType11 isEqual:valueType12];

              if (!v93)
              {
                LOBYTE(v11) = 0;
                goto LABEL_99;
              }

              value24 = [v7 value];
              v70Value = [value24 value];

              value25 = [v7 value];
              v72Value = [value25 value];

              identifier3 = v70Value;
              v74 = v72Value;
              identifier4 = v74;
              if (identifier3 == v74)
              {
                LOBYTE(v11) = 1;
              }

              else
              {
                LOBYTE(v11) = 0;
                if (identifier3 && v74)
                {
                  LOBYTE(v11) = [identifier3 isEqualToString:v74];
                }
              }

              v24Value = identifier4;
              v22Value = identifier3;
              goto LABEL_96;
            }

            goto LABEL_53;
          }
        }

        goto LABEL_51;
      }
    }

    goto LABEL_41;
  }

LABEL_99:

  return v11;
}

- (unint64_t)hash
{
  value = [(WFVariableSubstitutableParameterState *)self value];
  if ([value containsSensitiveContent])
  {
    v9.receiver = self;
    v9.super_class = WFLinkDynamicOptionSubstitutableState;
    v4 = [(WFVariableSubstitutableParameterState *)&v9 hash];
    v3Value = [value value];
    displayRepresentation = [v3Value displayRepresentation];
    v7 = [displayRepresentation hash] ^ v4;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFLinkDynamicOptionSubstitutableState;
    v7 = [(WFVariableSubstitutableParameterState *)&v10 hash];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  value = [(WFVariableSubstitutableParameterState *)self value];
  if ([value containsSensitiveContent])
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    value2 = [v9 value];
    if (value2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = value2;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v21.receiver = self;
    v21.super_class = WFLinkDynamicOptionSubstitutableState;
    if ([(WFVariableSubstitutableParameterState *)&v21 isEqual:v6])
    {
      v5Value = [value value];
      displayRepresentation = [v5Value displayRepresentation];
      value3 = [v12 value];
      displayRepresentation2 = [value3 displayRepresentation];
      v17 = displayRepresentation;
      v18 = displayRepresentation2;
      v19 = v18;
      if (v17 == v18)
      {
        v8 = 1;
      }

      else
      {
        v8 = 0;
        if (v17 && v18)
        {
          v8 = [v17 isEqual:v18];
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = WFLinkDynamicOptionSubstitutableState;
    v8 = [(WFVariableSubstitutableParameterState *)&v22 isEqual:equalCopy];
  }

  return v8;
}

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

      parameter = [contextCopy parameter];
      parameterMetadata = [parameter parameterMetadata];
      valueType = [parameterMetadata valueType];

      wf_objectClass = [valueType wf_objectClass];
      variable3 = [(WFVariableSubstitutableParameterState *)self variable];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v22[3] = &unk_1E837A650;
      v25 = valueHandlerCopy;
      v26 = wf_objectClass;
      v23 = valueType;
      v24 = parameter;
      v19 = parameter;
      variable2 = valueType;
      [variable3 getContentWithContext:contextCopy completionHandler:v22];
    }
  }

  else
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    v20Value = [value value];
    (*(valueHandlerCopy + 2))(valueHandlerCopy, v20Value, 0);
  }
}

void __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 numberOfItems])
  {
    v7 = [*(a1 + 32) wf_objectValueType];
    v8 = [v5 items];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v13[3] = &unk_1E837A628;
    v17 = *(a1 + 56);
    v14 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_13;
    v10[3] = &unk_1E837F020;
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v9 = v7;
    [v8 if_flatMapAsynchronously:v13 completionHandler:v10];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 displayRepresentation];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3;
  v15[3] = &unk_1E837A600;
  v22 = *(a1 + 56);
  v16 = *(a1 + 32);
  v17 = v6;
  v21 = v7;
  v18 = *(a1 + 40);
  v19 = v10;
  v20 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = v10;
  v13 = v7;
  v14 = v6;
  [v14 getObjectRepresentations:v15 forClass:v11];
}

void __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
  }

  else
  {
    v7 = [v10 firstObject];
  }

  v8 = v7;
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v5);
}

void __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v70[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 domain];
  v11 = *MEMORY[0x1E6997038];
  if ([v10 isEqualToString:*MEMORY[0x1E6997038]] && !objc_msgSend(v9, "code"))
  {
    v16 = *(a1 + 80);
    v17 = objc_opt_class();

    if (v16 != v17)
    {
      goto LABEL_4;
    }

    v18 = [*(a1 + 32) parameterMetadata];
    v19 = [v18 wf_isPersistentFileIdentifiableEntity];

    v20 = *(a1 + 40);
    if (v19)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_4;
      v68[3] = &unk_1E837F588;
      v69 = *(a1 + 72);
      [v20 getFileRepresentations:v68 forType:0];
      v15 = v69;
      goto LABEL_12;
    }

    v32 = v20;
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

    v39 = v33;

    v42 = [objc_opt_class() valueType];
    if (v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v43 = [*(a1 + 32) parameterMetadata];
      v44 = [v43 wf_supportsImportFromCodableValueType:v42];

      if (v44)
      {
        v45 = *(a1 + 72);
        v46 = objc_alloc(MEMORY[0x1E69ACA90]);
        v47 = [v39 codableValue];
        v48 = [v46 initWithValue:v47 valueType:v42];
        v70[0] = v48;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
        (*(v45 + 16))(v45, v49, 0);

LABEL_45:
        goto LABEL_46;
      }
    }

    else
    {

      v42 = 0;
    }

    v50 = *(a1 + 40);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_6;
    v65[3] = &unk_1E837A538;
    v67 = *(a1 + 72);
    v66 = v9;
    [v50 getObjectRepresentations:v65 forClass:objc_opt_class()];

    v47 = v67;
    goto LABEL_45;
  }

LABEL_4:
  v12 = [v9 domain];
  if ([v12 isEqualToString:v11] && !objc_msgSend(v9, "code"))
  {
    v21 = *(a1 + 80);
    v22 = objc_opt_class();

    if (v21 == v22)
    {
      v23 = [*(a1 + 32) parameterMetadata];
      v24 = [v23 typeSpecificMetadata];
      v25 = [v24 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata"];

      v26 = *(a1 + 40);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_8;
      v61[3] = &unk_1E837A588;
      v64 = *(a1 + 72);
      v62 = v9;
      v63 = v25;
      v27 = v25;
      [v26 getObjectRepresentations:v61 forClass:objc_opt_class()];

      goto LABEL_47;
    }
  }

  else
  {
  }

  v13 = [v9 domain];
  if ([v13 isEqualToString:v11] && !objc_msgSend(v9, "code"))
  {
    v28 = *(a1 + 80);
    objc_opt_class();
    LOBYTE(v28) = objc_opt_isKindOfClass();

    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }

    v29 = *(a1 + 48);
    if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v30 = *(a1 + 48);
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

      v34 = v31;

      v35 = [v34 memberValueType];

      if (v35)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }

      v29 = v36;
    }

    v37 = *(a1 + 40);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_10;
    v56[3] = &unk_1E837E818;
    v60 = *(a1 + 72);
    v57 = *(a1 + 56);
    v58 = v8;
    v59 = v29;
    v38 = MEMORY[0x1E69E0AF8];
    v39 = v29;
    v40 = [v39 contentTypeIdentifier];
    v41 = [v38 typeWithString:v40];
    [v37 getFileRepresentations:v56 forType:v41];

LABEL_46:
    goto LABEL_47;
  }

LABEL_10:
  if (!v7)
  {
    (*(*(a1 + 72) + 16))();
    goto LABEL_47;
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_12;
  v52[3] = &unk_1E837A5D8;
  v53 = *(a1 + 56);
  v54 = v8;
  v55 = *(a1 + 64);
  v14 = [v7 if_map:v52];
  (*(*(a1 + 72) + 16))();

  v15 = v53;
LABEL_12:

LABEL_47:
  v51 = *MEMORY[0x1E69E9840];
}

void __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 if_map:&__block_literal_global_45279];
  (*(*(a1 + 32) + 16))();
}

void __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_6(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6 = [a2 if_compactMap:&__block_literal_global_199_45276];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_9;
    v8[3] = &unk_1E837A560;
    v9 = *(a1 + 40);
    v4 = [a2 if_compactMap:v8];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_10(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_11;
    v7[3] = &unk_1E837A5B0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v4 = [a2 if_compactMap:v7];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

id __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_12(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (!v6)
  {
    v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = objc_alloc(MEMORY[0x1E69AC9E0]);
      v10 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v11 = [v9 initWithKey:v10 table:0 bundleURL:0];

      v6 = [objc_alloc(MEMORY[0x1E69AC7A0]) initWithTitle:v11 subtitle:0 image:0];
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v5 valueType:*(a1 + 48) displayRepresentation:v6];

  return v12;
}

id __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_11(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (!v6)
  {
    v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = objc_alloc(MEMORY[0x1E69AC9E0]);
      v10 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v11 = [v9 initWithKey:v10 table:0 bundleURL:0];

      v6 = [objc_alloc(MEMORY[0x1E69AC7A0]) initWithTitle:v11 subtitle:0 image:0];
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = objc_alloc(MEMORY[0x1E69AC748]);
  v13 = [v5 data];
  v14 = [v12 initWithData:v13];

  v15 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v14 valueType:*(a1 + 48) displayRepresentation:v6];

  return v15;
}

id __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69ACA90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = objc_alloc(MEMORY[0x1E69AC890]);
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 initWithEnumerationIdentifier:v7];
  v9 = [v5 initWithValue:v4 valueType:v8];

  return v9;
}

id __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69ACA90];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [MEMORY[0x1E69AC938] stringValueType];
  v6 = [v4 initWithValue:v3 valueType:v5];

  return v6;
}

id __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696E840] wf_fileWithFileRepresentation:a2 displayName:0];
  v3 = objc_alloc(MEMORY[0x1E69ACA90]);
  v4 = [MEMORY[0x1E69AC888] fileValueType];
  v5 = [v3 initWithValue:v2 valueType:v4];

  return v5;
}

- (WFLinkDynamicOptionSubstitutableState)initWithValue:(id)value localizedTitle:(id)title localizedSubtitle:(id)subtitle image:(id)image
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  v22.receiver = self;
  v22.super_class = WFLinkDynamicOptionSubstitutableState;
  v13 = [(WFVariableSubstitutableParameterState *)&v22 initWithValue:value];
  if (v13)
  {
    v14 = [titleCopy copy];
    localizedTitle = v13->_localizedTitle;
    v13->_localizedTitle = v14;

    v16 = [subtitleCopy copy];
    localizedSubtitle = v13->_localizedSubtitle;
    v13->_localizedSubtitle = v16;

    v18 = [imageCopy copy];
    image = v13->_image;
    v13->_image = v18;

    v20 = v13;
  }

  return v13;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkDynamicOptionSubstitutableState.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"[option isKindOfClass:[LNDynamicOption class]]"}];
  }

  containsSensitiveContent = [valueCopy containsSensitiveContent];
  v7 = MEMORY[0x1E695DF90];
  value = [valueCopy value];
  wfSerializedRepresentation = [value wfSerializedRepresentation];
  v10 = [v7 dictionaryWithDictionary:wfSerializedRepresentation];

  if (containsSensitiveContent)
  {
    [v10 removeObjectForKey:@"title"];
    [v10 removeObjectForKey:@"symbol"];
    [v10 removeObjectForKey:@"image"];
  }

  return v10;
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter bundleIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  identifierCopy = identifier;
  if (representationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = representationCopy;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = parameterCopy;
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

  parameterMetadata = [v17 parameterMetadata];
  valueType = [parameterMetadata valueType];

  if (!valueType)
  {
    v21 = [v14 objectForKeyedSubscript:@"valueType"];
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v22 = 0;
      goto LABEL_26;
    }

    valueType = v21;
  }

  v20 = v14;
  if (!v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0;
    }

    else
    {
      v20 = representationCopy;
    }
  }

  v23 = [MEMORY[0x1E69ACA90] valueFromSerializedRepresentation:v20 valueType:valueType variableProvider:providerCopy parameter:v15 bundleIdentifier:identifierCopy];
  if (v23)
  {
    v22 = [objc_alloc(MEMORY[0x1E69ACEC8]) initWithValue:v23 indentationLevel:0];
    [v17 dataSource];
    v31 = representationCopy;
    v24 = v14;
    v25 = identifierCopy;
    v27 = v26 = providerCopy;
    [v22 setContainsSensitiveContent:{objc_msgSend(v27, "enumeration:shouldStripSenstitiveContentFromValue:", v17, v22)}];

    providerCopy = v26;
    identifierCopy = v25;
    v14 = v24;
    representationCopy = v31;
  }

  else
  {
    v28 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v33 = "+[WFLinkDynamicOptionSubstitutableState valueFromSerializedRepresentation:variableProvider:parameter:bundleIdentifier:]";
      _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_ERROR, "%s Failed to deserialize dynamic option value", buf, 0xCu);
    }

    v22 = 0;
  }

LABEL_26:
  v29 = *MEMORY[0x1E69E9840];

  return v22;
}

@end