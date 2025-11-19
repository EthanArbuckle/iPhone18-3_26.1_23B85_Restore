@interface SHUDPairedUnlockPillViewController
- (id)subtitle;
@end

@implementation SHUDPairedUnlockPillViewController

- (id)subtitle
{
  v2 = [(SHUDPairedUnlockPillViewController *)self needsUpdate];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
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