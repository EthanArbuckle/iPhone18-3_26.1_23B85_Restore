@interface SXFeedNavigationAppearance
- (NSString)iconImageIdentifier;
@end

@implementation SXFeedNavigationAppearance

- (NSString)iconImageIdentifier
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 scale];
  v5 = v4;

  if (v5 == 3.0)
  {
    v6 = [(SXFeedNavigationAppearance *)self icon3xImageIdentifier];
  }

  else
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
    v9 = v8;

    if (v9 == 2.0)
    {
      [(SXFeedNavigationAppearance *)self icon2xImageIdentifier];
    }

    else
    {
      [(SXFeedNavigationAppearance *)self icon1xImageIdentifier];
    }
    v6 = ;
  }

  return v6;
}

@end