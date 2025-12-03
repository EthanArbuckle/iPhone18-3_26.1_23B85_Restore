@interface NSURLSessionTask(MTAdditions)
- (uint64_t)isInteractive;
- (uint64_t)useBackgroundFetch;
- (uint64_t)userCanceledAuth;
- (void)setInteractive:()MTAdditions;
- (void)setUseBackgroundFetch:()MTAdditions;
- (void)setUserCanceledAuth:()MTAdditions;
@end

@implementation NSURLSessionTask(MTAdditions)

- (uint64_t)useBackgroundFetch
{
  v1 = objc_getAssociatedObject(self, @"com.apple.podcasts.mtnsurlsessiontask.useBackgroundFetch");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setInteractive:()MTAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, @"com.apple.podcasts.mtnsurlsessiontask.interactive", v2, 0x301);
}

- (uint64_t)isInteractive
{
  v1 = objc_getAssociatedObject(self, @"com.apple.podcasts.mtnsurlsessiontask.interactive");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setUserCanceledAuth:()MTAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, @"com.apple.podcasts.mtnsurlsessiontask.userCanceledAuth", v2, 0x301);
}

- (uint64_t)userCanceledAuth
{
  v1 = objc_getAssociatedObject(self, @"com.apple.podcasts.mtnsurlsessiontask.userCanceledAuth");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setUseBackgroundFetch:()MTAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, @"com.apple.podcasts.mtnsurlsessiontask.useBackgroundFetch", v2, 0x301);
}

@end