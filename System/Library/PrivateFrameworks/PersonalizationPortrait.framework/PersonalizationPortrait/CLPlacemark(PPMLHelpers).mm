@interface CLPlacemark(PPMLHelpers)
- (id)pp_featureNames;
- (id)pp_featureValueForName:()PPMLHelpers;
- (void)pp_addressSpecificity;
@end

@implementation CLPlacemark(PPMLHelpers)

- (id)pp_featureValueForName:()PPMLHelpers
{
  v4 = a3;
  if ([v4 isEqualToString:@"name"])
  {
    v5 = MEMORY[0x1E695FE60];
    name = [self name];
    timeZone = name;
    if (name)
    {
      v8 = name;
    }

    else
    {
      v8 = &stru_1F1B327D8;
    }

    v9 = v5;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"inlandWater"])
  {
    v10 = MEMORY[0x1E695FE60];
    inlandWater = [self inlandWater];
LABEL_8:
    timeZone = inlandWater;
    v9 = v10;
    v8 = timeZone;
LABEL_9:
    v12 = [v9 featureValueWithString:v8];
LABEL_10:

    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"areasOfInterest"])
  {
    v14 = MEMORY[0x1E695FE60];
    v15 = MEMORY[0x1E695FF10];
    areasOfInterest = [self areasOfInterest];
    v17 = areasOfInterest;
    if (areasOfInterest)
    {
      v18 = areasOfInterest;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v19 = [v15 sequenceWithStringArray:v18];
    v12 = [v14 featureValueWithSequence:v19];

    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"timezone"])
  {
    v20 = MEMORY[0x1E695FE60];
    timeZone = [self timeZone];
    abbreviation = [(__CFString *)timeZone abbreviation];
LABEL_23:
    v22 = abbreviation;
    v12 = [v20 featureValueWithString:abbreviation];

    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"region"])
  {
    v20 = MEMORY[0x1E695FE60];
    timeZone = [self region];
    abbreviation = [(__CFString *)timeZone identifier];
    goto LABEL_23;
  }

  if ([v4 isEqualToString:@"subAdministrativeArea"])
  {
    v10 = MEMORY[0x1E695FE60];
    inlandWater = [self subAdministrativeArea];
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"administrativeArea"])
  {
    v10 = MEMORY[0x1E695FE60];
    inlandWater = [self administrativeArea];
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"thoroughfare"])
  {
    v10 = MEMORY[0x1E695FE60];
    inlandWater = [self thoroughfare];
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"countryCode"])
  {
    v10 = MEMORY[0x1E695FE60];
    inlandWater = [self ISOcountryCode];
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"specificity"])
  {
    v23 = MEMORY[0x1E695FE60];
    [self pp_addressSpecificity];
    v12 = [v23 featureValueWithDouble:?];
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (id)pp_featureNames
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"name", @"inlandWater", @"areasOfInterest", @"timezone", @"region", @"subAdministrativeArea", @"administrativeArea", @"countryCode", @"thoroughfare", @"specificity", 0}];
  objc_autoreleasePoolPop(v0);

  return v1;
}

- (void)pp_addressSpecificity
{
  [self name];

  [self thoroughfare];
  [self subThoroughfare];

  [self locality];
  [self subLocality];

  [self administrativeArea];
  [self subAdministrativeArea];

  [self postalCode];
  [self ISOcountryCode];
}

@end