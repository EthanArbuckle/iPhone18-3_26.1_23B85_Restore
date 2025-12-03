@interface SUMutableDownloadMetadata
- (SUMutableDownloadMetadata)initWithMetadata:(id)metadata;
- (void)applyDownloadPolicy:(id)policy;
@end

@implementation SUMutableDownloadMetadata

- (SUMutableDownloadMetadata)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7.receiver = self;
  v7.super_class = SUMutableDownloadMetadata;
  v5 = [(SUDownloadMetadata *)&v7 init];
  if (v5)
  {
    -[SUDownloadMetadata setAutoDownload:](v5, "setAutoDownload:", [metadataCopy isAutoDownload]);
    -[SUDownloadMetadata setDownloadOnly:](v5, "setDownloadOnly:", [metadataCopy isDownloadOnly]);
    -[SUDownloadMetadata setActiveDownloadPolicyType:](v5, "setActiveDownloadPolicyType:", [metadataCopy activeDownloadPolicyType]);
    -[SUDownloadMetadata setEnabledFor2G:](v5, "setEnabledFor2G:", [metadataCopy isEnabledFor2G]);
    -[SUDownloadMetadata setEnabledFor3G:](v5, "setEnabledFor3G:", [metadataCopy isEnabledFor3G]);
    -[SUDownloadMetadata setEnabledFor4G:](v5, "setEnabledFor4G:", [metadataCopy isEnabledFor4G]);
    -[SUDownloadMetadata setEnabledForWifi:](v5, "setEnabledForWifi:", [metadataCopy isEnabledForWifi]);
    -[SUDownloadMetadata setEnabledOnBatteryPower:](v5, "setEnabledOnBatteryPower:", [metadataCopy isEnabledOnBatteryPower]);
    -[SUDownloadMetadata setEnforceWifiOnlyOverride:](v5, "setEnforceWifiOnlyOverride:", [metadataCopy enforceWifiOnlyOverride]);
    -[SUDownloadMetadata setDownloadFeeAgreementStatus:](v5, "setDownloadFeeAgreementStatus:", [metadataCopy downloadFeeAgreementStatus]);
    -[SUDownloadMetadata setEnabledForCellularRoaming:](v5, "setEnabledForCellularRoaming:", [metadataCopy isEnabledForCellularRoaming]);
    -[SUDownloadMetadata setTermsAndConditionsAgreementStatus:](v5, "setTermsAndConditionsAgreementStatus:", [metadataCopy termsAndConditionsAgreementStatus]);
  }

  return v5;
}

- (void)applyDownloadPolicy:(id)policy
{
  v3.receiver = self;
  v3.super_class = SUMutableDownloadMetadata;
  [(SUDownloadMetadata *)&v3 applyDownloadPolicy:policy];
}

@end