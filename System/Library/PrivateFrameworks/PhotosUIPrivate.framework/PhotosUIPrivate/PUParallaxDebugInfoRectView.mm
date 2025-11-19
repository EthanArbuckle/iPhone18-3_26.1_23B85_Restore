@interface PUParallaxDebugInfoRectView
- (PUParallaxDebugInfoRectView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setIdentifier:(id)a3;
@end

@implementation PUParallaxDebugInfoRectView

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  if (identifier != v4)
  {
    v10 = v4;
    identifier = [identifier isEqual:v4];
    v4 = v10;
    if ((identifier & 1) == 0)
    {
      v6 = [v10 copy];
      v7 = self->_identifier;
      self->_identifier = v6;

      v8 = self->_identifier;
      v9 = [(PUParallaxDebugInfoRectView *)self textLabel];
      [v9 setText:v8];

      identifier = [(PUParallaxDebugInfoRectView *)self setNeedsLayout];
      v4 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](identifier, v4);
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PUParallaxDebugInfoRectView;
  [(PUParallaxDebugInfoRectView *)&v15 layoutSubviews];
  v3 = [(PUParallaxDebugInfoRectView *)self textLabel];
  [(PUParallaxDebugInfoRectView *)self bounds];
  [v3 sizeThatFits:{v4, v5}];
  PXRectWithOriginAndSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(PUParallaxDebugInfoRectView *)self textLabel];
  [v14 setFrame:{v7, v9, v11, v13}];
}

- (PUParallaxDebugInfoRectView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = PUParallaxDebugInfoRectView;
  v3 = [(PUParallaxDebugInfoRectView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PUParallaxDebugInfoRectView *)v3 layer];
    [v5 setBorderWidth:2.0];

    v6 = [MEMORY[0x1E69DC888] redColor];
    v7 = [v6 CGColor];
    v8 = [(PUParallaxDebugInfoRectView *)v4 layer];
    [v8 setBorderColor:v7];

    v9 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PUParallaxDebugInfoRectView *)v4 bounds];
    v10 = [v9 initWithFrame:?];
    v11 = [MEMORY[0x1E69DC888] redColor];
    [(UILabel *)v10 setBackgroundColor:v11];

    v12 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v10 setTextColor:v12];

    [(UILabel *)v10 setUserInteractionEnabled:0];
    [(PUParallaxDebugInfoRectView *)v4 addSubview:v10];
    textLabel = v4->_textLabel;
    v4->_textLabel = v10;
  }

  return v4;
}

@end