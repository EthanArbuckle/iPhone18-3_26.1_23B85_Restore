@interface SBAppSwitcherService
+ (id)switcherServiceWithName:(id)name viewServiceClassName:(id)className;
@end

@implementation SBAppSwitcherService

+ (id)switcherServiceWithName:(id)name viewServiceClassName:(id)className
{
  classNameCopy = className;
  nameCopy = name;
  v7 = objc_alloc_init(SBAppSwitcherService);
  [(SBAppSwitcherService *)v7 setBundleIdentifier:nameCopy];

  [(SBAppSwitcherService *)v7 setViewServiceClassName:classNameCopy];

  return v7;
}

@end