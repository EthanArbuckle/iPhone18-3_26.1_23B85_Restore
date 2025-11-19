@interface WFCodableAttributeBackedSubstitutableState
+ (id)processingValueClasses;
- (NSString)readableSubtitle;
- (NSString)readableTitle;
- (WFCodableAttributeBackedSubstitutableState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFCodableAttributeBackedSubstitutableState)initWithValue:(id)a3 codableAttribute:(id)a4 stringLocalizer:(id)a5;
- (id)serializedRepresentation;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
- (void)resizeDisplayImageIfNecessary:(id)a3;
@end

@implementation WFCodableAttributeBackedSubstitutableState

- (void)resizeDisplayImageIfNecessary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 displayImage];
  if (v4)
  {
    v5 = [v3 displayImage];
    v6 = [v5 _imageData];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [v3 displayImage];
      v9 = [v8 _imageData];

      v10 = CGImageSourceCreateWithData(v9, 0);
      if (v10)
      {
        v11 = v10;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __76__WFCodableAttributeBackedSubstitutableState_resizeDisplayImageIfNecessary___block_invoke;
        aBlock[3] = &__block_descriptor_40_e5_v8__0l;
        aBlock[4] = v10;
        v12 = _Block_copy(aBlock);
        Type = CGImageSourceGetType(v11);
        if (Type)
        {
          v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:Type];
          if (v14)
          {
            WFImageSizeFromImageSource();
            if (v16 >= 100.0 || v15 >= 100.0)
            {
              v17 = [MEMORY[0x1E69E0AF8] typeWithUTType:v14];
              v18 = WFResizedImageFromImageSource();

              v19 = [v18 data];
              if ([v19 length])
              {
                v20 = [MEMORY[0x1E696E868] imageWithImageData:v19];
                [v3 setDisplayImage:v20];
              }

              else
              {
                v20 = getWFGeneralLogObject();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315138;
                  v24 = "[WFCodableAttributeBackedSubstitutableState resizeDisplayImageIfNecessary:]";
                  _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Unable to resize oversized display image provided by custom intent.", buf, 0xCu);
                }
              }
            }
          }
        }

        v12[2](v12);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 parameter];
  v12 = [v11 codableAttribute];

  v13 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v13)
  {
    v14 = [(WFVariableSubstitutableParameterState *)self variable];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v14 prompt];
      v9[2](v9, v15, 0);
    }

    else
    {

      v16 = [(WFVariableSubstitutableParameterState *)self variable];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __103__WFCodableAttributeBackedSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v18[3] = &unk_1E837DAB0;
      v20 = v10;
      v19 = v12;
      [v16 getContentWithContext:v8 completionHandler:v18];

      v14 = v20;
    }
  }

  else
  {
    v17 = [(WFVariableSubstitutableParameterState *)self value];
    v14 = [v12 wf_processedParameterValueForValue:v17];

    (*(v10 + 2))(v10, v14, 0);
  }
}

void __103__WFCodableAttributeBackedSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [*(a1 + 32) supportsDynamicEnumeration] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [*(a1 + 32) wf_contentItemClass];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __103__WFCodableAttributeBackedSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2;
    v7[3] = &unk_1E837BBC0;
    v9 = *(a1 + 40);
    v10 = v5;
    v8 = v3;
    [v8 generateCollectionByCoercingToItemClass:v6 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __103__WFCodableAttributeBackedSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && !v9)
  {
    v11 = *(*(a1 + 40) + 16);
LABEL_7:
    v11();
    goto LABEL_8;
  }

  if (*(a1 + 48) != 1)
  {
    v11 = *(*(a1 + 40) + 16);
    goto LABEL_7;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__WFCodableAttributeBackedSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3;
  v13[3] = &unk_1E837FBD8;
  v12 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v12 getStringRepresentation:v13];

LABEL_8:
}

void __103__WFCodableAttributeBackedSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  if (v10)
  {
    v5 = MEMORY[0x1E696E910];
    v6 = a3;
    v7 = [[v5 alloc] initWithIdentifier:0 displayString:v10];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    v7 = a3;
    v9(v8, 0, v7);
  }
}

- (id)serializedRepresentation
{
  v3 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v3)
  {
    v4 = [(WFVariableSubstitutableParameterState *)self variable];
    v5 = WFSerializedVariableObject(v4);
  }

  else
  {
    v6 = [(WFVariableSubstitutableParameterState *)self value];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(WFCodableAttributeBackedSubstitutableState *)self resizeDisplayImageIfNecessary:v6];
      }
    }

    v4 = objc_alloc_init(MEMORY[0x1E696E8D0]);
    v7 = [(WFVariableSubstitutableParameterState *)self value];
    v8 = [(WFCodableAttributeBackedSubstitutableState *)self codableAttribute];
    v5 = [v4 encodeObject:v7 withCodableAttribute:v8];
  }

  return v5;
}

- (WFCodableAttributeBackedSubstitutableState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = WFDeserializedVariableObject(v8, v9, v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = [(WFVariableSubstitutableParameterState *)self initWithVariable:v11];
      v12 = self;
      goto LABEL_14;
    }
  }

  v13 = v10;
  v14 = v13;
  if (v13)
  {
    if ([v13 conformsToProtocol:&unk_1F4AD41D0])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v11 = [v16 codableAttribute];
  v17 = [v16 stringLocalizer];

  v18 = objc_alloc_init(MEMORY[0x1E696E8C8]);
  v19 = [v18 decodeWithCodableAttribute:v11 from:v8];
  if (v19)
  {
    self = [(WFCodableAttributeBackedSubstitutableState *)self initWithValue:v19 codableAttribute:v11 stringLocalizer:v17];
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

LABEL_14:
  return v12;
}

- (WFCodableAttributeBackedSubstitutableState)initWithValue:(id)a3 codableAttribute:(id)a4 stringLocalizer:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = WFCodableAttributeBackedSubstitutableState;
  v11 = [(WFVariableSubstitutableParameterState *)&v15 initWithValue:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_codableAttribute, a4);
    objc_storeStrong(&v12->_stringLocalizer, a5);
    v13 = v12;
  }

  return v12;
}

- (NSString)readableSubtitle
{
  readableSubtitle = self->_readableSubtitle;
  if (!readableSubtitle)
  {
    v4 = [(WFVariableSubstitutableParameterState *)self value];
    v5 = [(WFCodableAttributeBackedSubstitutableState *)self stringLocalizer];
    v6 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    }

    v7 = [(WFCodableAttributeBackedSubstitutableState *)self codableAttribute];
    v8 = [v7 metadata];
    v9 = [v4 _intents_readableSubtitleWithLocalizer:v6 metadata:v8];
    v10 = self->_readableSubtitle;
    self->_readableSubtitle = v9;

    if (!v5)
    {
    }

    readableSubtitle = self->_readableSubtitle;
  }

  return readableSubtitle;
}

- (NSString)readableTitle
{
  readableTitle = self->_readableTitle;
  if (!readableTitle)
  {
    v4 = [(WFVariableSubstitutableParameterState *)self value];
    v5 = [(WFCodableAttributeBackedSubstitutableState *)self stringLocalizer];
    v6 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    }

    v7 = [(WFCodableAttributeBackedSubstitutableState *)self codableAttribute];
    v8 = [v7 metadata];
    v9 = [v4 _intents_readableTitleWithLocalizer:v6 metadata:v8];
    v10 = self->_readableTitle;
    self->_readableTitle = v9;

    if (!v5)
    {
    }

    readableTitle = self->_readableTitle;
  }

  return readableTitle;
}

+ (id)processingValueClasses
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end