@interface SHUDPairedUnlockPillViewController
- (id)subtitle;
@end

@implementation SHUDPairedUnlockPillViewController

- (id)subtitle
{
  needsUpdate = [(SHUDPairedUnlockPillViewController *)self needsUpdate];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (needsUpdate)
  {
    v5 = @"UNLOCKING";
  }

  else
  {
    v5 = @"UNLOCKED";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:@"Localization"];

  return v6;
}

@end