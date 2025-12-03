@interface TimedMetadataManager
- (void)addObserverForPlayer:(id)player;
- (void)removeObserverForPlayer:(id)player;
@end

@implementation TimedMetadataManager

- (void)addObserverForPlayer:(id)player
{
  playerCopy = player;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E37C08B8(v6);
}

- (void)removeObserverForPlayer:(id)player
{
  playerCopy = player;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E37C09E0(v6);
}

@end