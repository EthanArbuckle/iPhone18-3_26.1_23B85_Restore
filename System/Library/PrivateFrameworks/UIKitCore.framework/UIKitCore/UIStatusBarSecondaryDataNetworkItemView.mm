@interface UIStatusBarSecondaryDataNetworkItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
@end

@implementation UIStatusBarSecondaryDataNetworkItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  rawData = [data rawData];
  v6 = *(rawData + 2100);

  return [(UIStatusBarDataNetworkItemView *)self _updateWithData:rawData networkType:v6];
}

@end