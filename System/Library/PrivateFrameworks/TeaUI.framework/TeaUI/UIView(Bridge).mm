@interface UIView(Bridge)
- (BOOL)ts_safeAreaWidthExceedsReadableWidth;
- (void)ts_setPlusDCompositingFilter;
- (void)ts_setPlusLCompositingFilter;
@end

@implementation UIView(Bridge)

- (BOOL)ts_safeAreaWidthExceedsReadableWidth
{
  traitCollection = [self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {

LABEL_4:
    [self safeAreaInsets];
    v6 = v5 <= 0.0;
    return !v6;
  }

  traitCollection2 = [self traitCollection];
  verticalSizeClass = [traitCollection2 verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    goto LABEL_4;
  }

  [MEMORY[0x1E69DB878] _readableWidth];
  v8 = ceil(v7 * 0.125) * -8.0;
  safeAreaLayoutGuide = [self safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v11 = v10;
  [self safeAreaInsets];
  v13 = v11 - v12;
  [self safeAreaInsets];
  v15 = v13 - v14;

  v6 = v15 + v8 <= 88.0;
  return !v6;
}

- (void)ts_setPlusDCompositingFilter
{
  v1 = *MEMORY[0x1E6979CE8];
  layer = [self layer];
  [layer setCompositingFilter:v1];
}

- (void)ts_setPlusLCompositingFilter
{
  v1 = *MEMORY[0x1E6979CF8];
  layer = [self layer];
  [layer setCompositingFilter:v1];
}

@end