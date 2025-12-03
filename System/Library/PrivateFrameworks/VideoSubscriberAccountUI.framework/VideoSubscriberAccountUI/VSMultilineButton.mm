@interface VSMultilineButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VSMultilineButton)initWithCoder:(id)coder;
- (VSMultilineButton)initWithFrame:(CGRect)frame;
- (void)_updateTitleTextColor;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation VSMultilineButton

- (VSMultilineButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VSMultilineButton;
  v3 = [(VSMultilineButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

- (VSMultilineButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder();
  v7.receiver = self;
  v7.super_class = VSMultilineButton;
  v5 = [(VSMultilineButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
    commonInit(v5);
  }

  return v5;
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSMultilineButton;
  [(VSMultilineButton *)&v3 dealloc];
}

- (void)_updateTitleTextColor
{
  tintColor = [(VSMultilineButton *)self tintColor];
  [(VSMultilineButton *)self setTitleColor:tintColor forState:0];
}

- (CGSize)intrinsicContentSize
{
  [(VSMultilineButton *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  titleLabel = [(VSMultilineButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v13 = v12;
  v15 = v14;

  v16 = v4 + v8 + v15;
  v17 = v6 + v10 + v13;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = VSMultilineButton;
  [(VSMultilineButton *)&v6 layoutSubviews];
  titleLabel = [(VSMultilineButton *)self titleLabel];
  [titleLabel frame];
  [titleLabel setPreferredMaxLayoutWidth:v4];
  v5.receiver = self;
  v5.super_class = VSMultilineButton;
  [(VSMultilineButton *)&v5 layoutSubviews];
}

- (void)drawRect:(CGRect)rect
{
  if ([(VSMultilineButton *)self isHighlighted:rect.origin.x])
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
    [v4 set];

    v5 = MEMORY[0x277D75208];
    [(VSMultilineButton *)self bounds];
    v6 = [v5 bezierPathWithRoundedRect:? cornerRadius:?];
    [v6 fill];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  titleLabel = [(VSMultilineButton *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = VSMultilineButton;
  [(VSMultilineButton *)&v3 tintColorDidChange];
  [(VSMultilineButton *)self _updateTitleTextColor];
}

@end