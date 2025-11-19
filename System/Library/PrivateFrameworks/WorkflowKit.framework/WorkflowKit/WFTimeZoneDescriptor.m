@interface WFTimeZoneDescriptor
- (BOOL)isEqual:(id)a3;
- (WFTimeZoneDescriptor)initWithALCity:(id)a3;
- (WFTimeZoneDescriptor)initWithTimeZone:(id)a3 localizedCityName:(id)a4 alCityIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WFTimeZoneDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(WFTimeZoneDescriptor *)self timeZone];
  v6 = [v5 copy];
  v7 = [(WFTimeZoneDescriptor *)self localizedCityName];
  v8 = [(WFTimeZoneDescriptor *)self alCityIdentifier];
  v9 = [v4 initWithTimeZone:v6 localizedCityName:v7 alCityIdentifier:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFTimeZoneDescriptor *)self timeZone];
      v6 = [v5 name];
      v7 = [(WFTimeZoneDescriptor *)v4 timeZone];
      v8 = [v7 name];
      v9 = v6;
      v10 = v8;
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

      v15 = [(WFTimeZoneDescriptor *)self localizedCityName];
      v16 = [(WFTimeZoneDescriptor *)v4 localizedCityName];
      v14 = v15;
      v17 = v16;
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

- (WFTimeZoneDescriptor)initWithALCity:(id)a3
{
  v4 = MEMORY[0x1E695DFE8];
  v5 = a3;
  v6 = [v5 timeZone];
  v7 = [v4 timeZoneWithName:v6];

  v8 = [v5 displayNameIncludingCountry:1];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v5 identifier];

  v11 = [v9 numberWithInt:v10];
  v12 = [(WFTimeZoneDescriptor *)self initWithTimeZone:v7 localizedCityName:v8 alCityIdentifier:v11];

  return v12;
}

- (WFTimeZoneDescriptor)initWithTimeZone:(id)a3 localizedCityName:(id)a4 alCityIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = WFTimeZoneDescriptor;
  v12 = [(MTLModel *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timeZone, a3);
    v14 = [v10 copy];
    localizedCityName = v13->_localizedCityName;
    v13->_localizedCityName = v14;

    v16 = [v11 copy];
    alCityIdentifier = v13->_alCityIdentifier;
    v13->_alCityIdentifier = v16;

    v18 = v13;
  }

  return v13;
}

@end