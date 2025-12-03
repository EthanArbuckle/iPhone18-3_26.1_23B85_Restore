@interface SearchUIWatchListButtonItem
- (id)commandForStatus:(unint64_t)status;
@end

@implementation SearchUIWatchListButtonItem

- (id)commandForStatus:(unint64_t)status
{
  v5 = objc_opt_new();
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  watchListItem = [sfButtonItem watchListItem];
  [v5 setWatchListItem:watchListItem];

  [v5 setShouldAddToWatchList:status == 0];

  return v5;
}

@end