@interface SBSUIWallpaperButton
- (SBSUIWallpaperButton)init;
- (SBSUIWallpaperButton)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)setHighlighted:(BOOL)highlighted;
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

- (SBSUIWallpaperButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBSUIWallpaperButton;
  v3 = [(SBSUIWallpaperButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBSUIWallpaperButton *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  selfCopy = self;
  [(SBSUIWallpaperButton *)selfCopy setClipsToBounds:1];
  v20 = [MEMORY[0x1E69DC730] effectWithStyle:4];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v20];
  [(UIVisualEffectView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)v3 setUserInteractionEnabled:0];
  effectView = selfCopy->_effectView;
  selfCopy->_effectView = v3;
  v5 = v3;

  imageView = [(SBSUIWallpaperButton *)selfCopy imageView];
  [(SBSUIWallpaperButton *)selfCopy insertSubview:v5 belowSubview:imageView];

  array = [MEMORY[0x1E695DF70] array];
  leadingAnchor = [(UIVisualEffectView *)v5 leadingAnchor];
  leadingAnchor2 = [(SBSUIWallpaperButton *)selfCopy leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v10];

  trailingAnchor = [(UIVisualEffectView *)v5 trailingAnchor];
  trailingAnchor2 = [(SBSUIWallpaperButton *)selfCopy trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v13];

  topAnchor = [(UIVisualEffectView *)v5 topAnchor];
  topAnchor2 = [(SBSUIWallpaperButton *)selfCopy topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v16];

  bottomAnchor = [(UIVisualEffectView *)v5 bottomAnchor];
  bottomAnchor2 = [(SBSUIWallpaperButton *)selfCopy bottomAnchor];

  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v19];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    v5 = 0.1585;
  }

  else
  {
    v5 = 0.317;
  }

  traitCollection = [(SBSUIWallpaperButton *)self traitCollection];
  v7 = [traitCollection userInterfaceStyle] == 2;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SBSUIWallpaperButton_setHighlighted___block_invoke;
  v8[3] = &unk_1E789E1D0;
  v8[4] = self;
  highlightedCopy = highlighted;
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