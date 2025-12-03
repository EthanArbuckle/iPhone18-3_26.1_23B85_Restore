@interface UIStatusBarSecondarySignalStrengthItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
@end

@implementation UIStatusBarSecondarySignalStrengthItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  rawData = [data rawData];
  v6 = *(rawData + 436);
  v7 = *(rawData + 444);
  if (v7 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  v9 = (*(rawData + 2529) >> 1) & 1;
  v10 = *(rawData + 2076) == 6;

  return [(UIStatusBarSignalStrengthItemView *)self _updateWithRaw:v6 bars:v8 enableRSSI:v9 showFailure:v10 useSmallBars:1];
}

@end