@interface INMediaDestination(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INMediaDestination(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "mediaDestinationType")}];
  v3 = [v2 re_actionIdentifierHashValue];
  v4 = [a1 playlistName];
  v5 = [v4 re_actionIdentifierHashValue];

  return v5 ^ v3;
}

@end