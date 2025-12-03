@interface INMediaDestination(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INMediaDestination(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "mediaDestinationType")}];
  re_actionIdentifierHashValue = [v2 re_actionIdentifierHashValue];
  playlistName = [self playlistName];
  re_actionIdentifierHashValue2 = [playlistName re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue2 ^ re_actionIdentifierHashValue;
}

@end