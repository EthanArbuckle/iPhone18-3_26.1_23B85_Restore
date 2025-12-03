@interface NCNotificationAction(Wallet)
+ (id)revealWalletPassNotificationActionForCardItem:()Wallet;
@end

@implementation NCNotificationAction(Wallet)

+ (id)revealWalletPassNotificationActionForCardItem:()Wallet
{
  v3 = a3;
  v4 = objc_opt_new();
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"WALLET_ACTION_SHOW_PASS" value:&stru_283094718 table:@"SpringBoard"];
  [v4 setTitle:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@-%lu-default", v9, objc_msgSend(v3, "hash")];

  [v4 setIdentifier:v10];
  [v4 setActivationMode:0];
  [v4 setShouldDismissNotification:0];
  [v4 setRequiresAuthentication:{objc_msgSend(v3, "requiresPasscode")}];
  v11 = [[NCRevealWalletPassActionRunner alloc] initWithCardItem:v3];

  [v4 setActionRunner:v11];

  return v4;
}

@end