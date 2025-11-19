@interface TRAccountsManager
+ (id)sharedInstance;
- (ACAccount)activeiCloudAccount;
- (ACAccountStore)iCloudAccountStore;
- (GKLocalPlayer)localGameCenterPlayer;
- (NSString)deviceName;
- (NSString)homeSharingAppleID;
- (NSString)homeSharingGroupID;
- (SSAccount)activeiTunesStoreAccount;
- (id)accountTypesWithDefaultAccountID:(id)a3;
- (id)defaultAccountIDForAuthenticationAccountType:(unint64_t)a3;
@end

@implementation TRAccountsManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TRAccountsManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

uint64_t __35__TRAccountsManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (NSString)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (SSAccount)activeiTunesStoreAccount
{
  v2 = [MEMORY[0x277D69A20] defaultStore];
  v3 = [v2 activeAccount];

  return v3;
}

- (ACAccountStore)iCloudAccountStore
{
  iCloudAccountStore = self->_iCloudAccountStore;
  if (!iCloudAccountStore)
  {
    v4 = [MEMORY[0x277CB8F48] defaultStore];
    v5 = self->_iCloudAccountStore;
    self->_iCloudAccountStore = v4;

    iCloudAccountStore = self->_iCloudAccountStore;
  }

  return iCloudAccountStore;
}

- (ACAccount)activeiCloudAccount
{
  v2 = [(TRAccountsManager *)self iCloudAccountStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

- (NSString)homeSharingAppleID
{
  v2 = CFPreferencesCopyAppValue(@"homeSharingAppleID", @"com.apple.homesharing");

  return v2;
}

- (NSString)homeSharingGroupID
{
  v2 = CFPreferencesCopyAppValue(@"homeSharingGroupID", @"com.apple.homesharing");

  return v2;
}

- (GKLocalPlayer)localGameCenterPlayer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getGKLocalPlayerClass_softClass;
  v10 = getGKLocalPlayerClass_softClass;
  if (!getGKLocalPlayerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getGKLocalPlayerClass_block_invoke;
    v6[3] = &unk_279DCEB40;
    v6[4] = &v7;
    __getGKLocalPlayerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 localPlayer];

  return v4;
}

- (id)defaultAccountIDForAuthenticationAccountType:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_12;
      }

      v4 = [(TRAccountsManager *)self activeiCloudAccount];
      v5 = [v4 username];
      goto LABEL_10;
    }

    v6 = [(TRAccountsManager *)self activeiTunesStoreAccount];
LABEL_9:
    v4 = v6;
    v5 = [v6 accountName];
LABEL_10:
    v3 = v5;

    goto LABEL_12;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      goto LABEL_12;
    }

    v6 = [(TRAccountsManager *)self localGameCenterPlayer];
    goto LABEL_9;
  }

  v3 = [(TRAccountsManager *)self homeSharingAppleID];
LABEL_12:

  return v3;
}

- (id)accountTypesWithDefaultAccountID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_287F62A50];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      v8 = [v7 unsignedIntegerValue];

      v9 = [(TRAccountsManager *)self defaultAccountIDForAuthenticationAccountType:v8];
      if (([v9 isEqualToString:v4] & 1) == 0)
      {
        [v5 removeObjectAtIndex:v6--];
      }

      ++v6;
    }

    while (v6 < [v5 count]);
  }

  return v5;
}

@end