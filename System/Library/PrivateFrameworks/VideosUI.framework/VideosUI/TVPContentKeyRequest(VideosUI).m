@interface TVPContentKeyRequest(VideosUI)
- (uint64_t)offlineKeyRenewalPolicy;
- (void)setOfflineKeyRenewalPolicy:()VideosUI;
@end

@implementation TVPContentKeyRequest(VideosUI)

- (uint64_t)offlineKeyRenewalPolicy
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"OfflineKeyRenewalPolicyKey"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setOfflineKeyRenewalPolicy:()VideosUI
{
  v5 = [a1 userInfo];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [v5 setObject:v4 forKey:@"OfflineKeyRenewalPolicyKey"];
}

@end