@interface TVPContentKeyRequest(VideosUI)
- (uint64_t)offlineKeyRenewalPolicy;
- (void)setOfflineKeyRenewalPolicy:()VideosUI;
@end

@implementation TVPContentKeyRequest(VideosUI)

- (uint64_t)offlineKeyRenewalPolicy
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"OfflineKeyRenewalPolicyKey"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setOfflineKeyRenewalPolicy:()VideosUI
{
  userInfo = [self userInfo];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [userInfo setObject:v4 forKey:@"OfflineKeyRenewalPolicyKey"];
}

@end