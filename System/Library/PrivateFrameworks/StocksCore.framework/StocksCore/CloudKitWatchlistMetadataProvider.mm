@interface CloudKitWatchlistMetadataProvider
- (void)fetchMetadataForSymbols:(id)symbols completion:(id)completion;
@end

@implementation CloudKitWatchlistMetadataProvider

- (void)fetchMetadataForSymbols:(id)symbols completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1DACB9644();
  _Block_copy(v5);
  sub_1DACB71F4();
  sub_1DAB1B488(v6, self, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end