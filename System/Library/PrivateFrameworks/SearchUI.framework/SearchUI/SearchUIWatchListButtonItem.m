@interface SearchUIWatchListButtonItem
- (id)commandForStatus:(unint64_t)a3;
@end

@implementation SearchUIWatchListButtonItem

- (id)commandForStatus:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(SearchUIButtonItem *)self sfButtonItem];
  v7 = [v6 watchListItem];
  [v5 setWatchListItem:v7];

  [v5 setShouldAddToWatchList:a3 == 0];

  return v5;
}

@end