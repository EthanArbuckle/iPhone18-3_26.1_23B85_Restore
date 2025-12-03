@interface TSProximityWaitingViewController
- (BOOL)isStartOverRequiredOnBackButtonTapped;
- (SSProximityDevice)btServer;
- (TSProximityWaitingViewController)initWithBTServer:(id)server transferBackPhoneNumber:(id)number;
- (TSSIMSetupFlowDelegate)delegate;
@end

@implementation TSProximityWaitingViewController

- (TSProximityWaitingViewController)initWithBTServer:(id)server transferBackPhoneNumber:(id)number
{
  serverCopy = server;
  numberCopy = number;
  if (numberCopy)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PRX_TRANSFER_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    formattedPhoneNumber = [numberCopy formattedPhoneNumber];
    v12 = [v8 stringWithFormat:v10, formattedPhoneNumber];
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v9 localizedStringForKey:@"PRX_TRANSFER_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"PRX_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v17.receiver = self;
  v17.super_class = TSProximityWaitingViewController;
  v15 = [(TSProximityWaitingViewController *)&v17 initWithTitle:v14 detailText:v12 symbolName:@"antenna.radiowaves.left.and.right"];

  if (v15)
  {
    objc_storeWeak(&v15->_btServer, serverCopy);
  }

  return v15;
}

- (BOOL)isStartOverRequiredOnBackButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_btServer);
  [WeakRetained invalidate:0];

  return 0;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SSProximityDevice)btServer
{
  WeakRetained = objc_loadWeakRetained(&self->_btServer);

  return WeakRetained;
}

@end