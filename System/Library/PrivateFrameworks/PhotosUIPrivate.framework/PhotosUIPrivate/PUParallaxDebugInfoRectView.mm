@interface PUParallaxDebugInfoRectView
- (PUParallaxDebugInfoRectView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setIdentifier:(id)identifier;
@end

@implementation PUParallaxDebugInfoRectView

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = self->_identifier;
  if (identifier != identifierCopy)
  {
    v10 = identifierCopy;
    identifier = [identifier isEqual:identifierCopy];
    identifierCopy = v10;
    if ((identifier & 1) == 0)
    {
      v6 = [v10 copy];
      v7 = self->_identifier;
      self->_identifier = v6;

      v8 = self->_identifier;
      textLabel = [(PUParallaxDebugInfoRectView *)self textLabel];
      [textLabel setText:v8];

      identifier = [(PUParallaxDebugInfoRectView *)self setNeedsLayout];
      identifierCopy = v10;
    }
  }

  MEMORY[0x1EEE66BB8](identifier, identifierCopy);
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PUParallaxDebugInfoRectView;
  [(PUParallaxDebugInfoRectView *)&v15 layoutSubviews];
  textLabel = [(PUParallaxDebugInfoRectView *)self textLabel];
  [(PUParallaxDebugInfoRectView *)self bounds];
  [textLabel sizeThatFits:{v4, v5}];
  PXRectWithOriginAndSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  textLabel2 = [(PUParallaxDebugInfoRectView *)self textLabel];
  [textLabel2 setFrame:{v7, v9, v11, v13}];
}

- (PUParallaxDebugInfoRectView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = PUParallaxDebugInfoRectView;
  v3 = [(PUParallaxDebugInfoRectView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PUParallaxDebugInfoRectView *)v3 layer];
    [layer setBorderWidth:2.0];

    redColor = [MEMORY[0x1E69DC888] redColor];
    cGColor = [redColor CGColor];
    layer2 = [(PUParallaxDebugInfoRectView *)v4 layer];
    [layer2 setBorderColor:cGColor];

    v9 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PUParallaxDebugInfoRectView *)v4 bounds];
    v10 = [v9 initWithFrame:?];
    redColor2 = [MEMORY[0x1E69DC888] redColor];
    [(UILabel *)v10 setBackgroundColor:redColor2];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v10 setTextColor:whiteColor];

    [(UILabel *)v10 setUserInteractionEnabled:0];
    [(PUParallaxDebugInfoRectView *)v4 addSubview:v10];
    textLabel = v4->_textLabel;
    v4->_textLabel = v10;
  }

  return v4;
}

@end