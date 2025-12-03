@interface SBApplicationPlaceholder
- (BOOL)cancel;
- (BOOL)pause;
- (BOOL)prioritize;
- (BOOL)resume;
- (void)_reloadThumbnailImage;
@end

@implementation SBApplicationPlaceholder

- (BOOL)prioritize
{
  v3 = MEMORY[0x277D28AB8];
  applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting to prioritize placeholder."];
  [v3 logStep:6 byParty:10 phase:3 success:1 forBundleID:applicationBundleID description:v5];

  v7.receiver = self;
  v7.super_class = SBApplicationPlaceholder;
  return [(SBHProxiedApplicationPlaceholder *)&v7 prioritize];
}

- (BOOL)cancel
{
  v3 = MEMORY[0x277D28AB8];
  applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting to cancel placeholder."];
  [v3 logStep:7 byParty:10 phase:3 success:1 forBundleID:applicationBundleID description:v5];

  v7.receiver = self;
  v7.super_class = SBApplicationPlaceholder;
  return [(SBHProxiedApplicationPlaceholder *)&v7 cancel];
}

- (BOOL)pause
{
  v3 = MEMORY[0x277D28AB8];
  applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting to pause placeholder."];
  [v3 logStep:8 byParty:10 phase:3 success:1 forBundleID:applicationBundleID description:v5];

  v7.receiver = self;
  v7.super_class = SBApplicationPlaceholder;
  return [(SBHProxiedApplicationPlaceholder *)&v7 pause];
}

- (BOOL)resume
{
  v3 = MEMORY[0x277D28AB8];
  applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requesting to resume placeholder."];
  [v3 logStep:9 byParty:10 phase:3 success:1 forBundleID:applicationBundleID description:v5];

  v7.receiver = self;
  v7.super_class = SBApplicationPlaceholder;
  return [(SBHProxiedApplicationPlaceholder *)&v7 resume];
}

- (void)_reloadThumbnailImage
{
  v3 = MEMORY[0x277D28AB8];
  applicationBundleID = [(SBHProxiedApplicationPlaceholder *)self applicationBundleID];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reloading icon image."];
  [v3 logStep:2 byParty:10 phase:3 success:1 forBundleID:applicationBundleID description:v5];

  v6.receiver = self;
  v6.super_class = SBApplicationPlaceholder;
  [(SBHProxiedApplicationPlaceholder *)&v6 _reloadThumbnailImage];
}

@end