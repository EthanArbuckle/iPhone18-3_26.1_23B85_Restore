@interface WFContactFieldParameter
- (BOOL)shouldAlignLabels;
- (NSString)keyboardType;
- (WFContactFieldParameter)initWithDefinition:(id)definition;
@end

@implementation WFContactFieldParameter

- (BOOL)shouldAlignLabels
{
  textAlignment = [(WFContactFieldParameter *)self textAlignment];
  v3 = *MEMORY[0x1E69E12C8];
  v4 = textAlignment;
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

- (NSString)keyboardType
{
  supportedContactProperties = [(WFContactFieldParameter *)self supportedContactProperties];
  if ([supportedContactProperties count] != 1)
  {
    goto LABEL_6;
  }

  if (([supportedContactProperties containsObject:@"Email"] & 1) == 0)
  {
    if ([supportedContactProperties containsObject:@"Phone"])
    {
      v3 = MEMORY[0x1E69E12A0];
      goto LABEL_7;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E1288];
    goto LABEL_7;
  }

  v3 = MEMORY[0x1E69E1290];
LABEL_7:
  v4 = *v3;
  v5 = *v3;

  return v4;
}

- (WFContactFieldParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v29.receiver = self;
  v29.super_class = WFContactFieldParameter;
  v5 = [(WFParameter *)&v29 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"AllowsTextEntry"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    v9 = v8;
    if (!v8)
    {
      v8 = MEMORY[0x1E695E118];
    }

    v5->_allowsTextEntry = [v8 BOOLValue];

    v10 = [definitionCopy objectForKey:@"TextAlignment"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    textAlignment = v5->_textAlignment;
    v5->_textAlignment = v12;

    v14 = [definitionCopy objectForKey:@"AutocapitalizationType"];
    autocapitalizationType = v5->_autocapitalizationType;
    v5->_autocapitalizationType = v14;

    v16 = [definitionCopy objectForKey:@"DisableAutocorrection"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass_1501(v16, v17);
    bOOLValue = [v18 BOOLValue];
    v20 = MEMORY[0x1E69E1278];
    if (!bOOLValue)
    {
      v20 = MEMORY[0x1E69E1270];
    }

    objc_storeStrong(&v5->_autocorrectionType, *v20);

    v21 = [definitionCopy objectForKey:@"HidesLabel"];
    v22 = objc_opt_class();
    v23 = WFEnforceClass_1501(v21, v22);
    v5->_hidesLabel = [v23 BOOLValue];

    v24 = [definitionCopy objectForKey:@"AllowsCustomHandles"];
    v25 = objc_opt_class();
    v26 = WFEnforceClass_1501(v24, v25);
    v5->_allowsCustomHandles = [v26 BOOLValue];

    v27 = v5;
  }

  return v5;
}

@end