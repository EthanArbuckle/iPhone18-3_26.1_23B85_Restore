@interface UIScreen(TelephonyUI)
- (BOOL)isUserInterfaceIdiomPad;
- (uint64_t)screenSizeCategory;
@end

@implementation UIScreen(TelephonyUI)

- (uint64_t)screenSizeCategory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIScreen_TelephonyUI__screenSizeCategory__block_invoke;
  block[3] = &unk_1E7C0C368;
  block[4] = self;
  if (screenSizeCategory_onceToken != -1)
  {
    dispatch_once(&screenSizeCategory_onceToken, block);
  }

  return screenSizeCategory_screenCategory;
}

- (BOOL)isUserInterfaceIdiomPad
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection userInterfaceIdiom] == 1;

  return v2;
}

@end