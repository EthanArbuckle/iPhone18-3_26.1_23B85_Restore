@interface NSSet(PSSearchAdditions)
- (id)setByIntersectingWithSet:()PSSearchAdditions;
@end

@implementation NSSet(PSSearchAdditions)

- (id)setByIntersectingWithSet:()PSSearchAdditions
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = [v4 setWithSet:a1];
  [v6 intersectSet:v5];

  return v6;
}

@end