@interface SBHVibrantBorderView
- (void)mt_applyVisualStyling:(id)styling;
@end

@implementation SBHVibrantBorderView

- (void)mt_applyVisualStyling:(id)styling
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__SBHVibrantBorderView_mt_applyVisualStyling___block_invoke;
  v3[3] = &unk_1E808F560;
  v3[4] = self;
  [styling applyToView:self withColorBlock:v3];
}

void __46__SBHVibrantBorderView_mt_applyVisualStyling___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGColor];

  [v5 setBorderColor:v4];
}

@end