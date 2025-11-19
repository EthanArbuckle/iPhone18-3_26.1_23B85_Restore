@interface LSApplicationRecord
- (id)mb_applicationType;
@end

@implementation LSApplicationRecord

- (id)mb_applicationType
{
  v2 = [(LSApplicationRecord *)self compatibilityObject];
  v3 = [v2 applicationType];

  return v3;
}

@end