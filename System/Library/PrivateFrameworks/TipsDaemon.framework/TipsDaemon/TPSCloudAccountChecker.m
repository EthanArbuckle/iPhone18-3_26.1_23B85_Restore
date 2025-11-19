@interface TPSCloudAccountChecker
+ (BOOL)isiCloudAccountEnabled;
+ (BOOL)isiCloudDataClassEnabled:(id)a3;
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
  v2 = [a1 sharedAccountStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3 != 0;
}

+ (BOOL)isiCloudPlusEnabled
{
  v2 = [a1 sharedAccountStore];
  v3 = [v2 aa_primaryAppleAccount];

  LOBYTE(v2) = [v3 aa_isCloudSubscriber];
  return v2;
}

+ (BOOL)isiCloudDataClassEnabled:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedAccountStore];
  v6 = [v5 aa_primaryAppleAccount];

  v7 = [v6 enabledDataclasses];
  v8 = [v7 containsObject:v4];

  return v8;
}

@end