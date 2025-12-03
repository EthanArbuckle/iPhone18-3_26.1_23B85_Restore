@interface TPSuperBottomBar
+ (double)defaultSideMarginForDoubleButton;
@end

@implementation TPSuperBottomBar

+ (double)defaultSideMarginForDoubleButton
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 <= 1024.0;
  result = 31.0;
  if (!v9)
  {
    return 25.0;
  }

  return result;
}

@end