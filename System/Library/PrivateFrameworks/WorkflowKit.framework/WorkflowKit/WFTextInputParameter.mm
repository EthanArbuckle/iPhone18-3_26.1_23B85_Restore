@interface WFTextInputParameter
- (BOOL)shouldAlignLabels;
- (NSString)returnKeyType;
- (NSString)textContentType;
- (WFTextInputParameter)initWithDefinition:(id)a3;
- (id)createDialogTextFieldConfigurationWithDefaultState:(id)a3;
- (id)defaultSerializedRepresentation;
- (id)defaultSupportedVariableTypes;
- (id)parameterStateFromDialogResponse:(id)a3;
- (id)rewriteParameterState:(id)a3 withStrings:(id)a4;
- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4;
- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6;
- (void)setLocalizedPlaceholder:(id)a3;
- (void)setPrefix:(id)a3;
@end

@implementation WFTextInputParameter

- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  WFTextInputParameter.userVisibleStrings(in:for:)(a3, a4);
  swift_unknownObjectRelease();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v8 = sub_1CA94C8E8();

  return v8;
}

- (id)rewriteParameterState:(id)a3 withStrings:(id)a4
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = WFTextInputParameter.rewrite(_:withStrings:)(a3);
  swift_unknownObjectRelease();

  return v7;
}

- (id)parameterStateFromDialogResponse:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [WFVariableString alloc];
    v6 = [v4 inputtedText];
    v7 = [(WFVariableString *)v5 initWithString:v6];

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
  v2 = [(WFTextInputParameter *)self isMultiline];
  v3 = MEMORY[0x1E69E12B0];
  if (!v2)
  {
    v3 = MEMORY[0x1E69E12B8];
  }

  v4 = *v3;

  return v4;
}

- (id)createDialogTextFieldConfigurationWithDefaultState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69E0D88]);
  v6 = [v4 variableString];
  v7 = [v6 stringByRemovingVariables];
  [v5 setText:v7];

  v8 = [(WFTextInputParameter *)self prefix];
  [v5 setPrefix:v8];

  v9 = [(WFParameter *)self localizedPlaceholder];
  [v5 setPlaceholder:v9];

  [v5 setSecureTextEntry:{-[WFTextInputParameter isSecureTextEntry](self, "isSecureTextEntry")}];
  v10 = [(WFTextInputParameter *)self keyboardType];
  [v5 setKeyboardType:v10];

  v11 = [(WFTextInputParameter *)self textContentType];
  [v5 setTextContentType:v11];

  v12 = [(WFTextInputParameter *)self autocapitalizationType];
  [v5 setAutocapitalizationType:v12];

  v13 = [(WFTextInputParameter *)self autocorrectionType];
  [v5 setAutocorrectionType:v13];

  [v5 setSmartQuotesDisabled:{-[WFTextInputParameter smartQuotesDisabled](self, "smartQuotesDisabled")}];
  [v5 setSmartDashesDisabled:{-[WFTextInputParameter smartDashesDisabled](self, "smartDashesDisabled")}];
  [v5 setAutoPeriodsDisabled:{-[WFTextInputParameter autoPeriodsDisabled](self, "autoPeriodsDisabled")}];
  [v5 setTextReplacementDisabled:{-[WFTextInputParameter textReplacementDisabled](self, "textReplacementDisabled")}];
  [v5 setMultiline:{-[WFTextInputParameter isMultiline](self, "isMultiline")}];
  if (v4)
  {
    [v5 setInitialInsertionIndex:{objc_msgSend(v4, "userInputInsertionIndex")}];
  }

  v14 = [(WFTextInputParameter *)self returnKeyType];
  [v5 setReturnKeyType:v14];

  return v5;
}

- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 variableString];
  v14 = [v13 variables];
  v15 = [v14 count];

  if (v15)
  {
    v12[2](v12, 0);
  }

  else
  {
    v16 = [(WFTextInputParameter *)self createDialogTextFieldConfigurationWithDefaultState:v10];
    v17 = objc_alloc(MEMORY[0x1E69E0B80]);
    v18 = [(WFParameter *)self key];
    v19 = [v17 initWithTextFieldConfiguration:v16 message:0 attribution:v20 prompt:v11 parameterKey:v18];
    (v12)[2](v12, v19);
  }
}

- (void)setLocalizedPlaceholder:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFTextInputParameter;
  [(WFParameter *)&v4 setLocalizedPlaceholder:a3];
  [(WFParameter *)self attributesDidChange];
}

- (void)setPrefix:(id)a3
{
  v4 = [a3 copy];
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
  v3 = [(WFTextInputParameter *)self textAlignment];
  v4 = *MEMORY[0x1E69E12C8];
  v5 = v3;
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
  v3 = [MEMORY[0x1E6996CA8] sharedContext];
  v4 = [v3 shouldReverseLayoutDirection];
  v5 = MEMORY[0x1E69E12C0];
  if (!v4)
  {
    v5 = MEMORY[0x1E69E12D0];
  }

  v6 = *v5;

  if (!self->_textContentType)
  {
    v7 = self->_textAlignment;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v8)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_13;
      }

      v11 = [(NSString *)v7 isEqualToString:v8];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v7 = [(WFParameter *)self definition];
    v9 = [(NSString *)v7 objectForKey:@"TextContentType"];
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
  v2 = [(WFParameter *)&v6 defaultSerializedRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 localize];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (WFTextInputParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v64.receiver = self;
  v64.super_class = WFTextInputParameter;
  v5 = [(WFParameter *)&v64 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"Prefix"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    prefix = v5->_prefix;
    v5->_prefix = v8;

    v10 = [v4 objectForKey:@"SecureTextInput"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    v5->_secureTextEntry = [v12 BOOLValue];

    v13 = [v4 objectForKey:@"KeyboardType"];
    v14 = objc_opt_class();
    v15 = WFEnforceClass_1501(v13, v14);
    keyboardType = v5->_keyboardType;
    v5->_keyboardType = v15;

    v17 = [v4 objectForKey:@"AutocapitalizationType"];
    v18 = objc_opt_class();
    v19 = WFEnforceClass_1501(v17, v18);
    autocapitalizationType = v5->_autocapitalizationType;
    v5->_autocapitalizationType = v19;

    v21 = [v4 objectForKey:@"DisableAutocorrection"];
    v22 = objc_opt_class();
    v23 = WFEnforceClass_1501(v21, v22);
    v24 = [v23 BOOLValue];
    v25 = MEMORY[0x1E69E1278];
    if (!v24)
    {
      v25 = MEMORY[0x1E69E1270];
    }

    objc_storeStrong(&v5->_autocorrectionType, *v25);

    v26 = [v4 objectForKey:@"TextAlignment"];
    v27 = objc_opt_class();
    v28 = WFEnforceClass_1501(v26, v27);
    textAlignment = v5->_textAlignment;
    v5->_textAlignment = v28;

    v30 = [v4 objectForKey:@"Multiline"];
    v31 = objc_opt_class();
    v32 = WFEnforceClass_1501(v30, v31);
    v5->_multiline = [v32 BOOLValue];

    v33 = [v4 objectForKey:@"MonospaceFont"];
    v34 = objc_opt_class();
    v35 = WFEnforceClass_1501(v33, v34);
    v5->_monospace = [v35 BOOLValue];

    v36 = [v4 objectForKey:@"ProcessIntoContentItems"];
    v37 = objc_opt_class();
    v38 = WFEnforceClass_1501(v36, v37);
    v5->_processesIntoContentItems = [v38 BOOLValue];

    v39 = [v4 objectForKey:@"DisableSmartQuotes"];
    v40 = objc_opt_class();
    v41 = WFEnforceClass_1501(v39, v40);

    v42 = [v4 objectForKey:@"DisableSmartDashes"];
    v43 = objc_opt_class();
    v44 = WFEnforceClass_1501(v42, v43);

    if (v41)
    {
      v45 = [v41 BOOLValue];
    }

    else
    {
      v45 = 1;
    }

    v5->_smartQuotesDisabled = v45;
    if (v44)
    {
      v46 = [v44 BOOLValue];
    }

    else
    {
      v46 = 1;
    }

    v5->_smartDashesDisabled = v46;
    v47 = [v4 objectForKey:@"DisableAutoPeriods"];
    v48 = objc_opt_class();
    v49 = WFEnforceClass_1501(v47, v48);

    v50 = [v4 objectForKey:@"DisableTextReplacement"];
    v51 = objc_opt_class();
    v52 = WFEnforceClass_1501(v50, v51);

    if (v49)
    {
      v53 = [v49 BOOLValue];
    }

    else
    {
      v53 = 0;
    }

    v5->_autoPeriodsDisabled = v53;
    if (v52)
    {
      v54 = [v52 BOOLValue];
    }

    else
    {
      v54 = 0;
    }

    v5->_textReplacementDisabled = v54;
    v55 = [v4 objectForKey:@"SyntaxHighlightingType"];
    v56 = objc_opt_class();
    v57 = WFEnforceClass_1501(v55, v56);

    v5->_syntaxHighlightingType = [v57 isEqualToString:@"JavaScript"];
    v58 = [v4 objectForKey:@"HintDisplayMode"];
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