@interface SUDefaultWiFiOnlyDownloadPolicy
+ (unint64_t)wifiOnlyPeriodInDaysForUpdate:(id)update;
- (SUDefaultWiFiOnlyDownloadPolicy)initWithDescriptor:(id)descriptor;
@end

@implementation SUDefaultWiFiOnlyDownloadPolicy

+ (unint64_t)wifiOnlyPeriodInDaysForUpdate:(id)update
{
  if ([update updateType] == 3)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

- (SUDefaultWiFiOnlyDownloadPolicy)initWithDescriptor:(id)descriptor
{
  v6.receiver = self;
  v6.super_class = SUDefaultWiFiOnlyDownloadPolicy;
  v3 = [(SUDefaultDownloadPolicy *)&v6 initWithDescriptor:descriptor];
  v4 = v3;
  if (v3)
  {
    v3->super._cellularCapable = 0;
    [(SUDefaultDownloadPolicy *)v3 setCarrierPolicy:0];
  }

  return v4;
}

@end