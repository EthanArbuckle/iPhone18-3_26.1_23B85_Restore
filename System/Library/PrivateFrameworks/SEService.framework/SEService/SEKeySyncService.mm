@interface SEKeySyncService
+ (id)transcodeTLKShares:(id)a3 fromCurrentIdentifier:(id)a4 toIdentity:(id)a5 outError:(id *)a6;
+ (void)recoveryDidComplete:(id)a3;
@end

@implementation SEKeySyncService

+ (id)transcodeTLKShares:(id)a3 fromCurrentIdentifier:(id)a4 toIdentity:(id)a5 outError:(id *)a6
{
  if (a6)
  {
    v7 = SESDefaultLogObject();
    v8 = *MEMORY[0x1E69E5148];
    *a6 = SESCreateAndLogError();
  }

  return 0;
}

+ (void)recoveryDidComplete:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced.shared"];
  [v3 setBool:1 forKey:@"keysync.recovery.required"];
  notify_post("com.apple.seservice.keysync.recoverydidcomplete");
}

@end