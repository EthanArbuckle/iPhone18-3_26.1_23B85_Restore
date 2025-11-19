@interface MOWeather
- (BOOL)isEqual:(id)a3;
- (MOWeather)initWithCoder:(id)a3;
- (MOWeather)initWithStartDate:(id)a3 endDate:(id)a4 temperature:(id)a5 weatherSummary:(id)a6 weatherSymbolName:(id)a7 windSpeed:(id)a8;
- (MOWeather)initWithWeatherIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 weatherSummary:(id)a6 weatherSymbolName:(id)a7 temperature:(id)a8 windSpeed:(id)a9;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOWeather

- (MOWeather)initWithStartDate:(id)a3 endDate:(id)a4 temperature:(id)a5 weatherSummary:(id)a6 weatherSymbolName:(id)a7 windSpeed:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[NSUUID UUID];
  v21 = [(MOWeather *)self initWithWeatherIdentifier:v20 startDate:v19 endDate:v18 weatherSummary:v16 weatherSymbolName:v15 temperature:v17 windSpeed:v14];

  return v21;
}

- (MOWeather)initWithWeatherIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 weatherSummary:(id)a6 weatherSymbolName:(id)a7 temperature:(id)a8 windSpeed:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = MOWeather;
  v18 = [(MOWeather *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_weatherIdentifier, a3);
    objc_storeStrong(&v19->_startDate, a4);
    objc_storeStrong(&v19->_endDate, a5);
    objc_storeStrong(&v19->_weatherSummary, a6);
    objc_storeStrong(&v19->_weatherSymbolName, a7);
    objc_storeStrong(&v19->_temperature, a8);
    objc_storeStrong(&v19->_windSpeed, a9);
    v19->_sourceEventAccessType = 5;
  }

  return v19;
}

- (id)description
{
  v3 = [(MOWeather *)self weatherIdentifier];
  v4 = [(MOWeather *)self startDate];
  v5 = [(MOWeather *)self endDate];
  v6 = [(MOWeather *)self weatherSummary];
  v7 = [(MOWeather *)self weatherSymbolName];
  v8 = [(MOWeather *)self temperature];
  v9 = [(MOWeather *)self windSpeed];
  v10 = [NSString stringWithFormat:@"<MOWeather identifier, %@, startDate, %@, endDate, %@, weatherSummary, %@, weatherSymbolName, %@, temperature, %@, windSpeed %@>", v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  weatherIdentifier = self->_weatherIdentifier;
  v5 = a3;
  [v5 encodeObject:weatherIdentifier forKey:@"weatherIdentifier"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_weatherSummary forKey:@"weatherSummary"];
  [v5 encodeObject:self->_weatherSymbolName forKey:@"weatherSymbolName"];
  [v5 encodeObject:self->_temperature forKey:@"temperature"];
  [v5 encodeObject:self->_windSpeed forKey:@"windSpeed"];
  [v5 encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [v5 encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (MOWeather)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weatherIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weatherSummary"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weatherSymbolName"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"temperature"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"windSpeed"];
  v12 = [(MOWeather *)self initWithWeatherIdentifier:v5 startDate:v6 endDate:v7 weatherSummary:v8 weatherSymbolName:v9 temperature:v10 windSpeed:v11];
  if (v12)
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOWeather *)v12 setSourceEventIdentifier:v13];

    -[MOWeather setSourceEventAccessType:](v12, "setSourceEventAccessType:", [v4 decodeInt64ForKey:@"sourceEventAccessType"]);
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(MOWeather *)self weatherIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOWeather *)self weatherIdentifier];
        if (v8 || ([(MOWeather *)v7 weatherIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOWeather *)self weatherIdentifier];
          v10 = [(MOWeather *)v7 weatherIdentifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

@end