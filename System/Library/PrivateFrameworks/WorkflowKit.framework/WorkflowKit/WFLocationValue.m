@interface WFLocationValue
+ (WFLocationValue)currentLocation;
- (NSString)defaultSearchText;
- (NSString)displayString;
- (WFLocationValue)initWithCurrentLocation;
- (WFLocationValue)initWithLegacyVariableString:(id)a3;
- (WFLocationValue)initWithLocationName:(id)a3;
- (WFLocationValue)initWithLocationName:(id)a3 placemark:(id)a4;
- (WFLocationValue)initWithPlacemark:(id)a3;
- (WFLocationValue)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFPropertyListObject)serializedRepresentation;
@end

@implementation WFLocationValue

- (WFPropertyListObject)serializedRepresentation
{
  v3 = objc_opt_new();
  if ([(WFLocationValue *)self isCurrentLocation])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"isCurrentLocation"];
  }

  v4 = [(WFLocationValue *)self locationName];
  [v3 setValue:v4 forKey:@"locationName"];

  v5 = [(WFLocationValue *)self placemark];
  v6 = WFSerializedPlacemarkFromCLPlacemark();
  [v3 setValue:v6 forKey:@"placemark"];

  v7 = [(WFLocationValue *)self legacyVariableString];
  v8 = [v7 serializedRepresentation];
  [v3 setValue:v8 forKey:@"legacyVariableString"];

  return v3;
}

- (WFLocationValue)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(v10, v11);

  if (!v12)
  {
    v17 = 0;
    goto LABEL_11;
  }

  v13 = [v12 objectForKey:@"isCurrentLocation"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_1501(v13, v14);
  v16 = [v15 BOOLValue];

  if (!v16)
  {
    v18 = [v12 objectForKey:@"placemark"];
    v19 = objc_opt_class();
    v20 = WFEnforceClass_1501(v18, v19);

    if (v20)
    {
      v21 = WFCLPlacemarkFromSerializedPlacemark();
      v22 = [(WFLocationValue *)self initWithPlacemark:v21];
    }

    else
    {
      v23 = [v12 objectForKey:@"locationName"];
      v24 = objc_opt_class();
      v21 = WFEnforceClass_1501(v23, v24);

      if (!v21)
      {
        v26 = [v12 objectForKey:@"legacyVariableString"];
        v27 = objc_opt_class();
        v28 = WFEnforceClass_1501(v26, v27);

        if (v28)
        {
          v29 = [[WFVariableString alloc] initWithSerializedRepresentation:v28 variableProvider:v8 parameter:v9];
          self = [(WFLocationValue *)self initWithLegacyVariableString:v29];

          v17 = self;
        }

        else
        {
          v17 = 0;
        }

        v21 = 0;
        goto LABEL_10;
      }

      v22 = [(WFLocationValue *)self initWithLocationName:v21];
    }

    self = v22;
    v17 = self;
LABEL_10:

    goto LABEL_11;
  }

  self = [(WFLocationValue *)self initWithCurrentLocation];
  v17 = self;
LABEL_11:

  return v17;
}

- (WFLocationValue)initWithLegacyVariableString:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFLocationValue;
  v6 = [(WFLocationValue *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_legacyVariableString, a3);
    v8 = v7;
  }

  return v7;
}

- (NSString)defaultSearchText
{
  v3 = [(WFLocationValue *)self locationName];

  if (v3)
  {
    v4 = [(WFLocationValue *)self locationName];
    goto LABEL_11;
  }

  v5 = [(WFLocationValue *)self placemark];

  if (v5)
  {
    v6 = [(WFLocationValue *)self placemark];
    v7 = [v6 name];
    v8 = v7;
    if (v7)
    {
      v4 = v7;
    }

    else
    {
      v10 = [(WFLocationValue *)self placemark];
      v11 = [v10 postalAddress];
      v4 = [v11 street];
    }

    goto LABEL_10;
  }

  v9 = [(WFLocationValue *)self legacyVariableString];

  if (v9)
  {
    v6 = [(WFLocationValue *)self legacyVariableString];
    v4 = [v6 stringByRemovingVariables];
LABEL_10:

    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

- (NSString)displayString
{
  v3 = [(WFLocationValue *)self locationName];

  if (v3)
  {
    v4 = [(WFLocationValue *)self locationName];
LABEL_3:
    v5 = v4;
    goto LABEL_12;
  }

  v6 = [(WFLocationValue *)self placemark];

  if (v6)
  {
    v7 = [(WFLocationValue *)self placemark];
    v8 = [v7 name];
    v9 = v8;
    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v10 = [(WFLocationValue *)self placemark];
      v11 = [v10 postalAddress];
      v5 = [v11 street];
    }

    goto LABEL_11;
  }

  if ([(WFLocationValue *)self isCurrentLocation])
  {
    v4 = WFLocalizedString(@"Current Location");
    goto LABEL_3;
  }

  v13 = [(WFLocationValue *)self legacyVariableString];

  if (v13)
  {
    v7 = [(WFLocationValue *)self legacyVariableString];
    v5 = [v7 stringByReplacingVariablesWithNames];
LABEL_11:

    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (WFLocationValue)initWithCurrentLocation
{
  v6.receiver = self;
  v6.super_class = WFLocationValue;
  v2 = [(WFLocationValue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentLocation = 1;
    v4 = v2;
  }

  return v3;
}

- (WFLocationValue)initWithLocationName:(id)a3 placemark:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WFLocationValue;
  v8 = [(WFLocationValue *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    locationName = v8->_locationName;
    v8->_locationName = v9;

    objc_storeStrong(&v8->_placemark, a4);
    v11 = v8;
  }

  return v8;
}

- (WFLocationValue)initWithPlacemark:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFLocationValue;
  v6 = [(WFLocationValue *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placemark, a3);
    v8 = v7;
  }

  return v7;
}

- (WFLocationValue)initWithLocationName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFLocationValue;
  v5 = [(WFLocationValue *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    locationName = v5->_locationName;
    v5->_locationName = v6;

    v8 = v5;
  }

  return v5;
}

+ (WFLocationValue)currentLocation
{
  if (currentLocation_onceToken != -1)
  {
    dispatch_once(&currentLocation_onceToken, &__block_literal_global_37506);
  }

  v3 = currentLocation_currentLocation;

  return v3;
}

void __34__WFLocationValue_currentLocation__block_invoke()
{
  v0 = [[WFLocationValue alloc] initWithCurrentLocation];
  v1 = currentLocation_currentLocation;
  currentLocation_currentLocation = v0;
}

@end