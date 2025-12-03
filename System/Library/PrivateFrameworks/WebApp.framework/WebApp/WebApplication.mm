@interface WebApplication
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation WebApplication

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v8.receiver = self;
  v8.super_class = WebApplication;
  [(WebApplication *)&v8 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  mainSystem = [MEMORY[0x277D75730] mainSystem];

  if (system == mainSystem)
  {
    mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
    [mEMORY[0x277D28BF0] setMenusIfNecessaryForWebAppWithBuilder:builderCopy];
  }
}

@end