@interface CloudKitWatchlistDefaultsProvider
- (void)fetchWatchlistDefaultsWithCompletion:(id)a3;
@end

@implementation CloudKitWatchlistDefaultsProvider

- (void)fetchWatchlistDefaultsWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_1DACB71F4();
  sub_1DAB19290(sub_1DAB1BC40, v4);
}

@end