@interface SFMagicHeadPlaceholderView
- (SFMagicHeadPlaceholderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setTiltedTooFarColor:(BOOL)a3 useRaiseLabel:(BOOL)a4 useNoUWBCapableLabel:(BOOL)a5;
- (void)updateForCurrentState;
@end

@implementation SFMagicHeadPlaceholderView

- (SFMagicHeadPlaceholderView)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = SFMagicHeadPlaceholderView;
  v3 = [(SFMagicHeadPlaceholderView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFMagicHeadPlaceholderView *)v3 setBounds:0.0, 0.0, 128.0, 128.0];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(SFMagicHeadPlaceholderView *)v4 setBackgroundColor:v5];

    v6 = [SFMagicHeadCircleView alloc];
    [(SFMagicHeadPlaceholderView *)v4 bounds];
    v7 = [(SFMagicHeadCircleView *)v6 initWithFrame:?];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v7;

    v9 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v10 = [MEMORY[0x1E69DD248] effectForBlurEffect:v9 style:6];
    v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v10];
    backgroundVisualEffectView = v4->_backgroundVisualEffectView;
    v4->_backgroundVisualEffectView = v11;

    v13 = [(UIVisualEffectView *)v4->_backgroundVisualEffectView contentView];
    [v13 addSubview:v4->_backgroundView];

    [(SFMagicHeadPlaceholderView *)v4 addSubview:v4->_backgroundVisualEffectView];
    v14 = objc_alloc(MEMORY[0x1E69DCC10]);
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v4->_label;
    v4->_label = v15;

    [(UILabel *)v4->_label setTextAlignment:1];
    v17 = SFFontForTextStyleWithAdditionalSymbolicTraits(*MEMORY[0x1E69DDD28], 32770);
    [(UILabel *)v4->_label setFont:v17];

    [(UILabel *)v4->_label setNumberOfLines:2];
    v18 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:2 scale:64.0];
    v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up" withConfiguration:v18];
    v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v19];
    imageView = v4->_imageView;
    v4->_imageView = v20;

    v22 = [MEMORY[0x1E69DD248] effectForBlurEffect:v9 style:1];

    v23 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v22];
    contentVisualEffectView = v4->_contentVisualEffectView;
    v4->_contentVisualEffectView = v23;

    v25 = [(UIVisualEffectView *)v4->_contentVisualEffectView contentView];
    [v25 addSubview:v4->_label];

    v26 = [(UIVisualEffectView *)v4->_contentVisualEffectView contentView];
    [v26 addSubview:v4->_imageView];

    [(SFMagicHeadPlaceholderView *)v4 addSubview:v4->_contentVisualEffectView];
    [(SFMagicHeadPlaceholderView *)v4 updateForCurrentState];
  }

  return v4;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SFMagicHeadPlaceholderView;
  [(SFMagicHeadPlaceholderView *)&v6 layoutSubviews];
  [(SFMagicHeadPlaceholderView *)self bounds];
  [(UIVisualEffectView *)self->_backgroundVisualEffectView setFrame:?];
  [(UIVisualEffectView *)self->_backgroundVisualEffectView bounds];
  v8 = CGRectInset(v7, 30.0, 30.0);
  [(SFMagicHeadCircleView *)self->_backgroundView setFrame:v8.origin.x, v8.origin.y, v8.size.width, v8.size.height];
  [(SFMagicHeadPlaceholderView *)self bounds];
  v10 = CGRectInset(v9, 46.0, 65.0);
  [(UIVisualEffectView *)self->_contentVisualEffectView setFrame:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
  [(UIVisualEffectView *)self->_contentVisualEffectView bounds];
  MidX = CGRectGetMidX(v11);
  [(UIVisualEffectView *)self->_contentVisualEffectView bounds];
  MidY = CGRectGetMidY(v12);
  [(UIVisualEffectView *)self->_contentVisualEffectView bounds];
  [(UILabel *)self->_label setFrame:?];
  [(SFMagicHeadCircleView *)self->_backgroundView frame];
  v5 = CGRectGetWidth(v13) * 0.5;
  [(SFMagicHeadCircleView *)self->_backgroundView frame];
  [(UIImageView *)self->_imageView setBounds:0.0, 0.0, v5, CGRectGetHeight(v14) * 0.5];
  [(UIImageView *)self->_imageView setCenter:MidX, MidY];
}

- (void)setTiltedTooFarColor:(BOOL)a3 useRaiseLabel:(BOOL)a4 useNoUWBCapableLabel:(BOOL)a5
{
  if (self->_titledTooFarColor != a3 || self->_useRaiseLabel != a4 || self->_useNoUWBCapableLabel != a5)
  {
    self->_titledTooFarColor = a3;
    self->_useRaiseLabel = a4;
    self->_useNoUWBCapableLabel = 0;
    self->_canShowArrow = 1;
    [(SFMagicHeadPlaceholderView *)self updateForCurrentState];
  }
}

- (void)updateForCurrentState
{
  v3 = [MEMORY[0x1E69CDEB8] rootSettings];
  v7 = [v3 magicHeadSettings];

  v4 = 1.0;
  if (self->_titledTooFarColor)
  {
    [v7 guidanceTiltedTooFarAlpha];
  }

  [(UIVisualEffectView *)self->_backgroundVisualEffectView setAlpha:v4];
  if (self->_useRaiseLabel || self->_useNoUWBCapableLabel)
  {
    v5 = SFLocalizedStringForKeyInStringsFileNamed();
    [(UILabel *)self->_label setText:v5];

    [(UILabel *)self->_label setAlpha:1.0];
    v6 = 0.0;
  }

  else
  {
    [(UILabel *)self->_label setText:0];
    [(UILabel *)self->_label setAlpha:0.0];
    v6 = 0.6;
    if (!self->_canShowArrow)
    {
      v6 = 0.0;
    }
  }

  [(UIImageView *)self->_imageView setAlpha:v6];
  [(SFMagicHeadPlaceholderView *)self setNeedsLayout];
}

- (void)setAlpha:(double)a3
{
  [(UIVisualEffectView *)self->_backgroundVisualEffectView setAlpha:?];
  contentVisualEffectView = self->_contentVisualEffectView;

  [(UIVisualEffectView *)contentVisualEffectView setAlpha:a3];
}

@end