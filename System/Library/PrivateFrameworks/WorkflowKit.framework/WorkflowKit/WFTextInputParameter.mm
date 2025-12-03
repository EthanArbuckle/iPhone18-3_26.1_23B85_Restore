@interface WFTextInputParameter
- (BOOL)shouldAlignLabels;
- (NSString)returnKeyType;
- (NSString)textContentType;
- (WFTextInputParameter)initWithDefinition:(id)definition;
- (id)createDialogTextFieldConfigurationWithDefaultState:(id)state;
- (id)defaultSerializedRepresentation;
- (id)defaultSupportedVariableTypes;
- (id)parameterStateFromDialogResponse:(id)response;
- (id)rewriteParameterState:(id)state withStrings:(id)strings;
- (id)userVisibleStringsInParameterState:(id)state forUseCase:(unint64_t)case;
- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler;
- (void)setLocalizedPlaceholder:(id)placeholder;
- (void)setPrefix:(id)prefix;
@end

@implementation WFTextInputParameter

- (id)userVisibleStringsInParameterState:(id)state forUseCase:(unint64_t)case
{
  swift_unknownObjectRetain();
  selfCopy = self;
  WFTextInputParameter.userVisibleStrings(in:for:)(state, case);
  swift_unknownObjectRelease();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v8 = sub_1CA94C8E8();

  return v8;
}

- (id)rewriteParameterState:(id)state withStrings:(id)strings
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = WFTextInputParameter.rewrite(_:withStrings:)(state);
  swift_unknownObjectRelease();

  return v7;
}

- (id)parameterStateFromDialogResponse:(id)response
{
  v14[1] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (responseCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [WFVariableString alloc];
    inputtedText = [responseCopy inputtedText];
    v7 = [(WFVariableString *)v5 initWithString:inputtedText];

    v8 = [[(objc_class *)[(WFTextInputParameter *)self singleStateClass] alloc] initWithVariableString:v7];
    if ([(WFParameter *)self allowsMultipleValues])
    {
      v9 = [WFMultipleValueParameterState alloc];
      v14[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v11 = [(WFMultipleValueParameterState *)v9 initWithParameterStates:v10];
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {

    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSString)returnKeyType
{
  isMultiline = [(WFTextInputParameter *)self isMultiline];
  v3 = MEMORY[0x1E69E12B0];
  if (!isMultiline)
  {
    v3 = MEMORY[0x1E69E12B8];
  }

  v4 = *v3;

  return v4;
}

- (id)createDialogTextFieldConfigurationWithDefaultState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc_init(MEMORY[0x1E69E0D88]);
  variableString = [stateCopy variableString];
  stringByRemovingVariables = [variableString stringByRemovingVariables];
  [v5 setText:stringByRemovingVariables];

  prefix = [(WFTextInputParameter *)self prefix];
  [v5 setPrefix:prefix];

  localizedPlaceholder = [(WFParameter *)self localizedPlaceholder];
  [v5 setPlaceholder:localizedPlaceholder];

  [v5 setSecureTextEntry:{-[WFTextInputParameter isSecureTextEntry](self, "isSecureTextEntry")}];
  keyboardType = [(WFTextInputParameter *)self keyboardType];
  [v5 setKeyboardType:keyboardType];

  textContentType = [(WFTextInputParameter *)self textContentType];
  [v5 setTextContentType:textContentType];

  autocapitalizationType = [(WFTextInputParameter *)self autocapitalizationType];
  [v5 setAutocapitalizationType:autocapitalizationType];

  autocorrectionType = [(WFTextInputParameter *)self autocorrectionType];
  [v5 setAutocorrectionType:autocorrectionType];

  [v5 setSmartQuotesDisabled:{-[WFTextInputParameter smartQuotesDisabled](self, "smartQuotesDisabled")}];
  [v5 setSmartDashesDisabled:{-[WFTextInputParameter smartDashesDisabled](self, "smartDashesDisabled")}];
  [v5 setAutoPeriodsDisabled:{-[WFTextInputParameter autoPeriodsDisabled](self, "autoPeriodsDisabled")}];
  [v5 setTextReplacementDisabled:{-[WFTextInputParameter textReplacementDisabled](self, "textReplacementDisabled")}];
  [v5 setMultiline:{-[WFTextInputParameter isMultiline](self, "isMultiline")}];
  if (stateCopy)
  {
    [v5 setInitialInsertionIndex:{objc_msgSend(stateCopy, "userInputInsertionIndex")}];
  }

  returnKeyType = [(WFTextInputParameter *)self returnKeyType];
  [v5 setReturnKeyType:returnKeyType];

  return v5;
}

- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler
{
  attributionCopy = attribution;
  stateCopy = state;
  promptCopy = prompt;
  handlerCopy = handler;
  variableString = [stateCopy variableString];
  variables = [variableString variables];
  v15 = [variables count];

  if (v15)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v16 = [(WFTextInputParameter *)self createDialogTextFieldConfigurationWithDefaultState:stateCopy];
    v17 = objc_alloc(MEMORY[0x1E69E0B80]);
    v18 = [(WFParameter *)self key];
    v19 = [v17 initWithTextFieldConfiguration:v16 message:0 attribution:attributionCopy prompt:promptCopy parameterKey:v18];
    (handlerCopy)[2](handlerCopy, v19);
  }
}

- (void)setLocalizedPlaceholder:(id)placeholder
{
  v4.receiver = self;
  v4.super_class = WFTextInputParameter;
  [(WFParameter *)&v4 setLocalizedPlaceholder:placeholder];
  [(WFParameter *)self attributesDidChange];
}

- (void)setPrefix:(id)prefix
{
  v4 = [prefix copy];
  prefix = self->_prefix;
  self->_prefix = v4;

  [(WFParameter *)self attributesDidChange];
}

- (id)defaultSupportedVariableTypes
{
  v2 = objc_opt_class();

  return [v2 allInsertableVariableTypes];
}

- (BOOL)shouldAlignLabels
{
  textAlignment = [(WFTextInputParameter *)self textAlignment];
  v4 = *MEMORY[0x1E69E12C8];
  v5 = textAlignment;
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    if (!v5 || !v4)
    {

LABEL_9:
      LOBYTE(v8) = 0;
      goto LABEL_10;
    }

    v7 = [v5 isEqualToString:v4];

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = ![(WFTextInputParameter *)self isMultiline];
LABEL_10:

  return v8;
}

- (NSString)textContentType
{
  mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
  shouldReverseLayoutDirection = [mEMORY[0x1E6996CA8] shouldReverseLayoutDirection];
  v5 = MEMORY[0x1E69E12C0];
  if (!shouldReverseLayoutDirection)
  {
    v5 = MEMORY[0x1E69E12D0];
  }

  v6 = *v5;

  if (!self->_textContentType)
  {
    definition = self->_textAlignment;
    v8 = v6;
    v9 = v8;
    if (definition == v8)
    {
    }

    else
    {
      if (v8)
      {
        v10 = definition == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_13;
      }

      v11 = [(NSString *)definition isEqualToString:v8];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    definition = [(WFParameter *)self definition];
    v9 = [(NSString *)definition objectForKey:@"TextContentType"];
    v12 = objc_opt_class();
    v13 = WFEnforceClass_1501(v9, v12);
    textContentType = self->_textContentType;
    self->_textContentType = v13;

LABEL_13:
  }

LABEL_14:
  v15 = self->_textContentType;
  v16 = v15;

  return v15;
}

- (id)defaultSerializedRepresentation
{
  v6.receiver = self;
  v6.super_class = WFTextInputParameter;
  defaultSerializedRepresentation = [(WFParameter *)&v6 defaultSerializedRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localize = defaultSerializedRepresentation;
LABEL_5:
    v4 = localize;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localize = [defaultSerializedRepresentation localize];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (WFTextInputParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v64.receiver = self;
  v64.super_class = WFTextInputParameter;
  v5 = [(WFParameter *)&v64 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"Prefix"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    prefix = v5->_prefix;
    v5->_prefix = v8;

    v10 = [definitionCopy objectForKey:@"SecureTextInput"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    v5->_secureTextEntry = [v12 BOOLValue];

    v13 = [definitionCopy objectForKey:@"KeyboardType"];
    v14 = objc_opt_class();
    v15 = WFEnforceClass_1501(v13, v14);
    keyboardType = v5->_keyboardType;
    v5->_keyboardType = v15;

    v17 = [definitionCopy objectForKey:@"AutocapitalizationType"];
    v18 = objc_opt_class();
    v19 = WFEnforceClass_1501(v17, v18);
    autocapitalizationType = v5->_autocapitalizationType;
    v5->_autocapitalizationType = v19;

    v21 = [definitionCopy objectForKey:@"DisableAutocorrection"];
    v22 = objc_opt_class();
    v23 = WFEnforceClass_1501(v21, v22);
    bOOLValue = [v23 BOOLValue];
    v25 = MEMORY[0x1E69E1278];
    if (!bOOLValue)
    {
      v25 = MEMORY[0x1E69E1270];
    }

    objc_storeStrong(&v5->_autocorrectionType, *v25);

    v26 = [definitionCopy objectForKey:@"TextAlignment"];
    v27 = objc_opt_class();
    v28 = WFEnforceClass_1501(v26, v27);
    textAlignment = v5->_textAlignment;
    v5->_textAlignment = v28;

    v30 = [definitionCopy objectForKey:@"Multiline"];
    v31 = objc_opt_class();
    v32 = WFEnforceClass_1501(v30, v31);
    v5->_multiline = [v32 BOOLValue];

    v33 = [definitionCopy objectForKey:@"MonospaceFont"];
    v34 = objc_opt_class();
    v35 = WFEnforceClass_1501(v33, v34);
    v5->_monospace = [v35 BOOLValue];

    v36 = [definitionCopy objectForKey:@"ProcessIntoContentItems"];
    v37 = objc_opt_class();
    v38 = WFEnforceClass_1501(v36, v37);
    v5->_processesIntoContentItems = [v38 BOOLValue];

    v39 = [definitionCopy objectForKey:@"DisableSmartQuotes"];
    v40 = objc_opt_class();
    v41 = WFEnforceClass_1501(v39, v40);

    v42 = [definitionCopy objectForKey:@"DisableSmartDashes"];
    v43 = objc_opt_class();
    v44 = WFEnforceClass_1501(v42, v43);

    if (v41)
    {
      bOOLValue2 = [v41 BOOLValue];
    }

    else
    {
      bOOLValue2 = 1;
    }

    v5->_smartQuotesDisabled = bOOLValue2;
    if (v44)
    {
      bOOLValue3 = [v44 BOOLValue];
    }

    else
    {
      bOOLValue3 = 1;
    }

    v5->_smartDashesDisabled = bOOLValue3;
    v47 = [definitionCopy objectForKey:@"DisableAutoPeriods"];
    v48 = objc_opt_class();
    v49 = WFEnforceClass_1501(v47, v48);

    v50 = [definitionCopy objectForKey:@"DisableTextReplacement"];
    v51 = objc_opt_class();
    v52 = WFEnforceClass_1501(v50, v51);

    if (v49)
    {
      bOOLValue4 = [v49 BOOLValue];
    }

    else
    {
      bOOLValue4 = 0;
    }

    v5->_autoPeriodsDisabled = bOOLValue4;
    if (v52)
    {
      bOOLValue5 = [v52 BOOLValue];
    }

    else
    {
      bOOLValue5 = 0;
    }

    v5->_textReplacementDisabled = bOOLValue5;
    v55 = [definitionCopy objectForKey:@"SyntaxHighlightingType"];
    v56 = objc_opt_class();
    v57 = WFEnforceClass_1501(v55, v56);

    v5->_syntaxHighlightingType = [v57 isEqualToString:@"JavaScript"];
    v58 = [definitionCopy objectForKey:@"HintDisplayMode"];
    v59 = objc_opt_class();
    v60 = WFEnforceClass_1501(v58, v59);

    if ([v60 isEqualToString:@"WhileProcessing"])
    {
      v61 = 1;
    }

    else
    {
      if (![v60 isEqualToString:@"Never"])
      {
        v5->_hintDisplayMode = 0;
        goto LABEL_22;
      }

      v61 = 2;
    }

    v5->_hintDisplayMode = v61;
LABEL_22:
    v62 = v5;
  }

  return v5;
}

@end