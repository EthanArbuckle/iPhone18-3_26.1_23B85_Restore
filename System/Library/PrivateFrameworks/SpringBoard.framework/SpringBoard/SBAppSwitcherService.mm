@interface SBAppSwitcherService
+ (id)switcherServiceWithName:(id)a3 viewServiceClassName:(id)a4;
@end

@implementation SBAppSwitcherService

+ (id)switcherServiceWithName:(id)a3 viewServiceClassName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SBAppSwitcherService);
  [(SBAppSwitcherService *)v7 setBundleIdentifier:v6];

  [(SBAppSwitcherService *)v7 setViewServiceClassName:v5];

  return v7;
}

@end