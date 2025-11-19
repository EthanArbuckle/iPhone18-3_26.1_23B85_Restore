@interface TimedMetadataManager
- (void)addObserverForPlayer:(id)a3;
- (void)removeObserverForPlayer:(id)a3;
@end

@implementation TimedMetadataManager

- (void)addObserverForPlayer:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E37C08B8(v6);
}

- (void)removeObserverForPlayer:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E37C09E0(v6);
}

@end