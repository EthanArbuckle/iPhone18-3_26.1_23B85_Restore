@interface SBSUIWallpaperButton
- (SBSUIWallpaperButton)init;
- (SBSUIWallpaperButton)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SBSUIWallpaperButton

- (SBSUIWallpaperButton)init
{
  v5.receiver = self;
  v5.super_class = SBSUIWallpaperButton;
  v2 = [(SBSUIWallpaperButton *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBSUIWallpaperButton *)v2 _commonInit];
  }

  return v3;
}

- (SBSUIWallpaperButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBSUIWallpaperButton;
  v3 = [(SBSUIWallpaperButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBSUIWallpaperButton *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v2 = self;
  [(SBSUIWallpaperButton *)v2 setClipsToBounds:1];
  v20 = [MEMORY[0x1E69DC730] effectWithStyle:4];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v20];
  [(UIVisualEffectView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)v3 setUserInteractionEnabled:0];
  effectView = v2->_effectView;
  v2->_effectView = v3;
  v5 = v3;

  v6 = [(SBSUIWallpaperButton *)v2 imageView];
  [(SBSUIWallpaperButton *)v2 insertSubview:v5 belowSubview:v6];

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(UIVisualEffectView *)v5 leadingAnchor];
  v9 = [(SBSUIWallpaperButton *)v2 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v7 addObject:v10];

  v11 = [(UIVisualEffectView *)v5 trailingAnchor];
  v12 = [(SBSUIWallpaperButton *)v2 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v7 addObject:v13];

  v14 = [(UIVisualEffectView *)v5 topAnchor];
  v15 = [(SBSUIWallpaperButton *)v2 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v7 addObject:v16];

  v17 = [(UIVisualEffectView *)v5 bottomAnchor];
  v18 = [(SBSUIWallpaperButton *)v2 bottomAnchor];

  v19 = [v17 constraintEqualToAnchor:v18];
  [v7 addObject:v19];

  [MEMORY[0x1E696ACD8] activateConstraints:v7];
}

- (void)setHighlighted:(BOOL)a3
{
  if (a3)
  {
    v5 = 0.1585;
  }

  else
  {
    v5 = 0.317;
  }

  v6 = [(SBSUIWallpaperButton *)self traitCollection];
  v7 = [v6 userInterfaceStyle] == 2;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SBSUIWallpaperButton_setHighlighted___block_invoke;
  v8[3] = &unk_1E789E1D0;
  v8[4] = self;
  v9 = a3;
  v10 = v7;
  [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:v5];
}

void __39__SBSUIWallpaperButton_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 744);
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 41))
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }
  }

  else
  {
    v3 = 4;
  }

  v4 = [MEMORY[0x1E69DC730] effectWithStyle:v3];
  [v2 setEffect:v4];

  v5 = [*(*(a1 + 32) + 744) contentView];
  v8 = v5;
  if (*(a1 + 40) == 1 && (*(a1 + 41) & 1) != 0)
  {
    v6 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
    v7 = [v6 colorWithAlphaComponent:0.4];
    [v8 setBackgroundColor:v7];
  }

  else
  {
    [v5 setBackgroundColor:0];
  }
}

@end