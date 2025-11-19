@interface SUAutoDownloadPolicy
- (SUAutoDownloadPolicy)initWithDescriptor:(id)a3;
- (id)computAutoDownloadEndDateFromDate:(id)a3;
- (id)computeTimeOfWifiOnlyPeriodEndFromDate:(id)a3;
- (id)createSpaceOptions;
@end

@implementation SUAutoDownloadPolicy

- (id)createSpaceOptions
{
  v10 = [(SUDefaultDownloadPolicy *)self descriptor];
  if (v10)
  {
    v11 = objc_alloc_init(SUSpacePurgeOptions);
    [(SUSpacePurgeOptions *)v11 setNeededBytes:[SUUtility totalDiskSpaceForUpdate:v10]];
    [(SUSpacePurgeOptions *)v11 setEnableAppOffload:0];
    v12 = [(SUDefaultDownloadPolicy *)self descriptor];
    -[SUSpacePurgeOptions setEnableCacheDelete:](v11, "setEnableCacheDelete:", [v12 cdLevel4Disabled] ^ 1);

    [(SUSpacePurgeOptions *)v11 setEnableMobileAssetSuspend:0];
    [(SUSpacePurgeOptions *)v11 setCacheDeleteUrgency:4];
  }

  else
  {
    SULogInfo(@"Unable to create space options for null descriptor", v3, v4, v5, v6, v7, v8, v9, v14);
    v11 = 0;
  }

  return v11;
}

- (SUAutoDownloadPolicy)initWithDescriptor:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUAutoDownloadPolicy;
  v3 = [(SUDefaultDownloadPolicy *)&v6 initWithDescriptor:a3];
  v4 = v3;
  if (v3)
  {
    v3->super._cellularCapable = 0;
    [(SUDefaultDownloadPolicy *)v3 setCarrierPolicy:0];
  }

  return v4;
}

- (id)computAutoDownloadEndDateFromDate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] date];
  }

  v6 = v5;
  v7 = [SUUtility addToDate:v5 numberOfDays:90];

  return v7;
}

- (id)computeTimeOfWifiOnlyPeriodEndFromDate:(id)a3
{
  v4 = a3;
  v5 = [SUUtility addToDate:v4 numberOfDays:[(SUAutoDownloadPolicy *)self wifiOnlyPeriodInDays]];

  return v5;
}

@end