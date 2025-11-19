@interface CSMapDataQuality
+ (id)sharedInstance;
- (BOOL)turnByTurnDirectionsEnabled;
- (CSMapDataQuality)initWithGEOCountryConfiguration:(id)a3;
@end

@implementation CSMapDataQuality

+ (id)sharedInstance
{
  if (qword_100458860 != -1)
  {
    sub_1002B5464();
  }

  v3 = qword_100458858;

  return v3;
}

- (CSMapDataQuality)initWithGEOCountryConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSMapDataQuality;
  v6 = [(CSMapDataQuality *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
  }

  return v7;
}

- (BOOL)turnByTurnDirectionsEnabled
{
  config = self->_config;
  if (!config)
  {
    if (qword_100456968 != -1)
    {
      sub_1002B5478();
    }

    v4 = qword_100456970;
    if (os_log_type_enabled(qword_100456970, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error reading country configuration", &v13, 2u);
    }

    config = self->_config;
    if (!config)
    {
      goto LABEL_13;
    }
  }

  v5 = [(GEOCountryConfiguration *)config countryCode];

  if (v5)
  {
    if (qword_100456968 != -1)
    {
      sub_1002B548C();
    }

    v6 = qword_100456970;
    if (os_log_type_enabled(qword_100456970, OS_LOG_TYPE_DEBUG))
    {
      v7 = self->_config;
      v8 = v6;
      v9 = [(GEOCountryConfiguration *)v7 countryCode];
      v13 = 138477827;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Country code %{private}@", &v13, 0xCu);
    }

    v10 = [(GEOCountryConfiguration *)self->_config currentCountrySupportsDirections];
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

  if (qword_100456968 != -1)
  {
    sub_1002B548C();
  }

  v11 = qword_100456970;
  if (os_log_type_enabled(qword_100456970, OS_LOG_TYPE_INFO))
  {
    v13 = 67240192;
    LODWORD(v14) = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Turn by turn directions: %{public}d", &v13, 8u);
  }

  return v10;
}

@end