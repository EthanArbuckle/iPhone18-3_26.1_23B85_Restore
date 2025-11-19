@interface SSCrossPlatformScanViewController
- (SSCrossPlatformScanViewController)init;
@end

@implementation SSCrossPlatformScanViewController

- (SSCrossPlatformScanViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SOURCE_SCAN_AUTH_QRCODE" value:&stru_28753DF48 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SOURCE_SCAN_AUTH_QRCODE_DETAILS" value:&stru_28753DF48 table:@"Localizable"];
  v9.receiver = self;
  v9.super_class = SSCrossPlatformScanViewController;
  v7 = [(SSScanViewController *)&v9 initWithTitle:v4 detail:v6];

  return v7;
}

@end