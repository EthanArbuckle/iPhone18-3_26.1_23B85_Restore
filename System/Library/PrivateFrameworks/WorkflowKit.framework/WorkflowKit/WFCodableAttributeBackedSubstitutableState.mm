@interface WFCodableAttributeBackedSubstitutableState
+ (id)processingValueClasses;
- (NSString)readableSubtitle;
- (NSString)readableTitle;
- (WFCodableAttributeBackedSubstitutableState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFCodableAttributeBackedSubstitutableState)initWithValue:(id)value codableAttribute:(id)attribute stringLocalizer:(id)localizer;
- (id)serializedRepresentation;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
- (void)resizeDisplayImageIfNecessary:(id)necessary;
@end

@implementation WFCodableAttributeBackedSubstitutableState

- (void)resizeDisplayImageIfNecessary:(id)necessary
{
  v25 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  displayImage = [necessaryCopy displayImage];
  if (displayImage)
  {
    displayImage2 = [necessaryCopy displayImage];
    _imageData = [displayImage2 _imageData];
    v7 = [_imageData length];

    if (v7)
    {
      displayImage3 = [necessaryCopy displayImage];
      _imageData2 = [displayImage3 _imageData];

      v10 = CGImageSourceCreateWithData(_imageData2, 0);
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

              data = [v18 data];
              if ([data length])
              {
                v20 = [MEMORY[0x1E696E868] imageWithImageData:data];
                [necessaryCopy setDisplayImage:v20];
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

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  parameter = [contextCopy parameter];
  codableAttribute = [parameter codableAttribute];

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

      variable3 = [(WFVariableSubstitutableParameterState *)self variable];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __103__WFCodableAttributeBackedSubstitutableState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
      v18[3] = &unk_1E837DAB0;
      v20 = valueHandlerCopy;
      v19 = codableAttribute;
      [variable3 getContentWithContext:contextCopy completionHandler:v18];

      variable2 = v20;
    }
  }

  else
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    variable2 = [codableAttribute wf_processedParameterValueForValue:value];

    (*(valueHandlerCopy + 2))(valueHandlerCopy, variable2, 0);
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
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    v5 = WFSerializedVariableObject(variable2);
  }

  else
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(WFCodableAttributeBackedSubstitutableState *)self resizeDisplayImageIfNecessary:value];
      }
    }

    variable2 = objc_alloc_init(MEMORY[0x1E696E8D0]);
    value2 = [(WFVariableSubstitutableParameterState *)self value];
    codableAttribute = [(WFCodableAttributeBackedSubstitutableState *)self codableAttribute];
    v5 = [variable2 encodeObject:value2 withCodableAttribute:codableAttribute];
  }

  return v5;
}

- (WFCodableAttributeBackedSubstitutableState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    codableAttribute = WFDeserializedVariableObject(representationCopy, providerCopy, parameterCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = [(WFVariableSubstitutableParameterState *)self initWithVariable:codableAttribute];
      selfCopy2 = self;
      goto LABEL_14;
    }
  }

  v13 = parameterCopy;
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

  codableAttribute = [v16 codableAttribute];
  stringLocalizer = [v16 stringLocalizer];

  v18 = objc_alloc_init(MEMORY[0x1E696E8C8]);
  v19 = [v18 decodeWithCodableAttribute:codableAttribute from:representationCopy];
  if (v19)
  {
    self = [(WFCodableAttributeBackedSubstitutableState *)self initWithValue:v19 codableAttribute:codableAttribute stringLocalizer:stringLocalizer];
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

LABEL_14:
  return selfCopy2;
}

- (WFCodableAttributeBackedSubstitutableState)initWithValue:(id)value codableAttribute:(id)attribute stringLocalizer:(id)localizer
{
  attributeCopy = attribute;
  localizerCopy = localizer;
  v15.receiver = self;
  v15.super_class = WFCodableAttributeBackedSubstitutableState;
  v11 = [(WFVariableSubstitutableParameterState *)&v15 initWithValue:value];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_codableAttribute, attribute);
    objc_storeStrong(&v12->_stringLocalizer, localizer);
    v13 = v12;
  }

  return v12;
}

- (NSString)readableSubtitle
{
  readableSubtitle = self->_readableSubtitle;
  if (!readableSubtitle)
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    stringLocalizer = [(WFCodableAttributeBackedSubstitutableState *)self stringLocalizer];
    v6 = stringLocalizer;
    if (!stringLocalizer)
    {
      v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    }

    codableAttribute = [(WFCodableAttributeBackedSubstitutableState *)self codableAttribute];
    metadata = [codableAttribute metadata];
    v9 = [value _intents_readableSubtitleWithLocalizer:v6 metadata:metadata];
    v10 = self->_readableSubtitle;
    self->_readableSubtitle = v9;

    if (!stringLocalizer)
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
    value = [(WFVariableSubstitutableParameterState *)self value];
    stringLocalizer = [(WFCodableAttributeBackedSubstitutableState *)self stringLocalizer];
    v6 = stringLocalizer;
    if (!stringLocalizer)
    {
      v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    }

    codableAttribute = [(WFCodableAttributeBackedSubstitutableState *)self codableAttribute];
    metadata = [codableAttribute metadata];
    v9 = [value _intents_readableTitleWithLocalizer:v6 metadata:metadata];
    v10 = self->_readableTitle;
    self->_readableTitle = v9;

    if (!stringLocalizer)
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