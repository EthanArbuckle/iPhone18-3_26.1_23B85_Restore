@interface GEONavigationGuidanceState(RTNavigationManagerExtension)
- (id)description;
@end

@implementation GEONavigationGuidanceState(RTNavigationManagerExtension)

- (id)description
{
  v1 = MEMORY[0x277CCACA8];
  navigationState = [self navigationState];
  if (navigationState >= 9)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", navigationState];
  }

  else
  {
    v3 = off_2788D1298[navigationState];
  }

  v4 = [v1 stringWithFormat:@"navigation state, %@", v3];

  return v4;
}

@end