@interface SKUIRedeemStepViewController
- (BOOL)shouldShowPassbookLearnMore;
- (SKUIRedeemStepDelegate)redeemStepDelegate;
- (void)shouldShowPassbookLearnMore;
@end

@implementation SKUIRedeemStepViewController

- (BOOL)shouldShowPassbookLearnMore
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemStepViewController shouldShowPassbookLearnMore];
  }

  v3 = SKUIPassKitCoreFramework();
  v4 = SKUIWeakLinkedClassForString(&cfstr_Pkpasslibrary.isa, v3);
  v5 = [(SKUIRedeemStepViewController *)self configuration];
  v6 = [v5 ITunesPassConfiguration];

  if (!v6)
  {
    return 0;
  }

  if (![v4 isPassLibraryAvailable])
  {
    return 0;
  }

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    return 0;
  }

  v11 = [MEMORY[0x277D69A20] defaultStore];
  v12 = [v11 activeAccount];
  v13 = [v12 ITunesPassSerialNumber];

  if (v13)
  {
    v14 = objc_alloc_init(v4);
    v15 = [v14 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:v13];
    v9 = v15 == 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (SKUIRedeemStepDelegate)redeemStepDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_redeemStepDelegate);

  return WeakRetained;
}

- (void)shouldShowPassbookLearnMore
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemStepViewController shouldShowPassbookLearnMore]";
}

@end