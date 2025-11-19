@interface CLPlacemark(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation CLPlacemark(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v1 = [a1 location];
  [v1 coordinate];
  v3 = v2;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v5 = [v4 re_actionIdentifierHashValue];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  v7 = [v6 re_actionIdentifierHashValue];

  return v7 ^ v5;
}

@end