@interface WFLocationValue
+ (WFLocationValue)currentLocation;
- (NSString)defaultSearchText;
- (NSString)displayString;
- (WFLocationValue)initWithCurrentLocation;
- (WFLocationValue)initWithLegacyVariableString:(id)string;
- (WFLocationValue)initWithLocationName:(id)name;
- (WFLocationValue)initWithLocationName:(id)name placemark:(id)placemark;
- (WFLocationValue)initWithPlacemark:(id)placemark;
- (WFLocationValue)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
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

  locationName = [(WFLocationValue *)self locationName];
  [v3 setValue:locationName forKey:@"locationName"];

  placemark = [(WFLocationValue *)self placemark];
  v6 = WFSerializedPlacemarkFromCLPlacemark();
  [v3 setValue:v6 forKey:@"placemark"];

  legacyVariableString = [(WFLocationValue *)self legacyVariableString];
  serializedRepresentation = [legacyVariableString serializedRepresentation];
  [v3 setValue:serializedRepresentation forKey:@"legacyVariableString"];

  return v3;
}

- (WFLocationValue)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  providerCopy = provider;
  parameterCopy = parameter;
  representationCopy = representation;
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(representationCopy, v11);

  if (!v12)
  {
    selfCopy3 = 0;
    goto LABEL_11;
  }

  v13 = [v12 objectForKey:@"isCurrentLocation"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_1501(v13, v14);
  bOOLValue = [v15 BOOLValue];

  if (!bOOLValue)
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
          v29 = [[WFVariableString alloc] initWithSerializedRepresentation:v28 variableProvider:providerCopy parameter:parameterCopy];
          self = [(WFLocationValue *)self initWithLegacyVariableString:v29];

          selfCopy3 = self;
        }

        else
        {
          selfCopy3 = 0;
        }

        v21 = 0;
        goto LABEL_10;
      }

      v22 = [(WFLocationValue *)self initWithLocationName:v21];
    }

    self = v22;
    selfCopy3 = self;
LABEL_10:

    goto LABEL_11;
  }

  self = [(WFLocationValue *)self initWithCurrentLocation];
  selfCopy3 = self;
LABEL_11:

  return selfCopy3;
}

- (WFLocationValue)initWithLegacyVariableString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = WFLocationValue;
  v6 = [(WFLocationValue *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_legacyVariableString, string);
    v8 = v7;
  }

  return v7;
}

- (NSString)defaultSearchText
{
  locationName = [(WFLocationValue *)self locationName];

  if (locationName)
  {
    locationName2 = [(WFLocationValue *)self locationName];
    goto LABEL_11;
  }

  placemark = [(WFLocationValue *)self placemark];

  if (placemark)
  {
    placemark2 = [(WFLocationValue *)self placemark];
    name = [placemark2 name];
    v8 = name;
    if (name)
    {
      locationName2 = name;
    }

    else
    {
      placemark3 = [(WFLocationValue *)self placemark];
      postalAddress = [placemark3 postalAddress];
      locationName2 = [postalAddress street];
    }

    goto LABEL_10;
  }

  legacyVariableString = [(WFLocationValue *)self legacyVariableString];

  if (legacyVariableString)
  {
    placemark2 = [(WFLocationValue *)self legacyVariableString];
    locationName2 = [placemark2 stringByRemovingVariables];
LABEL_10:

    goto LABEL_11;
  }

  locationName2 = 0;
LABEL_11:

  return locationName2;
}

- (NSString)displayString
{
  locationName = [(WFLocationValue *)self locationName];

  if (locationName)
  {
    locationName2 = [(WFLocationValue *)self locationName];
LABEL_3:
    street = locationName2;
    goto LABEL_12;
  }

  placemark = [(WFLocationValue *)self placemark];

  if (placemark)
  {
    placemark2 = [(WFLocationValue *)self placemark];
    name = [placemark2 name];
    v9 = name;
    if (name)
    {
      street = name;
    }

    else
    {
      placemark3 = [(WFLocationValue *)self placemark];
      postalAddress = [placemark3 postalAddress];
      street = [postalAddress street];
    }

    goto LABEL_11;
  }

  if ([(WFLocationValue *)self isCurrentLocation])
  {
    locationName2 = WFLocalizedString(@"Current Location");
    goto LABEL_3;
  }

  legacyVariableString = [(WFLocationValue *)self legacyVariableString];

  if (legacyVariableString)
  {
    placemark2 = [(WFLocationValue *)self legacyVariableString];
    street = [placemark2 stringByReplacingVariablesWithNames];
LABEL_11:

    goto LABEL_12;
  }

  street = 0;
LABEL_12:

  return street;
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

- (WFLocationValue)initWithLocationName:(id)name placemark:(id)placemark
{
  nameCopy = name;
  placemarkCopy = placemark;
  v13.receiver = self;
  v13.super_class = WFLocationValue;
  v8 = [(WFLocationValue *)&v13 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    locationName = v8->_locationName;
    v8->_locationName = v9;

    objc_storeStrong(&v8->_placemark, placemark);
    v11 = v8;
  }

  return v8;
}

- (WFLocationValue)initWithPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  v10.receiver = self;
  v10.super_class = WFLocationValue;
  v6 = [(WFLocationValue *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placemark, placemark);
    v8 = v7;
  }

  return v7;
}

- (WFLocationValue)initWithLocationName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = WFLocationValue;
  v5 = [(WFLocationValue *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
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