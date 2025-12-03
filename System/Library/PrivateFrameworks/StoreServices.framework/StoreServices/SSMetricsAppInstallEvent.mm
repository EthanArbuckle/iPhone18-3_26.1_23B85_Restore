@interface SSMetricsAppInstallEvent
+ (id)_stringForInstallStatus:(unint64_t)status;
+ (id)_stringForInstallType:(unint64_t)type;
+ (unint64_t)_installStatusForString:(id)string;
+ (unint64_t)_installTypeForString:(id)string;
- (SSMetricsAppInstallEvent)init;
- (id)description;
- (int64_t)jobID;
- (unint64_t)installStatus;
- (unint64_t)installType;
- (void)setInstallStatus:(unint64_t)status;
- (void)setInstallType:(unint64_t)type;
- (void)setJobID:(int64_t)d;
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
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)setInstallStatus:(unint64_t)status
{
  v4 = [objc_opt_class() _stringForInstallStatus:status];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"installStatus"];
}

- (void)setInstallType:(unint64_t)type
{
  v4 = [objc_opt_class() _stringForInstallType:type];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"installType"];
}

- (void)setJobID:(int64_t)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  [(SSMetricsMutableEvent *)self setProperty:v4 forBodyKey:@"jobId"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12.receiver = self;
  v12.super_class = SSMetricsAppInstallEvent;
  v4 = [(SSMetricsAppInstallEvent *)&v12 description];
  [v3 appendString:v4];

  buildVersion = [(SSMetricsAppInstallEvent *)self buildVersion];
  [v3 appendFormat:@"\nbuildVersion = %@", buildVersion];

  bundleID = [(SSMetricsAppInstallEvent *)self bundleID];
  [v3 appendFormat:@"\nbundleID = %@", bundleID];

  hardwareType = [(SSMetricsAppInstallEvent *)self hardwareType];
  [v3 appendFormat:@"\nhardwareType = %@", hardwareType];

  installError = [(SSMetricsAppInstallEvent *)self installError];
  [v3 appendFormat:@"\ninstallError = %@", installError];

  v9 = [objc_opt_class() _stringForInstallStatus:{-[SSMetricsAppInstallEvent installStatus](self, "installStatus")}];
  [v3 appendFormat:@"\ninstallStatus = %@", v9];

  v10 = [objc_opt_class() _stringForInstallType:{-[SSMetricsAppInstallEvent installType](self, "installType")}];
  [v3 appendFormat:@"\ninstallType = %@", v10];

  [v3 appendFormat:@"\njobID = %lld", -[SSMetricsAppInstallEvent jobID](self, "jobID")];

  return v3;
}

+ (unint64_t)_installStatusForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Cancelled"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Failed"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"FailedAssetBlocked"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"FailedDownloadRemoved"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"FailedInstallVerification"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"FailedKeepSafeHarborContainer"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"FailedPermanently"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"Started"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [stringCopy isEqualToString:@"Succeeded"];
  }

  return v4;
}

+ (unint64_t)_installTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"AutoStoreQueue"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"AutoUpdate"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"External"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"Internal"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"ManualUpdate"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"PerDevice"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Restore"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"RestoreDemoted"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"StoreQueue"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"VPP"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_stringForInstallStatus:(unint64_t)status
{
  if (status > 8)
  {
    return @"Cancelled";
  }

  else
  {
    return off_1E84B33D0[status];
  }
}

+ (id)_stringForInstallType:(unint64_t)type
{
  if (type > 9)
  {
    return @"AutoStoreQueue";
  }

  else
  {
    return off_1E84B3418[type];
  }
}

@end