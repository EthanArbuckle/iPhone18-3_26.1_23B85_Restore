@interface SHUDPairedUnlockJindoViewController
- (id)subtitle;
@end

@implementation SHUDPairedUnlockJindoViewController

- (id)subtitle
{
  needsUpdate = [(SHUDPairedUnlockJindoViewController *)self needsUpdate];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (needsUpdate)
  {
    v5 = @"UNLOCKING_JINDO";
  }

  else
  {
    v5 = @"UNLOCKED_JINDO";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:@"Localization-D73"];

  return v6;
}

@end