@interface UIView(Bridge)
- (BOOL)ts_safeAreaWidthExceedsReadableWidth;
- (void)ts_setPlusDCompositingFilter;
- (void)ts_setPlusLCompositingFilter;
@end

@implementation UIView(Bridge)

- (BOOL)ts_safeAreaWidthExceedsReadableWidth
{
  v2 = [a1 traitCollection];
  if ([v2 horizontalSizeClass] == 1)
  {

LABEL_4:
    [a1 safeAreaInsets];
    v6 = v5 <= 0.0;
    return !v6;
  }

  v3 = [a1 traitCollection];
  v4 = [v3 verticalSizeClass];

  if (v4 == 1)
  {
    goto LABEL_4;
  }

  [MEMORY[0x1E69DB878] _readableWidth];
  v8 = ceil(v7 * 0.125) * -8.0;
  v9 = [a1 safeAreaLayoutGuide];
  [v9 layoutFrame];
  v11 = v10;
  [a1 safeAreaInsets];
  v13 = v11 - v12;
  [a1 safeAreaInsets];
  v15 = v13 - v14;

  v6 = v15 + v8 <= 88.0;
  return !v6;
}

- (void)ts_setPlusDCompositingFilter
{
  v1 = *MEMORY[0x1E6979CE8];
  v2 = [a1 layer];
  [v2 setCompositingFilter:v1];
}

- (void)ts_setPlusLCompositingFilter
{
  v1 = *MEMORY[0x1E6979CF8];
  v2 = [a1 layer];
  [v2 setCompositingFilter:v1];
}

@end