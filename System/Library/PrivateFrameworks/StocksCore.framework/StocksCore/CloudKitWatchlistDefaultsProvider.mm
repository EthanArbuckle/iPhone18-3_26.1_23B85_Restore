@interface CloudKitWatchlistDefaultsProvider
- (void)fetchWatchlistDefaultsWithCompletion:(id)completion;
@end

@implementation CloudKitWatchlistDefaultsProvider

- (void)fetchWatchlistDefaultsWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_1DACB71F4();
  sub_1DAB19290(sub_1DAB1BC40, v4);
}

@end