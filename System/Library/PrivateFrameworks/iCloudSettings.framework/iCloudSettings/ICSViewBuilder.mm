@interface ICSViewBuilder
+ (id)buildBackupViewControllerWithAccount:(id)account;
+ (id)buildViewControllerWithAccountManager:(id)manager dataclass:(id)dataclass;
@end

@implementation ICSViewBuilder

+ (id)buildBackupViewControllerWithAccount:(id)account
{
  accountCopy = account;
  v4 = [[ICSBackupViewController alloc] initWithAccount:accountCopy];

  return v4;
}

+ (id)buildViewControllerWithAccountManager:(id)manager dataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  if (*MEMORY[0x277CB89C0] == dataclassCopy)
  {
    managerCopy = manager;
    v12 = [[ICSKeychainSyncViewController alloc] initWithAccountManager:managerCopy];
  }

  else
  {
    v6 = MEMORY[0x277D3FAD8];
    managerCopy2 = manager;
    accounts = [managerCopy2 accounts];
    v9 = *MEMORY[0x277CED1A0];
    v10 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    managerCopy = [v6 acui_linkListCellSpecifierForDataclass:dataclassCopy account:v10 target:0 set:0 get:0 detail:0];

    [managerCopy setObject:managerCopy2 forKeyedSubscript:@"icloudAccountManager"];
    [managerCopy setObject:dataclassCopy forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v12 = objc_alloc_init(ICSDataclassDetailViewController);
    [(ICSKeychainSyncViewController *)v12 setSpecifier:managerCopy];
    [(ICSKeychainSyncViewController *)v12 setAccountManager:managerCopy2];
    accounts2 = [managerCopy2 accounts];

    v14 = [accounts2 objectForKeyedSubscript:v9];
    [(ICSKeychainSyncViewController *)v12 setAccount:v14];
  }

  return v12;
}

@end