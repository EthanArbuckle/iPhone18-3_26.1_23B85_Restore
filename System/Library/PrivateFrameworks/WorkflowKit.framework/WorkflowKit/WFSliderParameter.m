@interface WFSliderParameter
- (WFImage)maximumIcon;
- (WFImage)minimumIcon;
- (WFSliderParameter)initWithDefinition:(id)a3;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelWithState:(id)a3;
- (void)setMaximumValue:(id)a3;
- (void)setMinimumValue:(id)a3;
@end

@implementation WFSliderParameter

- (id)localizedLabelWithState:(id)a3
{
  v4 = a3;
  v5 = [v4 variable];

  if (v5)
  {
    v6 = [(WFParameter *)self localizedLabel];
  }

  else
  {
    if (v4)
    {
      [v4 number];
    }

    else
    {
      [(WFSliderParameter *)self minimumValue];
    }
    v7 = ;
    [v7 doubleValue];
    v9 = v8;

    v10 = [(WFSliderParameter *)self minimumValue];
    [v10 doubleValue];
    v12 = v11;

    v13 = [(WFSliderParameter *)self maximumValue];
    [v13 doubleValue];
    v15 = v14;

    v16 = MEMORY[0x1E696ADA0];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:(v9 - v12) / (v15 - v12)];
    v6 = [v16 localizedStringFromNumber:v17 numberStyle:3];
  }

  return v6;
}

- (WFImage)maximumIcon
{
  v2 = [(WFParameter *)self definition];
  v3 = [v2 objectForKey:@"MaximumIconName"];
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
  v2 = [(WFParameter *)self definition];
  v3 = [v2 objectForKey:@"MinimumIconName"];
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

- (void)setMaximumValue:(id)a3
{
  v4 = &unk_1F4A9AD80;
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [(WFSliderParameter *)self maximumValue];
  v7 = [v6 isEqualToNumber:v5];

  maximumValue = self->_maximumValue;
  self->_maximumValue = v5;

  if ((v7 & 1) == 0)
  {

    [(WFParameter *)self attributesDidChange];
  }
}

- (void)setMinimumValue:(id)a3
{
  v4 = &unk_1F4A9AD68;
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [(WFSliderParameter *)self minimumValue];
  v7 = [v6 isEqualToNumber:v5];

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
  v3 = [(WFParameter *)&v8 defaultSerializedRepresentation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(WFSliderParameter *)self minimumValue];
    v5 = [WFNumberSubstitutableState serializedRepresentationFromNumber:v6];
  }

  return v5;
}

- (WFSliderParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFSliderParameter;
  v5 = [(WFParameter *)&v18 initWithDefinition:v4];
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
      v10 = &unk_1F4A9AD68;
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
      v15 = &unk_1F4A9AD80;
    }

    objc_storeStrong(&v5->_maximumValue, v15);

    v16 = v5;
  }

  return v5;
}

@end