@interface SUAutoDownloadPolicy
- (SUAutoDownloadPolicy)initWithDescriptor:(id)descriptor;
- (id)computAutoDownloadEndDateFromDate:(id)date;
- (id)computeTimeOfWifiOnlyPeriodEndFromDate:(id)date;
- (id)createSpaceOptions;
@end

@implementation SUAutoDownloadPolicy

- (id)createSpaceOptions
{
  descriptor = [(SUDefaultDownloadPolicy *)self descriptor];
  if (descriptor)
  {
    v11 = objc_alloc_init(SUSpacePurgeOptions);
    [(SUSpacePurgeOptions *)v11 setNeededBytes:[SUUtility totalDiskSpaceForUpdate:descriptor]];
    [(SUSpacePurgeOptions *)v11 setEnableAppOffload:0];
    descriptor2 = [(SUDefaultDownloadPolicy *)self descriptor];
    -[SUSpacePurgeOptions setEnableCacheDelete:](v11, "setEnableCacheDelete:", [descriptor2 cdLevel4Disabled] ^ 1);

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

- (SUAutoDownloadPolicy)initWithDescriptor:(id)descriptor
{
  v6.receiver = self;
  v6.super_class = SUAutoDownloadPolicy;
  v3 = [(SUDefaultDownloadPolicy *)&v6 initWithDescriptor:descriptor];
  v4 = v3;
  if (v3)
  {
    v3->super._cellularCapable = 0;
    [(SUDefaultDownloadPolicy *)v3 setCarrierPolicy:0];
  }

  return v4;
}

- (id)computAutoDownloadEndDateFromDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (dateCopy)
  {
    date = dateCopy;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v6 = date;
  v7 = [SUUtility addToDate:date numberOfDays:90];

  return v7;
}

- (id)computeTimeOfWifiOnlyPeriodEndFromDate:(id)date
{
  dateCopy = date;
  v5 = [SUUtility addToDate:dateCopy numberOfDays:[(SUAutoDownloadPolicy *)self wifiOnlyPeriodInDays]];

  return v5;
}

@end