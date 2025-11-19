@interface ICSViewBuilder
+ (id)buildBackupViewControllerWithAccount:(id)a3;
+ (id)buildViewControllerWithAccountManager:(id)a3 dataclass:(id)a4;
@end

@implementation ICSViewBuilder

+ (id)buildBackupViewControllerWithAccount:(id)a3
{
  v3 = a3;
  v4 = [[ICSBackupViewController alloc] initWithAccount:v3];

  return v4;
}

+ (id)buildViewControllerWithAccountManager:(id)a3 dataclass:(id)a4
{
  v5 = a4;
  if (*MEMORY[0x277CB89C0] == v5)
  {
    v11 = a3;
    v12 = [[ICSKeychainSyncViewController alloc] initWithAccountManager:v11];
  }

  else
  {
    v6 = MEMORY[0x277D3FAD8];
    v7 = a3;
    v8 = [v7 accounts];
    v9 = *MEMORY[0x277CED1A0];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    v11 = [v6 acui_linkListCellSpecifierForDataclass:v5 account:v10 target:0 set:0 get:0 detail:0];

    [v11 setObject:v7 forKeyedSubscript:@"icloudAccountManager"];
    [v11 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v12 = objc_alloc_init(ICSDataclassDetailViewController);
    [(ICSKeychainSyncViewController *)v12 setSpecifier:v11];
    [(ICSKeychainSyncViewController *)v12 setAccountManager:v7];
    v13 = [v7 accounts];

    v14 = [v13 objectForKeyedSubscript:v9];
    [(ICSKeychainSyncViewController *)v12 setAccount:v14];
  }

  return v12;
}

@end