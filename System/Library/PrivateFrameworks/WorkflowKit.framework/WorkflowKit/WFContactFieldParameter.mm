@interface WFContactFieldParameter
- (BOOL)shouldAlignLabels;
- (NSString)keyboardType;
- (WFContactFieldParameter)initWithDefinition:(id)a3;
@end

@implementation WFContactFieldParameter

- (BOOL)shouldAlignLabels
{
  v2 = [(WFContactFieldParameter *)self textAlignment];
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

- (NSString)keyboardType
{
  v2 = [(WFContactFieldParameter *)self supportedContactProperties];
  if ([v2 count] != 1)
  {
    goto LABEL_6;
  }

  if (([v2 containsObject:@"Email"] & 1) == 0)
  {
    if ([v2 containsObject:@"Phone"])
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

- (WFContactFieldParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = WFContactFieldParameter;
  v5 = [(WFParameter *)&v29 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AllowsTextEntry"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    v9 = v8;
    if (!v8)
    {
      v8 = MEMORY[0x1E695E118];
    }

    v5->_allowsTextEntry = [v8 BOOLValue];

    v10 = [v4 objectForKey:@"TextAlignment"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    textAlignment = v5->_textAlignment;
    v5->_textAlignment = v12;

    v14 = [v4 objectForKey:@"AutocapitalizationType"];
    autocapitalizationType = v5->_autocapitalizationType;
    v5->_autocapitalizationType = v14;

    v16 = [v4 objectForKey:@"DisableAutocorrection"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass_1501(v16, v17);
    v19 = [v18 BOOLValue];
    v20 = MEMORY[0x1E69E1278];
    if (!v19)
    {
      v20 = MEMORY[0x1E69E1270];
    }

    objc_storeStrong(&v5->_autocorrectionType, *v20);

    v21 = [v4 objectForKey:@"HidesLabel"];
    v22 = objc_opt_class();
    v23 = WFEnforceClass_1501(v21, v22);
    v5->_hidesLabel = [v23 BOOLValue];

    v24 = [v4 objectForKey:@"AllowsCustomHandles"];
    v25 = objc_opt_class();
    v26 = WFEnforceClass_1501(v24, v25);
    v5->_allowsCustomHandles = [v26 BOOLValue];

    v27 = v5;
  }

  return v5;
}

@end