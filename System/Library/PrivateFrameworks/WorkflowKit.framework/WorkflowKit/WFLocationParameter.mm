@interface WFLocationParameter
- (WFLocationParameter)initWithDefinition:(id)a3;
- (double)currentLocationAccuracy;
- (id)defaultSerializedRepresentation;
@end

@implementation WFLocationParameter

- (id)defaultSerializedRepresentation
{
  if (self->_defaultToCurrentLocation)
  {
    v2 = [[WFLocationValue alloc] initWithCurrentLocation];
    v3 = [(WFLocationValue *)v2 serializedRepresentation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)currentLocationAccuracy
{
  v2 = [(WFParameter *)self definition];
  v3 = [v2 objectForKey:@"CurrentLocationAccuracy"];
  v4 = objc_opt_class();
  v5 = WFEnforceClass_1501(v3, v4);

  if (v5)
  {
    WFCLLocationAccuracyFromWFLocationAccuracy(v5);
  }

  else
  {
    getkCLLocationAccuracyNearestTenMeters();
  }

  v7 = v6;

  return v7;
}

- (WFLocationParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WFLocationParameter;
  v5 = [(WFParameter *)&v24 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AllowTextOnly"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    v5->_allowsTextOnlyLocations = [v8 BOOLValue];

    v9 = [v4 objectForKey:@"SkipProcessingCurrentLocation"];
    v10 = objc_opt_class();
    v11 = WFEnforceClass_1501(v9, v10);
    v5->_skipsProcessingCurrentLocation = [v11 BOOLValue];

    v12 = [v4 objectForKey:@"DefaultToCurrentLocation"];
    v13 = objc_opt_class();
    v14 = WFEnforceClass_1501(v12, v13);
    v5->_defaultToCurrentLocation = [v14 BOOLValue];

    v15 = [v4 objectForKey:@"AllowCurrentLocation"];
    v16 = objc_opt_class();
    v17 = WFEnforceClass_1501(v15, v16);
    v18 = v17;
    v19 = MEMORY[0x1E695E118];
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    v21 = [v20 BOOLValue];
    v5->_allowsCurrentLocation = v21;
    v22 = v5;
  }

  return v5;
}

@end