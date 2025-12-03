@interface SXFeedNavigationAppearance
- (NSString)iconImageIdentifier;
@end

@implementation SXFeedNavigationAppearance

- (NSString)iconImageIdentifier
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  if (v5 == 3.0)
  {
    icon3xImageIdentifier = [(SXFeedNavigationAppearance *)self icon3xImageIdentifier];
  }

  else
  {
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v9 = v8;

    if (v9 == 2.0)
    {
      [(SXFeedNavigationAppearance *)self icon2xImageIdentifier];
    }

    else
    {
      [(SXFeedNavigationAppearance *)self icon1xImageIdentifier];
    }
    icon3xImageIdentifier = ;
  }

  return icon3xImageIdentifier;
}

@end