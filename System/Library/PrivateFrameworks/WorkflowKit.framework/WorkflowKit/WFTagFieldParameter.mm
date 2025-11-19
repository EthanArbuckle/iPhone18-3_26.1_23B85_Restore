@interface WFTagFieldParameter
- (BOOL)shouldAlignLabels;
- (WFTagFieldParameter)initWithDefinition:(id)a3;
@end

@implementation WFTagFieldParameter

- (BOOL)shouldAlignLabels
{
  v2 = [(WFTagFieldParameter *)self textAlignment];
  v3 = *MEMORY[0x1E69E12C8];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqualToString:v5];
    }
  }

  return v7;
}

- (WFTagFieldParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = WFTagFieldParameter;
  v5 = [(WFParameter *)&v29 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"KeyboardType"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    keyboardType = v5->_keyboardType;
    v5->_keyboardType = v8;

    v10 = [v4 objectForKey:@"TextAlignment"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    textAlignment = v5->_textAlignment;
    v5->_textAlignment = v12;

    v14 = [v4 objectForKey:@"AutocapitalizationType"];
    v15 = objc_opt_class();
    v16 = WFEnforceClass_1501(v14, v15);
    autocapitalizationType = v5->_autocapitalizationType;
    v5->_autocapitalizationType = v16;

    v18 = [v4 objectForKey:@"DisableAutocorrection"];
    v19 = objc_opt_class();
    v20 = WFEnforceClass_1501(v18, v19);
    v21 = [v20 BOOLValue];
    v22 = MEMORY[0x1E69E1278];
    if (!v21)
    {
      v22 = MEMORY[0x1E69E1270];
    }

    objc_storeStrong(&v5->_autocorrectionType, *v22);

    v23 = [v4 objectForKey:@"SuggestedTags"];
    v24 = objc_opt_class();
    v25 = WFEnforceClass_1501(v23, v24);
    suggestedTags = v5->_suggestedTags;
    v5->_suggestedTags = v25;

    v27 = v5;
  }

  return v5;
}

@end