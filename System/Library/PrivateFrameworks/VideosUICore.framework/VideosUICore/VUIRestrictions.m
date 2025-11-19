@interface VUIRestrictions
+ (id)sharedInstance;
- (BOOL)allowsExplicitContent;
- (BOOL)allowsShowingUndownloadedMovies;
- (BOOL)allowsShowingUndownloadedTVShows;
@end

@implementation VUIRestrictions

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_0 != -1)
  {
    +[VUIRestrictions sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_2;

  return v3;
}

uint64_t __33__VUIRestrictions_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_2 = objc_alloc_init(VUIRestrictions);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)allowsShowingUndownloadedTVShows
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D26098]];

  return v3 != 2;
}

- (BOOL)allowsShowingUndownloadedMovies
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D26090]];

  return v3 != 2;
}

- (BOOL)allowsExplicitContent
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25E90]];

  return v3 != 2;
}

@end