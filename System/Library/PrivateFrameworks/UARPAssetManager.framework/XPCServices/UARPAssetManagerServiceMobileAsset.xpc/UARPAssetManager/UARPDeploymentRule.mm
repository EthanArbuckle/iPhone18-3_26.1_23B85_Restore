@interface UARPDeploymentRule
- (BOOL)isDeploymentAllowed:(id *)a3;
- (BOOL)isDeploymentAllowedPerCountryList;
- (BOOL)isDeploymentAllowedPerDeploymentLimit;
- (BOOL)isDeploymentAllowedPerGoLiveDate;
- (BOOL)isDeploymentAllowedPerRampPeriod;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateDeploymentLimits:(id *)a3;
- (UARPDeploymentRule)initWithCoder:(id)a3;
- (UARPDeploymentRule)initWithConfig:(id)a3;
- (UARPDeploymentRule)initWithMinOSVersion:(id)a3 maxOSVersion:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compareOSVersion:(id)a3 withVersion:(id)a4;
- (void)addDeploymentLimit:(id)a3 withGoLiveDate:(id)a4 error:(id *)a5;
- (void)calculateDeploymentDay;
- (void)calculateDeploymentPercent;
- (void)createSerialNumber;
- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setTestSerialNumber:(id)a3;
@end

@implementation UARPDeploymentRule

- (UARPDeploymentRule)initWithMinOSVersion:(id)a3 maxOSVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UARPDeploymentRule;
  v8 = [(UARPDeploymentRule *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    minOSVersion = v8->_minOSVersion;
    v8->_minOSVersion = v9;

    v11 = [v7 copy];
    maxOSVersion = v8->_maxOSVersion;
    v8->_maxOSVersion = v11;
  }

  return v8;
}

- (UARPDeploymentRule)initWithConfig:(id)a3
{
  v4 = a3;
  v5 = [v4 rampPeriod];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 deploymentLimit];

    if (v7)
    {
      goto LABEL_15;
    }
  }

  v8 = [v4 rampPeriod];

  if (v8)
  {
    v9 = [v4 rampPeriod];
    v10 = [v9 unsignedIntValue];

    if (v10 != 28 && v10 != 7)
    {
LABEL_15:
      v35 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v11 = [v4 deploymentLimit];

    if (v11)
    {
      v12 = [v4 deploymentLimit];
      v13 = [v12 unsignedIntValue];

      if (v13 - 1 >= 0x63)
      {
        goto LABEL_15;
      }
    }
  }

  v38.receiver = self;
  v38.super_class = UARPDeploymentRule;
  v14 = [(UARPDeploymentRule *)&v38 init];
  if (v14)
  {
    v15 = [v4 goLiveDate];
    v16 = [v15 copy];
    goLiveDate = v14->_goLiveDate;
    v14->_goLiveDate = v16;

    v18 = [v4 countryList];
    v19 = [v18 copy];
    countryList = v14->_countryList;
    v14->_countryList = v19;

    v21 = [v4 rampPeriod];
    v22 = [v21 copy];
    rampPeriod = v14->_rampPeriod;
    v14->_rampPeriod = v22;

    v24 = [v4 deploymentLimit];
    v25 = [v24 copy];
    deploymentLimit = v14->_deploymentLimit;
    v14->_deploymentLimit = v25;

    v27 = os_log_create("com.apple.accessoryupdater.uarp", "deployment");
    log = v14->_log;
    v14->_log = v27;

    v29 = objc_alloc_init(NSMutableDictionary);
    deploymentLimits = v14->_deploymentLimits;
    v14->_deploymentLimits = v29;

    v14->_isFullyDeployedDeploymentLimits = 0;
    v31 = [(NSNumber *)v14->_deploymentLimit copy];
    v32 = [(NSDate *)v14->_goLiveDate copy];
    v37 = 0;
    [(UARPDeploymentRule *)v14 addDeploymentLimit:v31 withGoLiveDate:v32 error:&v37];
    v33 = v37;

    if (v33)
    {
      v34 = v14->_log;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10000C448(v33, v34);
      }
    }
  }

  self = v14;
  v35 = self;
LABEL_16:

  return v35;
}

- (UARPDeploymentRule)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = UARPDeploymentRule;
  v5 = [(UARPDeploymentRule *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"goLiveDate"];
    goLiveDate = v5->_goLiveDate;
    v5->_goLiveDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rampPeriod"];
    rampPeriod = v5->_rampPeriod;
    v5->_rampPeriod = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deploymentLimit"];
    deploymentLimit = v5->_deploymentLimit;
    v5->_deploymentLimit = v10;

    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v12 = [NSArray arrayWithObjects:v22 count:2];
    v13 = [NSSet setWithArray:v12];

    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"countryList"];
    countryList = v5->_countryList;
    v5->_countryList = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minOSVersion"];
    minOSVersion = v5->_minOSVersion;
    v5->_minOSVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxOSVersion"];
    maxOSVersion = v5->_maxOSVersion;
    v5->_maxOSVersion = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  goLiveDate = self->_goLiveDate;
  v5 = a3;
  [v5 encodeObject:goLiveDate forKey:@"goLiveDate"];
  [v5 encodeObject:self->_countryList forKey:@"countryList"];
  [v5 encodeObject:self->_rampPeriod forKey:@"rampPeriod"];
  [v5 encodeObject:self->_deploymentLimit forKey:@"deploymentLimit"];
  [v5 encodeObject:self->_minOSVersion forKey:@"minOSVersion"];
  [v5 encodeObject:self->_maxOSVersion forKey:@"maxOSVersion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UARPDeploymentRule);
  objc_storeStrong(&v4->_currentISOCountryCode, self->_currentISOCountryCode);
  objc_storeStrong(&v4->_goLiveDate, self->_goLiveDate);
  objc_storeStrong(&v4->_countryList, self->_countryList);
  objc_storeStrong(&v4->_rampPeriod, self->_rampPeriod);
  objc_storeStrong(&v4->_deploymentLimit, self->_deploymentLimit);
  v5 = [(NSMutableDictionary *)self->_deploymentLimits mutableCopy];
  deploymentLimits = v4->_deploymentLimits;
  v4->_deploymentLimits = v5;

  v4->_isFullyDeployedDeploymentLimits = self->_isFullyDeployedDeploymentLimits;
  v7 = [(NSString *)self->_minOSVersion copy];
  minOSVersion = v4->_minOSVersion;
  v4->_minOSVersion = v7;

  v9 = [(NSString *)self->_maxOSVersion copy];
  maxOSVersion = v4->_maxOSVersion;
  v4->_maxOSVersion = v9;

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: goLiveDate=%@, countryList=%@, rampPeriod=%@, deploymentLimit=%@>", v4, self->_goLiveDate, self->_countryList, self->_rampPeriod, self->_deploymentLimit];

  return v5;
}

- (void)setTestSerialNumber:(id)a3
{
  v4 = [a3 copy];
  testSerialNumber = self->_testSerialNumber;
  self->_testSerialNumber = v4;

  _objc_release_x1();
}

- (BOOL)isDeploymentAllowed:(id *)a3
{
  [(UARPDeploymentRule *)self createSerialNumber];
  [(UARPDeploymentRule *)self calculateDeploymentDay];
  [(UARPDeploymentRule *)self calculateDeploymentPercent];
  if (self->_goLiveDate && ![(UARPDeploymentRule *)self isDeploymentAllowedPerGoLiveDate]|| [(NSArray *)self->_countryList count]&& ![(UARPDeploymentRule *)self isDeploymentAllowedPerCountryList]|| self->_rampPeriod && ![(UARPDeploymentRule *)self isDeploymentAllowedPerRampPeriod])
  {
    goto LABEL_19;
  }

  if (self->_deploymentLimit)
  {
    v5 = [(UARPDeploymentRule *)self isDeploymentAllowedPerDeploymentLimit];
  }

  else
  {
    v5 = 1;
  }

  if (self->_minOSVersion && self->_maxOSVersion)
  {
    v12 = 0uLL;
    v6 = +[NSProcessInfo processInfo];
    v7 = v6;
    if (v6)
    {
      [v6 operatingSystemVersion];
    }

    else
    {
      v12 = 0uLL;
    }

    v9 = [NSString stringWithFormat:@"%ld.%ld.%ld", v12, 0];
    v10 = [(UARPDeploymentRule *)self compareOSVersion:self->_minOSVersion withVersion:v9];
    v11 = [(UARPDeploymentRule *)self compareOSVersion:self->_maxOSVersion withVersion:v9]| (v10 + 1);

    if (v11 >= 2)
    {
      goto LABEL_19;
    }
  }

  else if ((v5 & 1) == 0)
  {
LABEL_19:
    sub_10000C4D4(a3);
    return 0;
  }

  return 1;
}

- (int64_t)compareOSVersion:(id)a3 withVersion:(id)a4
{
  v5 = a4;
  v6 = [a3 componentsSeparatedByString:@"."];
  v7 = [v5 componentsSeparatedByString:@"."];
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = v8;
    if ([v6 count] <= v8 && objc_msgSend(v7, "count") <= v8)
    {
      break;
    }

    if ([v6 count] > v8)
    {
      if ([v7 count] <= v8)
      {
        goto LABEL_10;
      }

      v11 = [v6 objectAtIndexedSubscript:v8];
      v12 = [v11 integerValue];

      v13 = [v7 objectAtIndexedSubscript:v8];
      v14 = [v13 integerValue];

      if (v12 > v14)
      {
        goto LABEL_10;
      }

      v8 = v10 + 1;
      if (v12 >= v14)
      {
        continue;
      }
    }

    v9 = -1;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)isDeploymentAllowedPerGoLiveDate
{
  v3 = +[NSDate date];
  v4 = [v3 compare:self->_goLiveDate];
  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (!v4)
  {
    if (v6)
    {
      goLiveDate = self->_goLiveDate;
      v13 = 136315650;
      v14 = "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]";
      v15 = 2112;
      v16 = goLiveDate;
      v17 = 2112;
      v18 = v3;
      v8 = "%s: GoLive %@ date today (today: %@), deployment allowed";
      goto LABEL_7;
    }

LABEL_8:
    v10 = 1;
    goto LABEL_12;
  }

  if (v4 == 1)
  {
    if (v6)
    {
      v7 = self->_goLiveDate;
      v13 = 136315650;
      v14 = "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]";
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v3;
      v8 = "%s: GoLive %@ date in past (today: %@), deployment allowed";
LABEL_7:
      v10 = 1;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v8, &v13, 0x20u);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v11 = self->_goLiveDate;
    v13 = 136315650;
    v14 = "[UARPDeploymentRule isDeploymentAllowedPerGoLiveDate]";
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: GoLive date (%@) in future (today: %@), deployment not allowed", &v13, 0x20u);
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)isDeploymentAllowedPerRampPeriod
{
  v12 = 0;
  time(&v12);
  v3 = localtime(&v12);
  deploymentDay = self->_deploymentDay;
  if (!deploymentDay)
  {
    return 0;
  }

  v5 = [(NSNumber *)deploymentDay unsignedIntValue];
  tm_wday = v3->tm_wday;
  log = self->_log;
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (tm_wday != v5)
  {
    if (v8)
    {
      v10 = v3->tm_wday;
      *buf = 136315650;
      v14 = "[UARPDeploymentRule isDeploymentAllowedPerRampPeriod]";
      v15 = 1024;
      v16 = v10;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Cannot apply update today is Day %d and this device can only do Ramped Updates on Day %d", buf, 0x18u);
    }

    return 0;
  }

  if (!v8)
  {
    return 1;
  }

  *buf = 136315394;
  v14 = "[UARPDeploymentRule isDeploymentAllowedPerRampPeriod]";
  v15 = 1024;
  v16 = v5;
  v9 = 1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Today is the day for Ramped Updates: Day %d", buf, 0x12u);
  return v9;
}

- (BOOL)isDeploymentAllowedPerDeploymentLimit
{
  if (!self->_deploymentPercent)
  {
    return 0;
  }

  v3 = [(NSNumber *)self->_deploymentLimit unsignedIntValue];
  v4 = [(NSNumber *)self->_deploymentPercent unsignedIntValue];
  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v4 > v3)
  {
    if (v6)
    {
      v9 = 136315650;
      v10 = "[UARPDeploymentRule isDeploymentAllowedPerDeploymentLimit]";
      v11 = 1024;
      v12 = v3;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Device cannot apply metered rollout as it doesn't fall under %d percent. Device is %d percent.", &v9, 0x18u);
    }

    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v9 = 136315394;
  v10 = "[UARPDeploymentRule isDeploymentAllowedPerDeploymentLimit]";
  v11 = 1024;
  v12 = v4;
  v7 = 1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Device can apply metered rollout, %d percent.", &v9, 0x12u);
  return v7;
}

- (void)calculateDeploymentDay
{
  if (self->_serialNumber)
  {
    rampPeriod = self->_rampPeriod;
    if (rampPeriod)
    {
      v4 = [(NSNumber *)rampPeriod unsignedIntValue];
      v5 = [(NSString *)self->_serialNumber UTF8String];
      v6 = [(NSString *)self->_serialNumber length];
      for (i = 0; v6; --v6)
      {
        v8 = *v5++;
        i += v8;
      }

      v9 = i % v4;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "[UARPDeploymentRule calculateDeploymentDay]";
        v15 = 1024;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: deployDay = %d", &v13, 0x12u);
      }

      v11 = [NSNumber numberWithUnsignedInt:v9];
      deploymentDay = self->_deploymentDay;
      self->_deploymentDay = v11;
    }
  }
}

- (void)calculateDeploymentPercent
{
  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    v4 = [(NSString *)serialNumber UTF8String];
    v5 = [(NSString *)self->_serialNumber length];
    if (v5)
    {
      v6 = 0;
      v7 = 3;
      do
      {
        v8 = *v4++;
        v6 += v8;
        v7 *= v8;
        --v5;
      }

      while (v5);
      v9 = v7 % 0xA + 10 * (v6 % 0xA);
    }

    else
    {
      v9 = 3;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[UARPDeploymentRule calculateDeploymentPercent]";
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: deployPercent = %d", &v13, 0x12u);
    }

    v11 = [NSNumber numberWithUnsignedInt:v9];
    deploymentPercent = self->_deploymentPercent;
    self->_deploymentPercent = v11;
  }
}

- (void)createSerialNumber
{
  testSerialNumber = self->_testSerialNumber;
  if (testSerialNumber)
  {
    objc_storeStrong(&self->_serialNumber, testSerialNumber);
    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      return;
    }

    serialNumber = self->_serialNumber;
    v12 = 136315394;
    v13 = "[UARPDeploymentRule createSerialNumber]";
    v14 = 2112;
    v15 = serialNumber;
    v6 = "%s: Using %@ provided by user as seed";
    v7 = log;
    v8 = 22;
  }

  else
  {
    v9 = MGCopyAnswer();
    v10 = self->_serialNumber;
    self->_serialNumber = v9;

    v11 = self->_log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v12 = 136315138;
    v13 = "[UARPDeploymentRule createSerialNumber]";
    v6 = "%s: Using device serial number as seed";
    v7 = v11;
    v8 = 12;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, &v12, v8);
}

- (void)addDeploymentLimit:(id)a3 withGoLiveDate:(id)a4 error:(id *)a5
{
  v15 = a3;
  v8 = a4;
  if (self->_isFullyDeployedDeploymentLimits)
  {
    v9 = objc_opt_new();
    v10 = [NSString stringWithFormat:@"Invalid Deployment Rule: Deployment already scheduled for full deployment for %@", self->_currentISOCountryCode];
    [v9 setObject:v10 forKeyedSubscript:NSLocalizedDescriptionKey];

LABEL_5:
    v14 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:v9];
    *a5 = v14;

    goto LABEL_6;
  }

  v11 = [(NSMutableDictionary *)self->_deploymentLimits objectForKey:v8];

  if (v11)
  {
    v9 = objc_opt_new();
    v12 = [(NSDate *)self->_goLiveDate description];
    v13 = [NSString stringWithFormat:@"Invalid Deployment Rule: Deployment Limit already set on Go Live Date %@ for %@", v12, self->_currentISOCountryCode];
    [v9 setObject:v13 forKeyedSubscript:NSLocalizedDescriptionKey];

    goto LABEL_5;
  }

  if (v8)
  {
    [(NSMutableDictionary *)self->_deploymentLimits setObject:v15 forKeyedSubscript:v8];
  }

  [(UARPDeploymentRule *)self validateDeploymentLimits:a5];
LABEL_6:
}

- (BOOL)validateDeploymentLimits:(id *)a3
{
  v5 = [(NSMutableDictionary *)self->_deploymentLimits allKeys];
  v6 = [v5 sortedArrayUsingSelector:"compare:"];

  if ([v6 count] < 2)
  {
LABEL_5:
    deploymentLimits = self->_deploymentLimits;
    v19 = [v6 lastObject];
    v20 = [(NSMutableDictionary *)deploymentLimits objectForKeyedSubscript:v19];
    v21 = [v20 unsignedIntValue];

    v22 = 1;
    if (v21 == 100)
    {
      self->_isFullyDeployedDeploymentLimits = 1;
    }
  }

  else
  {
    v7 = 2;
    v8 = 1;
    while (1)
    {
      v9 = self->_deploymentLimits;
      v10 = [v6 objectAtIndexedSubscript:v7 - 2];
      v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];
      v12 = [v11 unsignedIntValue];

      v13 = self->_deploymentLimits;
      v14 = [v6 objectAtIndexedSubscript:v8];
      v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];
      v16 = [v15 unsignedIntValue];

      if (v12 >= v16)
      {
        break;
      }

      v8 = v7;
      if ([v6 count] <= v7++)
      {
        goto LABEL_5;
      }
    }

    v23 = v16;
    v24 = objc_opt_new();
    currentISOCountryCode = self->_currentISOCountryCode;
    v26 = [v6 objectAtIndexedSubscript:v8];
    v27 = [v26 description];
    v28 = [NSString stringWithFormat:@"Invalid Deployment Rule: Deployment Limit %lu for %@ with Go Live Date %@ is invalid, must be strictly increasing", v23, currentISOCountryCode, v27];
    [v24 setObject:v28 forKeyedSubscript:NSLocalizedDescriptionKey];

    v29 = [NSError errorWithDomain:@"com.apple.uarp" code:6 userInfo:v24];
    *a3 = v29;
    v30 = self->_deploymentLimits;
    v31 = [v6 objectAtIndexedSubscript:v8];
    [(NSMutableDictionary *)v30 removeObjectForKey:v31];

    v22 = 0;
  }

  return v22;
}

- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4
{
  v6 = a4;
  [v6 appendWithTabDepth:a3 format:@"Deployment Rule:\n"];
  if (self->_currentISOCountryCode)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Current Country Code: %@\n", self->_currentISOCountryCode}];
  }

  if (self->_goLiveDate)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Go-Live Date: %@\n", self->_goLiveDate}];
  }

  if ([(NSArray *)self->_countryList count])
  {
    [v6 appendWithTabDepth:a3 + 1 format:@"Country List:"];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_countryList;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 appendFormat:@" %@", *(*(&v12 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [v6 appendString:@"\n"];
  }

  if (self->_rampPeriod)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Ramp Period: %@\n", self->_rampPeriod}];
  }

  if (self->_deploymentLimit)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Deployment Limit: %@\n", self->_deploymentLimit}];
  }

  if (self->_deploymentPercent)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Deployment Percent: %@\n", self->_deploymentPercent}];
  }

  if (self->_deploymentDay)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Deployment Day: %@\n", self->_deploymentDay}];
  }

  if (self->_serialNumber)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Serial Number: %@\n", self->_serialNumber}];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      v5 = [(UARPDeploymentRule *)self currentISOCountryCode];
      v6 = [(UARPDeploymentRule *)v4 currentISOCountryCode];
      v7 = [v5 isEqualToString:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDeploymentAllowedPerCountryList
{
  if (!self->_currentISOCountryCode)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      currentISOCountryCode = self->_currentISOCountryCode;
      v15 = 136315394;
      v16 = "[UARPDeploymentRule isDeploymentAllowedPerCountryList]";
      v17 = 2112;
      v18 = currentISOCountryCode;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Current location unknown %@", &v15, 0x16u);
    }

    if (!self->_currentISOCountryCode)
    {
      return 0;
    }
  }

  v5 = [(NSArray *)self->_countryList containsObject:?];
  v6 = os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (v6)
    {
      v16 = "[UARPDeploymentRule isDeploymentAllowedPerCountryList]";
      sub_10000B678(&_mh_execute_header, v7, v8, "%s: Device not in country list, deployment not allowed", v9, v10, v11, v12, 2u);
    }

    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v16 = "[UARPDeploymentRule isDeploymentAllowedPerCountryList]";
  v13 = 1;
  sub_10000B678(&_mh_execute_header, v7, v8, "%s: Device is in country list", v9, v10, v11, v12, 2u);
  return v13;
}

@end