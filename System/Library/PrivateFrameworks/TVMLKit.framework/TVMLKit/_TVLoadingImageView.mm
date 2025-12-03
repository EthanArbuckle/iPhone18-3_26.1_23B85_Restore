@interface _TVLoadingImageView
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size;
- (_TVLoadingImageView)initWithFrame:(CGRect)frame;
- (void)_fadeInFadeOut;
@end

@implementation _TVLoadingImageView

- (_TVLoadingImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVLoadingImageView;
  v3 = [(_TVLoadingImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(_TVLoadingImageView *)v3 setBackgroundColor:whiteColor];

    [(_TVLoadingImageView *)v3 setAlpha:0.0];
    [(_TVLoadingImageView *)v3 _fadeInFadeOut];
  }

  return v3;
}

- (void)_fadeInFadeOut
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37___TVLoadingImageView__fadeInFadeOut__block_invoke;
  v5[3] = &unk_279D6E890;
  objc_copyWeak(&v6, &location);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37___TVLoadingImageView__fadeInFadeOut__block_invoke_2;
  v3[3] = &unk_279D6FB50;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:0 delay:v5 options:v3 animations:0.5 completion:0.0];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end