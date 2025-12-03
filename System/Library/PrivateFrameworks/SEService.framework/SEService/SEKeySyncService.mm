@interface SEKeySyncService
+ (id)transcodeTLKShares:(id)shares fromCurrentIdentifier:(id)identifier toIdentity:(id)identity outError:(id *)error;
+ (void)recoveryDidComplete:(id)complete;
@end

@implementation SEKeySyncService

+ (id)transcodeTLKShares:(id)shares fromCurrentIdentifier:(id)identifier toIdentity:(id)identity outError:(id *)error
{
  if (error)
  {
    v7 = SESDefaultLogObject();
    v8 = *MEMORY[0x1E69E5148];
    *error = SESCreateAndLogError();
  }

  return 0;
}

+ (void)recoveryDidComplete:(id)complete
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced.shared"];
  [v3 setBool:1 forKey:@"keysync.recovery.required"];
  notify_post("com.apple.seservice.keysync.recoverydidcomplete");
}

@end