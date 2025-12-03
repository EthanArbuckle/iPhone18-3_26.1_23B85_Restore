@interface NSArray(Functional)
- (BOOL)ses_contains:()Functional;
@end

@implementation NSArray(Functional)

- (BOOL)ses_contains:()Functional
{
  v3 = Find(self, a3);
  v4 = v3 != 0;

  return v4;
}

@end