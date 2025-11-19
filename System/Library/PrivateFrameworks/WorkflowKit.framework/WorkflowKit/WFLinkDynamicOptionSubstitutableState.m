@interface WFLinkDynamicOptionSubstitutableState
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5 bundleIdentifier:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)stateIsEquivalent:(id)a3;
- (BOOL)valueNeedsDisplayRepresentation;
- (NSString)localizedSubtitle;
- (NSString)localizedTitle;
- (WFImage)image;
- (WFLinkDynamicOptionSubstitutableState)initWithValue:(id)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5 image:(id)a6;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFLinkDynamicOptionSubstitutableState

- (BOOL)valueNeedsDisplayRepresentation
{
  v3 = [(WFVariableSubstitutableParameterState *)self value];
  v4 = [v3 value];
  v5 = [v4 valueType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(WFVariableSubstitutableParameterState *)self value];
    v7 = [v6 value];
    v8 = [v7 displayRepresentation];
    v9 = v8 == 0;
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
    v4 = [(WFVariableSubstitutableParameterState *)self value];
    v5 = [v4 image];
    v6 = [v5 wf_image];
    v7 = self->_image;
    self->_image = v6;

    image = self->_image;
  }

  return image;
}

- (NSString)localizedSubtitle
{
  if (![(NSString *)self->_localizedSubtitle length])
  {
    v3 = [(WFVariableSubstitutableParameterState *)self value];
    v4 = [v3 subtitle];
    v5 = [v4 wf_localizedString];
    localizedSubtitle = self->_localizedSubtitle;
    self->_localizedSubtitle = v5;
  }

  v7 = self->_localizedSubtitle;

  return v7;
}

- (NSString)localizedTitle
{
  if (![(NSString *)self->_localizedTitle length])
  {
    v3 = [(WFVariableSubstitutableParameterState *)self value];
    v4 = [v3 title];
    v5 = [v4 wf_localizedString];
    localizedTitle = self->_localizedTitle;
    self->_localizedTitle = v5;
  }

  v7 = self->_localizedTitle;

  return v7;
}

- (BOOL)stateIsEquivalent:(id)a3
{
  v4 = a3;
  v5 = [(WFVariableSubstitutableParameterState *)self value];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v8 = [v4 value];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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
    v12 = [v7 value];
    v13 = [v10 value];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      LOBYTE(v11) = 1;
      goto LABEL_99;
    }

    v15 = [v7 value];
    v16 = [v15 valueType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v7 value];
      v18 = [v17 valueType];
      v19 = [v10 value];
      v20 = [v19 valueType];
      v21 = [v18 isEqual:v20];

      if (v21)
      {
        v22 = [v7 value];
        v23 = [v22 value];

        v24 = [v10 value];
        v25 = [v24 value];

        if (([v23 isTransient] & 1) == 0 && (objc_msgSend(v25, "isTransient") & 1) == 0)
        {
          v26 = [v23 identifier];
          if (v26)
          {
            v27 = v26;
            v28 = [v25 identifier];

            if (v28)
            {
              v29 = [v23 identifier];
              v30 = [v25 identifier];
              LOBYTE(v11) = [v29 isEqual:v30];
              goto LABEL_96;
            }
          }
        }

        if ([v23 isTransient] && objc_msgSend(v25, "isTransient"))
        {
          v48 = [v23 properties];
          v49 = [v25 properties];
          v29 = v48;
          v50 = v49;
          v30 = v50;
          if (v29 == v50)
          {
          }

          else
          {
            LOBYTE(v11) = 0;
            v51 = v50;
            v52 = v29;
            if (!v29 || !v50)
            {
              goto LABEL_95;
            }

            v11 = [v29 isEqualToArray:v50];

            if (!v11)
            {
              goto LABEL_96;
            }
          }

          v80 = [v23 managedAccountIdentifier];
          v81 = [v25 managedAccountIdentifier];
          v52 = v80;
          v82 = v81;
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

          v87 = [v23 prototypeMangledTypeName];
          v88 = [v25 prototypeMangledTypeName];
          v52 = v87;
          v89 = v88;
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

    v31 = [v7 value];
    v32 = [v31 valueType];
    v33 = 0x1E69AC000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v7 value];
      v35 = [v34 valueType];
      if ([v35 typeIdentifier] == 13)
      {
        v36 = [v7 value];
        v37 = [v36 valueType];
        v38 = [v10 value];
        v39 = [v38 valueType];
        v92 = [v37 isEqual:v39];

        v33 = 0x1E69AC000;
        if (v92)
        {
          v40 = [v7 value];
          v23 = [v40 value];

          v41 = [v10 value];
          v25 = [v41 value];

          v42 = [v23 type];
          if (v42 != [v25 type])
          {
            goto LABEL_54;
          }

          v43 = [v23 name];
          v44 = [v25 name];
          v29 = v43;
          v45 = v44;
          v30 = v45;
          if (v29 == v45)
          {
          }

          else
          {
            LOBYTE(v11) = 0;
            v46 = v45;
            v47 = v29;
            if (!v29 || !v45)
            {
LABEL_91:

              goto LABEL_96;
            }

            v11 = [v29 isEqualToString:v45];

            if (!v11)
            {
              goto LABEL_96;
            }
          }

          v84 = [v23 identificationHint];
          v85 = [v25 identificationHint];
          v47 = v84;
          v86 = v85;
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
        v53 = [v7 value];
        v54 = [v53 valueType];
        v55 = *(v33 + 2184);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = [v7 value];
          v30 = [v56 valueType];
          if ([v30 typeIdentifier] == 12)
          {
            v57 = [v7 value];
            v58 = [v57 valueType];
            v59 = [v10 value];
            v60 = [v59 valueType];
            LODWORD(v91) = [v58 isEqual:v60];

            v33 = 0x1E69AC000;
            if (v91)
            {
              v61 = [v7 value];
              v23 = [v61 value];

              v62 = [v10 value];
              v25 = [v62 value];

              v29 = [v23 fileURL];
              if (v29 || ([v25 fileURL], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v63 = [v23 filename];
                if (!v63 || ([v25 filename], (v91 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v75 = [v23 fileURL];
                  v76 = [v25 fileURL];
                  v77 = v75;
                  v78 = v76;
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
                  if (!v63)
                  {
LABEL_74:

                    if (v29)
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

              v29 = 0;
LABEL_53:
              LOBYTE(v11) = 0;
              goto LABEL_96;
            }

LABEL_51:
            v23 = [v7 value];
            v25 = [v23 valueType];
            v65 = *(v33 + 2184);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_54;
            }

            v29 = [v7 value];
            v30 = [v29 valueType];
            if (![v30 typeIdentifier])
            {
              v66 = [v7 value];
              v67 = [v66 valueType];
              v68 = [v10 value];
              v69 = [v68 valueType];
              v93 = [v67 isEqual:v69];

              if (!v93)
              {
                LOBYTE(v11) = 0;
                goto LABEL_99;
              }

              v70 = [v7 value];
              v71 = [v70 value];

              v72 = [v7 value];
              v73 = [v72 value];

              v29 = v71;
              v74 = v73;
              v30 = v74;
              if (v29 == v74)
              {
                LOBYTE(v11) = 1;
              }

              else
              {
                LOBYTE(v11) = 0;
                if (v29 && v74)
                {
                  LOBYTE(v11) = [v29 isEqualToString:v74];
                }
              }

              v25 = v30;
              v23 = v29;
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
  v3 = [(WFVariableSubstitutableParameterState *)self value];
  if ([v3 containsSensitiveContent])
  {
    v9.receiver = self;
    v9.super_class = WFLinkDynamicOptionSubstitutableState;
    v4 = [(WFVariableSubstitutableParameterState *)&v9 hash];
    v5 = [v3 value];
    v6 = [v5 displayRepresentation];
    v7 = [v6 hash] ^ v4;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFLinkDynamicOptionSubstitutableState;
    v7 = [(WFVariableSubstitutableParameterState *)&v10 hash];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(WFVariableSubstitutableParameterState *)self value];
  if ([v5 containsSensitiveContent])
  {
    v6 = v4;
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

    v10 = [v9 value];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
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
      v13 = [v5 value];
      v14 = [v13 displayRepresentation];
      v15 = [v12 value];
      v16 = [v15 displayRepresentation];
      v17 = v14;
      v18 = v16;
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
    v8 = [(WFVariableSubstitutableParameterState *)&v22 isEqual:v4];
  }

  return v8;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v12 = [(WFVariableSubstitutableParameterState *)self variable];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [v12 prompt];
      v9[2](v9, v13, 0);
    }

    else
    {

      v14 = [v8 parameter];
      v15 = [v14 parameterMetadata];
      v16 = [v15 valueType];

      v17 = [v16 wf_objectClass];
      v18 = [(WFVariableSubstitutableParameterState *)self variable];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __98__WFLinkDynamicOptionSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v22[3] = &unk_1E837A650;
      v25 = v10;
      v26 = v17;
      v23 = v16;
      v24 = v14;
      v19 = v14;
      v12 = v16;
      [v18 getContentWithContext:v8 completionHandler:v22];
    }
  }

  else
  {
    v20 = [(WFVariableSubstitutableParameterState *)self value];
    v21 = [v20 value];
    (*(v10 + 2))(v10, v21, 0);
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

- (WFLinkDynamicOptionSubstitutableState)initWithValue:(id)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5 image:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = WFLinkDynamicOptionSubstitutableState;
  v13 = [(WFVariableSubstitutableParameterState *)&v22 initWithValue:a3];
  if (v13)
  {
    v14 = [v10 copy];
    localizedTitle = v13->_localizedTitle;
    v13->_localizedTitle = v14;

    v16 = [v11 copy];
    localizedSubtitle = v13->_localizedSubtitle;
    v13->_localizedSubtitle = v16;

    v18 = [v12 copy];
    image = v13->_image;
    v13->_image = v18;

    v20 = v13;
  }

  return v13;
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"WFLinkDynamicOptionSubstitutableState.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"[option isKindOfClass:[LNDynamicOption class]]"}];
  }

  v6 = [v5 containsSensitiveContent];
  v7 = MEMORY[0x1E695DF90];
  v8 = [v5 value];
  v9 = [v8 wfSerializedRepresentation];
  v10 = [v7 dictionaryWithDictionary:v9];

  if (v6)
  {
    [v10 removeObjectForKey:@"title"];
    [v10 removeObjectForKey:@"symbol"];
    [v10 removeObjectForKey:@"image"];
  }

  return v10;
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5 bundleIdentifier:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v9;
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
  v15 = v11;
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

  v18 = [v17 parameterMetadata];
  v19 = [v18 valueType];

  if (!v19)
  {
    v21 = [v14 objectForKeyedSubscript:@"valueType"];
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v22 = 0;
      goto LABEL_26;
    }

    v19 = v21;
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
      v20 = v9;
    }
  }

  v23 = [MEMORY[0x1E69ACA90] valueFromSerializedRepresentation:v20 valueType:v19 variableProvider:v10 parameter:v15 bundleIdentifier:v12];
  if (v23)
  {
    v22 = [objc_alloc(MEMORY[0x1E69ACEC8]) initWithValue:v23 indentationLevel:0];
    [v17 dataSource];
    v31 = v9;
    v24 = v14;
    v25 = v12;
    v27 = v26 = v10;
    [v22 setContainsSensitiveContent:{objc_msgSend(v27, "enumeration:shouldStripSenstitiveContentFromValue:", v17, v22)}];

    v10 = v26;
    v12 = v25;
    v14 = v24;
    v9 = v31;
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