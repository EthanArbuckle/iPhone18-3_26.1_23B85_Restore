@interface NSArray(PersonaUI)
- (id)pr_objectPassingTest:()PersonaUI;
@end

@implementation NSArray(PersonaUI)

- (id)pr_objectPassingTest:()PersonaUI
{
  v2 = [self indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [self objectAtIndex:v2];
  }

  return v3;
}

@end