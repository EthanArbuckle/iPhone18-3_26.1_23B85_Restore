@interface SUMutableDownloadMetadata
- (SUMutableDownloadMetadata)initWithMetadata:(id)a3;
- (void)applyDownloadPolicy:(id)a3;
@end

@implementation SUMutableDownloadMetadata

- (SUMutableDownloadMetadata)initWithMetadata:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SUMutableDownloadMetadata;
  v5 = [(SUDownloadMetadata *)&v7 init];
  if (v5)
  {
    -[SUDownloadMetadata setAutoDownload:](v5, "setAutoDownload:", [v4 isAutoDownload]);
    -[SUDownloadMetadata setDownloadOnly:](v5, "setDownloadOnly:", [v4 isDownloadOnly]);
    -[SUDownloadMetadata setActiveDownloadPolicyType:](v5, "setActiveDownloadPolicyType:", [v4 activeDownloadPolicyType]);
    -[SUDownloadMetadata setEnabledFor2G:](v5, "setEnabledFor2G:", [v4 isEnabledFor2G]);
    -[SUDownloadMetadata setEnabledFor3G:](v5, "setEnabledFor3G:", [v4 isEnabledFor3G]);
    -[SUDownloadMetadata setEnabledFor4G:](v5, "setEnabledFor4G:", [v4 isEnabledFor4G]);
    -[SUDownloadMetadata setEnabledForWifi:](v5, "setEnabledForWifi:", [v4 isEnabledForWifi]);
    -[SUDownloadMetadata setEnabledOnBatteryPower:](v5, "setEnabledOnBatteryPower:", [v4 isEnabledOnBatteryPower]);
    -[SUDownloadMetadata setEnforceWifiOnlyOverride:](v5, "setEnforceWifiOnlyOverride:", [v4 enforceWifiOnlyOverride]);
    -[SUDownloadMetadata setDownloadFeeAgreementStatus:](v5, "setDownloadFeeAgreementStatus:", [v4 downloadFeeAgreementStatus]);
    -[SUDownloadMetadata setEnabledForCellularRoaming:](v5, "setEnabledForCellularRoaming:", [v4 isEnabledForCellularRoaming]);
    -[SUDownloadMetadata setTermsAndConditionsAgreementStatus:](v5, "setTermsAndConditionsAgreementStatus:", [v4 termsAndConditionsAgreementStatus]);
  }

  return v5;
}

- (void)applyDownloadPolicy:(id)a3
{
  v3.receiver = self;
  v3.super_class = SUMutableDownloadMetadata;
  [(SUDownloadMetadata *)&v3 applyDownloadPolicy:a3];
}

@end