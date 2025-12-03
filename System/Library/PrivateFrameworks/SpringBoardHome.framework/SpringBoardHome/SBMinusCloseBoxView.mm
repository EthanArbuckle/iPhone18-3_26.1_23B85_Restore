@interface SBMinusCloseBoxView
- (id)defaultContentImage;
- (void)layoutSubviews;
@end

@implementation SBMinusCloseBoxView

- (id)defaultContentImage
{
  if (defaultContentImage_onceToken_199 != -1)
  {
    [SBMinusCloseBoxView defaultContentImage];
  }

  v3 = defaultContentImage___image_198;

  return v3;
}

void __42__SBMinusCloseBoxView_defaultContentImage__block_invoke()
{
  v2 = __sb__runningInSpringBoard();
  v3 = v2;
  if (v2)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v12 = @"IconCloseBoxMinus";
      goto LABEL_15;
    }
  }

  else
  {
    v0 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v0 userInterfaceIdiom] != 1)
    {
      v12 = @"IconCloseBoxMinus";
LABEL_14:

      goto LABEL_15;
    }
  }

  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v1 _referenceBounds];
  }

  BSSizeRoundForScale();
  v6 = @"IconCloseBoxMinusLarge";
  if (v7 < *(MEMORY[0x1E69D4380] + 280))
  {
    v6 = @"IconCloseBoxMinus";
  }

  v12 = v6;
  if ((v5 & 1) == 0)
  {
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v8 = MEMORY[0x1E69DCAB8];
  v9 = SBHBundle();
  v10 = [v8 imageNamed:v12 inBundle:v9];
  v11 = defaultContentImage___image_198;
  defaultContentImage___image_198 = v10;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBMinusCloseBoxView;
  [(SBHomeScreenButton *)&v6 layoutSubviews];
  materialView = [(SBHomeScreenButton *)self materialView];
  [(SBMinusCloseBoxView *)self bounds];
  [materialView setImageSize:{v4, v5}];
}

@end