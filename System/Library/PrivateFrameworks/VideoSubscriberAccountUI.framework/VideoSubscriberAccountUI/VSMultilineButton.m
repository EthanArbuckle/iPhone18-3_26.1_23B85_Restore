@interface VSMultilineButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VSMultilineButton)initWithCoder:(id)a3;
- (VSMultilineButton)initWithFrame:(CGRect)a3;
- (void)_updateTitleTextColor;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation VSMultilineButton

- (VSMultilineButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VSMultilineButton;
  v3 = [(VSMultilineButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

- (VSMultilineButton)initWithCoder:(id)a3
{
  v4 = a3;
  VSRequireKeyedCoder();
  v7.receiver = self;
  v7.super_class = VSMultilineButton;
  v5 = [(VSMultilineButton *)&v7 initWithCoder:v4];

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
  v3 = [(VSMultilineButton *)self tintColor];
  [(VSMultilineButton *)self setTitleColor:v3 forState:0];
}

- (CGSize)intrinsicContentSize
{
  [(VSMultilineButton *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(VSMultilineButton *)self titleLabel];
  [v11 intrinsicContentSize];
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
  v3 = [(VSMultilineButton *)self titleLabel];
  [v3 frame];
  [v3 setPreferredMaxLayoutWidth:v4];
  v5.receiver = self;
  v5.super_class = VSMultilineButton;
  [(VSMultilineButton *)&v5 layoutSubviews];
}

- (void)drawRect:(CGRect)a3
{
  if ([(VSMultilineButton *)self isHighlighted:a3.origin.x])
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
    [v4 set];

    v5 = MEMORY[0x277D75208];
    [(VSMultilineButton *)self bounds];
    v6 = [v5 bezierPathWithRoundedRect:? cornerRadius:?];
    [v6 fill];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(VSMultilineButton *)self titleLabel];
  [v5 sizeThatFits:{width, height}];
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