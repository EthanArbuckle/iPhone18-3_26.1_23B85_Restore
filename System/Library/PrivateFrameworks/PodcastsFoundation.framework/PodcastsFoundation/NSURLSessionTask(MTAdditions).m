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
  v1 = objc_getAssociatedObject(a1, @"com.apple.podcasts.mtnsurlsessiontask.useBackgroundFetch");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setInteractive:()MTAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, @"com.apple.podcasts.mtnsurlsessiontask.interactive", v2, 0x301);
}

- (uint64_t)isInteractive
{
  v1 = objc_getAssociatedObject(a1, @"com.apple.podcasts.mtnsurlsessiontask.interactive");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setUserCanceledAuth:()MTAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, @"com.apple.podcasts.mtnsurlsessiontask.userCanceledAuth", v2, 0x301);
}

- (uint64_t)userCanceledAuth
{
  v1 = objc_getAssociatedObject(a1, @"com.apple.podcasts.mtnsurlsessiontask.userCanceledAuth");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setUseBackgroundFetch:()MTAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, @"com.apple.podcasts.mtnsurlsessiontask.useBackgroundFetch", v2, 0x301);
}

@end