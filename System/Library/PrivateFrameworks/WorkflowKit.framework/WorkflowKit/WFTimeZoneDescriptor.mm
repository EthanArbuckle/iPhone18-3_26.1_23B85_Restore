@interface WFTimeZoneDescriptor
- (BOOL)isEqual:(id)equal;
- (WFTimeZoneDescriptor)initWithALCity:(id)city;
- (WFTimeZoneDescriptor)initWithTimeZone:(id)zone localizedCityName:(id)name alCityIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WFTimeZoneDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  timeZone = [(WFTimeZoneDescriptor *)self timeZone];
  v6 = [timeZone copy];
  localizedCityName = [(WFTimeZoneDescriptor *)self localizedCityName];
  alCityIdentifier = [(WFTimeZoneDescriptor *)self alCityIdentifier];
  v9 = [v4 initWithTimeZone:v6 localizedCityName:localizedCityName alCityIdentifier:alCityIdentifier];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      timeZone = [(WFTimeZoneDescriptor *)self timeZone];
      name = [timeZone name];
      timeZone2 = [(WFTimeZoneDescriptor *)equalCopy timeZone];
      name2 = [timeZone2 name];
      v9 = name;
      v10 = name2;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        v13 = v10;
        v14 = v9;
        if (!v9 || !v10)
        {
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v12 = [v9 isEqualToString:v10];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      localizedCityName = [(WFTimeZoneDescriptor *)self localizedCityName];
      localizedCityName2 = [(WFTimeZoneDescriptor *)equalCopy localizedCityName];
      v14 = localizedCityName;
      v17 = localizedCityName2;
      v13 = v17;
      if (v14 == v17)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = 0;
        if (v14 && v17)
        {
          LOBYTE(v12) = [v14 isEqualToString:v17];
        }
      }

      goto LABEL_17;
    }

    LOBYTE(v12) = 0;
  }

LABEL_19:

  return v12;
}

- (WFTimeZoneDescriptor)initWithALCity:(id)city
{
  v4 = MEMORY[0x1E695DFE8];
  cityCopy = city;
  timeZone = [cityCopy timeZone];
  v7 = [v4 timeZoneWithName:timeZone];

  v8 = [cityCopy displayNameIncludingCountry:1];
  v9 = MEMORY[0x1E696AD98];
  identifier = [cityCopy identifier];

  v11 = [v9 numberWithInt:identifier];
  v12 = [(WFTimeZoneDescriptor *)self initWithTimeZone:v7 localizedCityName:v8 alCityIdentifier:v11];

  return v12;
}

- (WFTimeZoneDescriptor)initWithTimeZone:(id)zone localizedCityName:(id)name alCityIdentifier:(id)identifier
{
  zoneCopy = zone;
  nameCopy = name;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = WFTimeZoneDescriptor;
  v12 = [(MTLModel *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timeZone, zone);
    v14 = [nameCopy copy];
    localizedCityName = v13->_localizedCityName;
    v13->_localizedCityName = v14;

    v16 = [identifierCopy copy];
    alCityIdentifier = v13->_alCityIdentifier;
    v13->_alCityIdentifier = v16;

    v18 = v13;
  }

  return v13;
}

@end