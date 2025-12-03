@interface WFStepperParameter
- (WFStepperParameter)initWithDefinition:(id)definition;
- (id)defaultSerializedRepresentation;
- (id)localizedLabel;
- (id)localizedLabelFormatString;
- (id)localizedLabelWithState:(id)state includingPrefix:(BOOL)prefix;
@end

@implementation WFStepperParameter

- (id)localizedLabelWithState:(id)state includingPrefix:(BOOL)prefix
{
  stateCopy = state;
  variable = [stateCopy variable];

  if (variable)
  {
    localizedLabel = [(WFStepperParameter *)self localizedLabel];
    goto LABEL_16;
  }

  number = [stateCopy number];
  v10 = number;
  if (number)
  {
    integerValue = [number integerValue];
  }

  else
  {
    minimumValue = [(WFStepperParameter *)self minimumValue];
    integerValue = [minimumValue integerValue];
  }

  definition = [(WFParameter *)self definition];
  v14 = [definition objectForKey:@"StepperNoun"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localize = v14;
LABEL_10:
    v16 = localize;
    v17 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:localize, integerValue];
    v18 = v17;
    if (prefix)
    {
      v19 = MEMORY[0x1E696AEC0];
      localizedLabelFormatString = [(WFStepperParameter *)self localizedLabelFormatString];
      localizedLabel = [v19 localizedStringWithFormat:localizedLabelFormatString, v18];
    }

    else
    {
      localizedLabel = v17;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localize = [v14 localize];
    goto LABEL_10;
  }

  v16 = 0;
  localizedLabel = 0;
LABEL_15:

LABEL_16:

  return localizedLabel;
}

- (id)localizedLabel
{
  stepperDescription = [(WFStepperParameter *)self stepperDescription];
  v4 = stepperDescription;
  if (stepperDescription)
  {
    localizedLabel = stepperDescription;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFStepperParameter;
    localizedLabel = [(WFParameter *)&v8 localizedLabel];
  }

  v6 = localizedLabel;

  return v6;
}

- (id)defaultSerializedRepresentation
{
  v8.receiver = self;
  v8.super_class = WFStepperParameter;
  defaultSerializedRepresentation = [(WFParameter *)&v8 defaultSerializedRepresentation];
  v4 = defaultSerializedRepresentation;
  if (defaultSerializedRepresentation)
  {
    v5 = defaultSerializedRepresentation;
  }

  else
  {
    minimumValue = [(WFStepperParameter *)self minimumValue];
    v5 = [WFNumberSubstitutableState serializedRepresentationFromNumber:minimumValue];
  }

  return v5;
}

- (id)localizedLabelFormatString
{
  stepperPrefix = [(WFStepperParameter *)self stepperPrefix];

  if (stepperPrefix)
  {
    stepperPrefix2 = [(WFStepperParameter *)self stepperPrefix];
    v5 = [stepperPrefix2 stringByAppendingString:@" %@"];
  }

  else
  {
    v5 = @"%@";
  }

  return v5;
}

- (WFStepperParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v27.receiver = self;
  v27.super_class = WFStepperParameter;
  v5 = [(WFParameter *)&v27 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"MinimumValue"];
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

    v11 = [definitionCopy objectForKey:@"MaximumValue"];
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

    v16 = [definitionCopy objectForKey:@"StepperPrefix"];
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

      localize = [v16 localize];
      stepperPrefix = v5->_stepperPrefix;
      v5->_stepperPrefix = localize;
    }

LABEL_13:
    definition = [(WFParameter *)v5 definition];
    v21 = [definition objectForKey:@"StepperDescription"];

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

      localize2 = [v21 localize];
      stepperDescription = v5->_stepperDescription;
      v5->_stepperDescription = localize2;
    }

    goto LABEL_18;
  }

LABEL_19:

  return v5;
}

@end