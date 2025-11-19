@interface WebApplication
- (void)buildMenuWithBuilder:(id)a3;
@end

@implementation WebApplication

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WebApplication;
  [(WebApplication *)&v8 buildMenuWithBuilder:v4];
  v5 = [v4 system];
  v6 = [MEMORY[0x277D75730] mainSystem];

  if (v5 == v6)
  {
    v7 = [MEMORY[0x277D28BF0] sharedProvider];
    [v7 setMenusIfNecessaryForWebAppWithBuilder:v4];
  }
}

@end