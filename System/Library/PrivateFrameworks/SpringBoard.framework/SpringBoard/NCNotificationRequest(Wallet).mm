@interface NCNotificationRequest(Wallet)
+ (id)notificationRequestWithCardItem:()Wallet;
@end

@implementation NCNotificationRequest(Wallet)

+ (id)notificationRequestWithCardItem:()Wallet
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 identifier];
  [v4 setNotificationIdentifier:v5];

  v6 = [v3 categoryIdentifier];
  [v4 setCategoryIdentifier:v6];

  [v4 setSectionIdentifier:@"com.apple.springboard.pass"];
  v7 = [v3 identifier];
  [v4 setThreadIdentifier:v7];

  v8 = [MEMORY[0x277CBEAA8] date];
  [v4 setTimestamp:v8];

  v9 = MEMORY[0x277CBEB98];
  v10 = *MEMORY[0x277D77FD8];
  v32[0] = *MEMORY[0x277D77FE0];
  v32[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v12 = [v9 setWithArray:v11];
  [v4 setRequestDestinations:v12];

  v13 = objc_opt_new();
  v14 = [v3 title];
  [v13 setTitle:v14];

  v15 = [v3 subtitle];
  [v13 setSubtitle:v15];

  v16 = [v3 body];
  [v13 setMessage:v16];

  v17 = objc_alloc(MEMORY[0x277D755B8]);
  v18 = [v3 iconData];
  v19 = [MEMORY[0x277D759A0] mainScreen];
  [v19 scale];
  v20 = [v17 _initWithData:v18 scale:?];
  [v13 setIcon:v20];

  v21 = [v3 thumbnail];
  [v13 setAttachmentImage:v21];

  [v4 setContent:v13];
  v22 = objc_opt_new();
  [v22 setAddToLockScreenWhenUnlocked:1];
  [v22 setLockScreenPersistence:2];
  [v22 setLockScreenPriority:200];
  [v22 setHideClearActionInList:1];
  [v4 setOptions:v22];
  v23 = [MEMORY[0x277D77E30] revealWalletPassNotificationActionForCardItem:v3];

  [v4 setDefaultAction:v23];
  v24 = [v23 copy];
  v25 = *MEMORY[0x277D77DA0];
  v29 = v24;
  v30 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v31 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [v4 setSupplementaryActions:v27];

  return v4;
}

@end