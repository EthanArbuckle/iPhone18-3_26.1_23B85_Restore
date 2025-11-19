@interface SSMetricsAppInstallEvent
+ (id)_stringForInstallStatus:(unint64_t)a3;
+ (id)_stringForInstallType:(unint64_t)a3;
+ (unint64_t)_installStatusForString:(id)a3;
+ (unint64_t)_installTypeForString:(id)a3;
- (SSMetricsAppInstallEvent)init;
- (id)description;
- (int64_t)jobID;
- (unint64_t)installStatus;
- (unint64_t)installType;
- (void)setInstallStatus:(unint64_t)a3;
- (void)setInstallType:(unint64_t)a3;
- (void)setJobID:(int64_t)a3;
@end

@implementation SSMetricsAppInstallEvent

- (SSMetricsAppInstallEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsAppInstallEvent;
  v2 = [(SSMetricsMutableEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setProperty:&unk_1F507A270 forBodyKey:@"clientId"];
    [(SSMetricsMutableEvent *)v3 setEventType:@"appInstall"];
    [(SSMetricsMutableEvent *)v3 setTopic:@"xp_amp_app_install"];
  }

  return v3;
}

- (unint64_t)installStatus
{
  v3 = objc_opt_class();
  v4 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"installStatus"];
  v5 = [v3 _installStatusForString:v4];

  return v5;
}

- (unint64_t)installType
{
  v3 = objc_opt_class();
  v4 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"installType"];
  v5 = [v3 _installTypeForString:v4];

  return v5;
}

- (int64_t)jobID
{
  v2 = [(SSMetricsMutableEvent *)self propertyForBodyKey:@"jobId"];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)setInstallStatus:(unint64_t)a3
{
  v4 = [objc_opt_class() _stringForInstallStatus:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"installStatus"];
}

- (void)setInstallType:(unint64_t)a3
{
  v4 = [objc_opt_class() _stringForInstallType:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"installType"];
}

- (void)setJobID:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"jobId"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12.receiver = self;
  v12.super_class = SSMetricsAppInstallEvent;
  v4 = [(SSMetricsAppInstallEvent *)&v12 description];
  [v3 appendString:v4];

  v5 = [(SSMetricsAppInstallEvent *)self buildVersion];
  [v3 appendFormat:@"\nbuildVersion = %@", v5];

  v6 = [(SSMetricsAppInstallEvent *)self bundleID];
  [v3 appendFormat:@"\nbundleID = %@", v6];

  v7 = [(SSMetricsAppInstallEvent *)self hardwareType];
  [v3 appendFormat:@"\nhardwareType = %@", v7];

  v8 = [(SSMetricsAppInstallEvent *)self installError];
  [v3 appendFormat:@"\ninstallError = %@", v8];

  v9 = [objc_opt_class() _stringForInstallStatus:{-[SSMetricsAppInstallEvent installStatus](self, "installStatus")}];
  [v3 appendFormat:@"\ninstallStatus = %@", v9];

  v10 = [objc_opt_class() _stringForInstallType:{-[SSMetricsAppInstallEvent installType](self, "installType")}];
  [v3 appendFormat:@"\ninstallType = %@", v10];

  [v3 appendFormat:@"\njobID = %lld", -[SSMetricsAppInstallEvent jobID](self, "jobID")];

  return v3;
}

+ (unint64_t)_installStatusForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Cancelled"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Failed"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FailedAssetBlocked"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"FailedDownloadRemoved"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"FailedInstallVerification"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"FailedKeepSafeHarborContainer"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"FailedPermanently"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Started"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Succeeded"];
  }

  return v4;
}

+ (unint64_t)_installTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AutoStoreQueue"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AutoUpdate"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"External"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Internal"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ManualUpdate"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PerDevice"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Restore"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RestoreDemoted"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"StoreQueue"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"VPP"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_stringForInstallStatus:(unint64_t)a3
{
  if (a3 > 8)
  {
    return @"Cancelled";
  }

  else
  {
    return off_1E84B33D0[a3];
  }
}

+ (id)_stringForInstallType:(unint64_t)a3
{
  if (a3 > 9)
  {
    return @"AutoStoreQueue";
  }

  else
  {
    return off_1E84B3418[a3];
  }
}

@end