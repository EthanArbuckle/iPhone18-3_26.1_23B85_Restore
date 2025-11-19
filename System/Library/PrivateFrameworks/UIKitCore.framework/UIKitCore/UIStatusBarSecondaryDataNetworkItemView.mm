@interface UIStatusBarSecondaryDataNetworkItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
@end

@implementation UIStatusBarSecondaryDataNetworkItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  v6 = *(v5 + 2100);

  return [(UIStatusBarDataNetworkItemView *)self _updateWithData:v5 networkType:v6];
}

@end