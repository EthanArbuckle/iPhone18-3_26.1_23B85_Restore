@interface WFStepperParameter
- (WFStepperParameter)initWithDefinition:(id)a3;
- (id)defaultSerializedRepresentation;
- (id)localizedLabel;
- (id)localizedLabelFormatString;
- (id)localizedLabelWithState:(id)a3 includingPrefix:(BOOL)a4;
@end

@implementation WFStepperParameter

- (id)localizedLabelWithState:(id)a3 includingPrefix:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 variable];

  if (v7)
  {
    v8 = [(WFStepperParameter *)self localizedLabel];
    goto LABEL_16;
  }

  v9 = [v6 number];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
  }

  else
  {
    v12 = [(WFStepperParameter *)self minimumValue];
    v11 = [v12 integerValue];
  }

  v13 = [(WFParameter *)self definition];
  v14 = [v13 objectForKey:@"StepperNoun"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
LABEL_10:
    v16 = v15;
    v17 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v15, v11];
    v18 = v17;
    if (a4)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = [(WFStepperParameter *)self localizedLabelFormatString];
      v8 = [v19 localizedStringWithFormat:v20, v18];
    }

    else
    {
      v8 = v17;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 localize];
    goto LABEL_10;
  }

  v16 = 0;
  v8 = 0;
LABEL_15:

LABEL_16:

  return v8;
}

- (id)localizedLabel
{
  v3 = [(WFStepperParameter *)self stepperDescription];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFStepperParameter;
    v5 = [(WFParameter *)&v8 localizedLabel];
  }

  v6 = v5;

  return v6;
}

- (id)defaultSerializedRepresentation
{
  v8.receiver = self;
  v8.super_class = WFStepperParameter;
  v3 = [(WFParameter *)&v8 defaultSerializedRepresentation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(WFStepperParameter *)self minimumValue];
    v5 = [WFNumberSubstitutableState serializedRepresentationFromNumber:v6];
  }

  return v5;
}

- (id)localizedLabelFormatString
{
  v3 = [(WFStepperParameter *)self stepperPrefix];

  if (v3)
  {
    v4 = [(WFStepperParameter *)self stepperPrefix];
    v5 = [v4 stringByAppendingString:@" %@"];
  }

  else
  {
    v5 = @"%@";
  }

  return v5;
}

- (WFStepperParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = WFStepperParameter;
  v5 = [(WFParameter *)&v27 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"MinimumValue"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &unk_1F4A9A8D0;
    }

    objc_storeStrong(&v5->_minimumValue, v10);

    v11 = [v4 objectForKey:@"MaximumValue"];
    v12 = objc_opt_class();
    v13 = WFEnforceClass_1501(v11, v12);
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_1F4A9B8D8;
    }

    objc_storeStrong(&v5->_maximumValue, v15);

    v16 = [v4 objectForKey:@"StepperPrefix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      stepperPrefix = v5->_stepperPrefix;
      v5->_stepperPrefix = v17;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v19 = [v16 localize];
      stepperPrefix = v5->_stepperPrefix;
      v5->_stepperPrefix = v19;
    }

LABEL_13:
    v20 = [(WFParameter *)v5 definition];
    v21 = [v20 objectForKey:@"StepperDescription"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
      stepperDescription = v5->_stepperDescription;
      v5->_stepperDescription = v22;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_18:
        v25 = v5;

        goto LABEL_19;
      }

      v24 = [v21 localize];
      stepperDescription = v5->_stepperDescription;
      v5->_stepperDescription = v24;
    }

    goto LABEL_18;
  }

LABEL_19:

  return v5;
}

@end