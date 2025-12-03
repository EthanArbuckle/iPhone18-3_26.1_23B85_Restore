@interface SBBootDefaultsPosterCacheProvider
- (SBBootDefaultsPosterCacheProvider)init;
@end

@implementation SBBootDefaultsPosterCacheProvider

- (SBBootDefaultsPosterCacheProvider)init
{
  v7.receiver = self;
  v7.super_class = SBBootDefaultsPosterCacheProvider;
  v2 = [(SBBootDefaultsPosterCacheProvider *)&v7 init];
  if (v2)
  {
    v3 = +[SBDefaults localDefaults];
    bootDefaults = [v3 bootDefaults];
    bootDefaults = v2->_bootDefaults;
    v2->_bootDefaults = bootDefaults;
  }

  return v2;
}

@end