@interface CLPlacemark(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation CLPlacemark(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  location = [self location];
  [location coordinate];
  v3 = v2;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  re_actionIdentifierHashValue = [v4 re_actionIdentifierHashValue];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  re_actionIdentifierHashValue2 = [v6 re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue2 ^ re_actionIdentifierHashValue;
}

@end