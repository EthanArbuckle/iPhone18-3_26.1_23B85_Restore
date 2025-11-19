@interface SVVideoPlayButton
+ (id)disabledPlayImage;
+ (id)enabledPlayImage;
- (SVVideoPlayButton)initWithFrame:(CGRect)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (void)dealloc;
- (void)displayAsPaused;
- (void)layoutSubviews;
- (void)updateBackgroundColor;
@end

@implementation SVVideoPlayButton

- (SVVideoPlayButton)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SVVideoPlayButton;
  v3 = [(SVButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    [(SVVideoPlayButton *)v3 setTintColor:v4];

    v5 = MEMORY[0x277D75348];
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.9;
    }

    v7 = [v5 colorWithRed:0.282352941 green:0.282352941 blue:0.290196078 alpha:v6];
    [(UIView *)v3 sv_setPlayButtonBackgroundWithFallback:v7];
    v8 = [(SVVideoPlayButton *)v3 imageView];
    [v8 setContentMode:4];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v3 selector:sel_updateBackgroundColor name:*MEMORY[0x277D764C8] object:0];

    [(SVVideoPlayButton *)v3 displayAsPaused];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D764C8] object:0];

  v4.receiver = self;
  v4.super_class = SVVideoPlayButton;
  [(SVVideoPlayButton *)&v4 dealloc];
}

- (void)updateBackgroundColor
{
  v3 = [(SVVideoPlayButton *)self backgroundColor];
  v6 = [v3 colorWithAlphaComponent:0.9];

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v4 = [v6 colorWithAlphaComponent:1.0];

    v5 = v4;
  }

  else
  {
    v5 = v6;
  }

  v7 = v5;
  [(UIView *)self sv_setPlayButtonBackgroundWithFallback:v5];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = SVVideoPlayButton;
  [(SVVideoPlayButton *)&v7 layoutSubviews];
  v3 = [(SVVideoPlayButton *)self layer];
  [(SVVideoPlayButton *)self bounds];
  [v3 setCornerRadius:CGRectGetHeight(v8) * 0.5];

  v4 = [(SVVideoPlayButton *)self imageView];
  [v4 setFrame:{0.0, 0.0, 40.0, 40.0}];

  v5 = [(SVVideoPlayButton *)self imageView];
  [(SVVideoPlayButton *)self bounds];
  MidX = CGRectGetMidX(v9);
  [(SVVideoPlayButton *)self bounds];
  [v5 setCenter:{MidX, CGRectGetMidY(v10)}];
}

- (id)accessibilityLabel
{
  v2 = SVBundle();
  v3 = [v2 localizedStringForKey:@"Play" value:&stru_2877C2D00 table:0];

  return v3;
}

- (id)accessibilityHint
{
  v2 = SVBundle();
  v3 = [v2 localizedStringForKey:@"Double tap to begin video playback" value:&stru_2877C2D00 table:0];

  return v3;
}

+ (id)enabledPlayImage
{
  if (enabledPlayImage_onceToken != -1)
  {
    +[SVVideoPlayButton enabledPlayImage];
  }

  v3 = enabledPlayImage_image;

  return v3;
}

void __37__SVVideoPlayButton_enabledPlayImage__block_invoke()
{
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:40.0];
  v0 = [MEMORY[0x277D755B8] systemImageNamed:@"play.fill" withConfiguration:v4];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 imageWithTintColor:v1];
  v3 = enabledPlayImage_image;
  enabledPlayImage_image = v2;
}

+ (id)disabledPlayImage
{
  if (disabledPlayImage_onceToken != -1)
  {
    +[SVVideoPlayButton disabledPlayImage];
  }

  v3 = disabledPlayImage_image;

  return v3;
}

void __38__SVVideoPlayButton_disabledPlayImage__block_invoke()
{
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:40.0];
  v0 = [MEMORY[0x277D755B8] systemImageNamed:@"play.slash.fill" withConfiguration:v4];
  v1 = [MEMORY[0x277D75348] whiteColor];
  v2 = [v0 imageWithTintColor:v1];
  v3 = disabledPlayImage_image;
  disabledPlayImage_image = v2;
}

- (void)displayAsPaused
{
  v4 = +[SVVideoPlayButton enabledPlayImage];
  v3 = +[SVVideoPlayButton disabledPlayImage];
  [(SVVideoPlayButton *)self setImage:v4 forState:0];
  [(SVVideoPlayButton *)self setImage:v3 forState:2];
}

@end