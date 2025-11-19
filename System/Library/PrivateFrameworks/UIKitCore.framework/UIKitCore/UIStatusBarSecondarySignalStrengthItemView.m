@interface UIStatusBarSecondarySignalStrengthItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
@end

@implementation UIStatusBarSecondarySignalStrengthItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  v6 = *(v5 + 436);
  v7 = *(v5 + 444);
  if (v7 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  v9 = (*(v5 + 2529) >> 1) & 1;
  v10 = *(v5 + 2076) == 6;

  return [(UIStatusBarSignalStrengthItemView *)self _updateWithRaw:v6 bars:v8 enableRSSI:v9 showFailure:v10 useSmallBars:1];
}

@end