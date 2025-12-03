@interface NSSet(Functional)
- (BOOL)contains:()Functional;
@end

@implementation NSSet(Functional)

- (BOOL)contains:()Functional
{
  v3 = Find(self, a3);
  v4 = v3 != 0;

  return v4;
}

@end