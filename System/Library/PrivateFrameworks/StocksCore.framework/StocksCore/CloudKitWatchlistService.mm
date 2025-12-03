@interface CloudKitWatchlistService
- (void)watchlistManager:(id)manager didChangeInWatchlist:(id)watchlist;
- (void)watchlistManager:(id)manager didChangeInWatchlistOrder:(id)order;
@end

@implementation CloudKitWatchlistService

- (void)watchlistManager:(id)manager didChangeInWatchlist:(id)watchlist
{
  sub_1DAA420F4(0, &qword_1EE11F8C8, off_1E85E2110);
  v4 = sub_1DACB9124();
  sub_1DACB71F4();
  sub_1DAB18244(&v4);
}

- (void)watchlistManager:(id)manager didChangeInWatchlistOrder:(id)order
{
  managerCopy = manager;
  orderCopy = order;
  sub_1DACB71F4();
  sub_1DAB1AA78(orderCopy);
}

@end