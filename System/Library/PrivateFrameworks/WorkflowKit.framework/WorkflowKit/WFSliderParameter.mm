@interface WFSliderParameter
- (WFImage)maximumIcon;
- (WFImage)minimumIcon;
- (WFSliderParameter)initWithDefinition:(id)definition;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelWithState:(id)state;
- (void)setMaximumValue:(id)value;
- (void)setMinimumValue:(id)value;
@end

@implementation WFSliderParameter

- (id)localizedLabelWithState:(id)state
{
  stateCopy = state;
  variable = [stateCopy variable];

  if (variable)
  {
    localizedLabel = [(WFParameter *)self localizedLabel];
  }

  else
  {
    if (stateCopy)
    {
      [stateCopy number];
    }

    else
    {
      [(WFSliderParameter *)self minimumValue];
    }
    v7 = ;
    [v7 doubleValue];
    v9 = v8;

    minimumValue = [(WFSliderParameter *)self minimumValue];
    [minimumValue doubleValue];
    v12 = v11;

    maximumValue = [(WFSliderParameter *)self maximumValue];
    [maximumValue doubleValue];
    v15 = v14;

    v16 = MEMORY[0x1E696ADA0];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:(v9 - v12) / (v15 - v12)];
    localizedLabel = [v16 localizedStringFromNumber:v17 numberStyle:3];
  }

  return localizedLabel;
}

- (WFImage)maximumIcon
{
  definition = [(WFParameter *)self definition];
  v3 = [definition objectForKey:@"MaximumIconName"];
  v4 = objc_opt_class();
  v5 = WFEnforceClass_1501(v3, v4);

  if (v5)
  {
    v6 = [MEMORY[0x1E69E0B58] workflowKitImageNamed:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFImage)minimumIcon
{
  definition = [(WFParameter *)self definition];
  v3 = [definition objectForKey:@"MinimumIconName"];
  v4 = objc_opt_class();
  v5 = WFEnforceClass_1501(v3, v4);

  if (v5)
  {
    v6 = [MEMORY[0x1E69E0B58] workflowKitImageNamed:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setMaximumValue:(id)value
{
  valueCopy = &unk_1F4A9AD80;
  if (value)
  {
    valueCopy = value;
  }

  v5 = valueCopy;
  maximumValue = [(WFSliderParameter *)self maximumValue];
  v7 = [maximumValue isEqualToNumber:v5];

  maximumValue = self->_maximumValue;
  self->_maximumValue = v5;

  if ((v7 & 1) == 0)
  {

    [(WFParameter *)self attributesDidChange];
  }
}

- (void)setMinimumValue:(id)value
{
  valueCopy = &unk_1F4A9AD68;
  if (value)
  {
    valueCopy = value;
  }

  v5 = valueCopy;
  minimumValue = [(WFSliderParameter *)self minimumValue];
  v7 = [minimumValue isEqualToNumber:v5];

  minimumValue = self->_minimumValue;
  self->_minimumValue = v5;

  if ((v7 & 1) == 0)
  {
    [(WFParameter *)self attributesDidChange];

    [(WFParameter *)self defaultSerializedRepresentationDidChange];
  }
}

- (id)defaultSerializedRepresentation
{
  v8.receiver = self;
  v8.super_class = WFSliderParameter;
  defaultSerializedRepresentation = [(WFParameter *)&v8 defaultSerializedRepresentation];
  v4 = defaultSerializedRepresentation;
  if (defaultSerializedRepresentation)
  {
    v5 = defaultSerializedRepresentation;
  }

  else
  {
    minimumValue = [(WFSliderParameter *)self minimumValue];
    v5 = [WFNumberSubstitutableState serializedRepresentationFromNumber:minimumValue];
  }

  return v5;
}

- (WFSliderParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v18.receiver = self;
  v18.super_class = WFSliderParameter;
  v5 = [(WFParameter *)&v18 initWithDefinition:definitionCopy];
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
      v10 = &unk_1F4A9AD68;
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
      v15 = &unk_1F4A9AD80;
    }

    objc_storeStrong(&v5->_maximumValue, v15);

    v16 = v5;
  }

  return v5;
}

@end