@interface TPSCloudAccountChecker
+ (BOOL)isiCloudAccountEnabled;
+ (BOOL)isiCloudDataClassEnabled:(id)enabled;
+ (BOOL)isiCloudPlusEnabled;
+ (id)sharedAccountStore;
@end

@implementation TPSCloudAccountChecker

+ (id)sharedAccountStore
{
  if (sharedAccountStore_predicate != -1)
  {
    +[TPSCloudAccountChecker sharedAccountStore];
  }

  v3 = sharedAccountStore_sharedInstance;

  return v3;
}

uint64_t __44__TPSCloudAccountChecker_sharedAccountStore__block_invoke()
{
  sharedAccountStore_sharedInstance = objc_alloc_init(MEMORY[0x277CB8F48]);

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isiCloudAccountEnabled
{
  sharedAccountStore = [self sharedAccountStore];
  aa_primaryAppleAccount = [sharedAccountStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount != 0;
}

+ (BOOL)isiCloudPlusEnabled
{
  sharedAccountStore = [self sharedAccountStore];
  aa_primaryAppleAccount = [sharedAccountStore aa_primaryAppleAccount];

  LOBYTE(sharedAccountStore) = [aa_primaryAppleAccount aa_isCloudSubscriber];
  return sharedAccountStore;
}

+ (BOOL)isiCloudDataClassEnabled:(id)enabled
{
  enabledCopy = enabled;
  sharedAccountStore = [self sharedAccountStore];
  aa_primaryAppleAccount = [sharedAccountStore aa_primaryAppleAccount];

  enabledDataclasses = [aa_primaryAppleAccount enabledDataclasses];
  v8 = [enabledDataclasses containsObject:enabledCopy];

  return v8;
}

@end