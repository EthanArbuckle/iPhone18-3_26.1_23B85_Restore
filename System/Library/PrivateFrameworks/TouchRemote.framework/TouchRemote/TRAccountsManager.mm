@interface TRAccountsManager
+ (id)sharedInstance;
- (ACAccount)activeiCloudAccount;
- (ACAccountStore)iCloudAccountStore;
- (GKLocalPlayer)localGameCenterPlayer;
- (NSString)deviceName;
- (NSString)homeSharingAppleID;
- (NSString)homeSharingGroupID;
- (SSAccount)activeiTunesStoreAccount;
- (id)accountTypesWithDefaultAccountID:(id)d;
- (id)defaultAccountIDForAuthenticationAccountType:(unint64_t)type;
@end

@implementation TRAccountsManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TRAccountsManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  return activeAccount;
}

- (ACAccountStore)iCloudAccountStore
{
  iCloudAccountStore = self->_iCloudAccountStore;
  if (!iCloudAccountStore)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v5 = self->_iCloudAccountStore;
    self->_iCloudAccountStore = defaultStore;

    iCloudAccountStore = self->_iCloudAccountStore;
  }

  return iCloudAccountStore;
}

- (ACAccount)activeiCloudAccount
{
  iCloudAccountStore = [(TRAccountsManager *)self iCloudAccountStore];
  aa_primaryAppleAccount = [iCloudAccountStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
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
  localPlayer = [v2 localPlayer];

  return localPlayer;
}

- (id)defaultAccountIDForAuthenticationAccountType:(unint64_t)type
{
  homeSharingAppleID = 0;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_12;
      }

      activeiCloudAccount = [(TRAccountsManager *)self activeiCloudAccount];
      username = [activeiCloudAccount username];
      goto LABEL_10;
    }

    activeiTunesStoreAccount = [(TRAccountsManager *)self activeiTunesStoreAccount];
LABEL_9:
    activeiCloudAccount = activeiTunesStoreAccount;
    username = [activeiTunesStoreAccount accountName];
LABEL_10:
    homeSharingAppleID = username;

    goto LABEL_12;
  }

  if (type != 3)
  {
    if (type != 4)
    {
      goto LABEL_12;
    }

    activeiTunesStoreAccount = [(TRAccountsManager *)self localGameCenterPlayer];
    goto LABEL_9;
  }

  homeSharingAppleID = [(TRAccountsManager *)self homeSharingAppleID];
LABEL_12:

  return homeSharingAppleID;
}

- (id)accountTypesWithDefaultAccountID:(id)d
{
  dCopy = d;
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_287F62A50];
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      unsignedIntegerValue = [v7 unsignedIntegerValue];

      v9 = [(TRAccountsManager *)self defaultAccountIDForAuthenticationAccountType:unsignedIntegerValue];
      if (([v9 isEqualToString:dCopy] & 1) == 0)
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