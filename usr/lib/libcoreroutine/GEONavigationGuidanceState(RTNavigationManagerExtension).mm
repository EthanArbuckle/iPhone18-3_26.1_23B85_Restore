@interface GEONavigationGuidanceState(RTNavigationManagerExtension)
- (id)description;
@end

@implementation GEONavigationGuidanceState(RTNavigationManagerExtension)

- (id)description
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 navigationState];
  if (v2 >= 9)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v2];
  }

  else
  {
    v3 = off_2788D1298[v2];
  }

  v4 = [v1 stringWithFormat:@"navigation state, %@", v3];

  return v4;
}

@end