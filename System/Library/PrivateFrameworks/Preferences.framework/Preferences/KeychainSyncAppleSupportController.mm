@interface KeychainSyncAppleSupportController
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation KeychainSyncAppleSupportController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = KeychainSyncAppleSupportController;
  [(PSListController *)&v6 viewDidLoad];
  v3 = PS_LocalizedStringForKeychainSync(@"CONTACTING_APPLE_SUPPORT_BUDDY");
  [(PSKeychainSyncViewController *)self setTitle:v3];

  v4 = [(PSListController *)self table];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 setBackgroundColor:v5];
}

- (id)specifiers
{
  specifiers = self->super.super._specifiers;
  if (!specifiers)
  {
    v8.receiver = self;
    v8.super_class = KeychainSyncAppleSupportController;
    v4 = [(PSKeychainSyncViewController *)&v8 specifiers];
    v5 = [(PSKeychainSyncViewController *)self groupSpecifier];
    v6 = PS_LocalizedStringForKeychainSync(@"APPLE_SUPPORT_VERIFICATION_DETAILS");
    [v5 setProperty:v6 forKey:@"footerText"];

    specifiers = self->super.super._specifiers;
  }

  return specifiers;
}

@end