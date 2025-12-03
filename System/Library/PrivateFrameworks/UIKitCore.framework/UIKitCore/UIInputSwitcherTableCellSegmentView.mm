@interface UIInputSwitcherTableCellSegmentView
- (CGSize)intrinsicContentSize;
- (UIInputSwitcherTableCellSegmentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
@end

@implementation UIInputSwitcherTableCellSegmentView

- (UIInputSwitcherTableCellSegmentView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = UIInputSwitcherTableCellSegmentView;
  v3 = [(UIView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIInputSwitcherTableCellBackgroundView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v9;

    [(UIView *)v3->_backgroundView setOpaque:0];
    v11 = +[UIColor clearColor];
    [(UIView *)v3->_backgroundView setBackgroundColor:v11];

    [(UIView *)v3->_backgroundView setUserInteractionEnabled:0];
    [(UIView *)v3 addSubview:v3->_backgroundView];
    v12 = [[UILabel alloc] initWithFrame:v5, v6, v7, v8];
    label = v3->_label;
    v3->_label = v12;

    _fontForBiasLabel = [objc_opt_class() _fontForBiasLabel];
    [(UILabel *)v3->_label setFont:_fontForBiasLabel];

    v15 = +[UIColor clearColor];
    [(UIView *)v3->_label setBackgroundColor:v15];

    [(UIView *)v3 addSubview:v3->_label];
    v16 = [[UIImageView alloc] initWithFrame:v5, v6, v7, v8];
    imageView = v3->_imageView;
    v3->_imageView = v16;

    [(UIView *)v3 addSubview:v3->_imageView];
    v18 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v18];
  }

  return v3;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  self->_selected = selected;
  backgroundView = [(UIInputSwitcherTableCellSegmentView *)self backgroundView];
  [backgroundView setSelected:selectedCopy];

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  if (([_inheritedRenderConfig colorAdaptiveBackground] & 1) == 0 && selectedCopy || -[UIInputSwitcherTableCellSegmentView usesDarkTheme](self, "usesDarkTheme"))
  {
    v7 = +[UIColor whiteColor];
  }

  else
  {
    v7 = +[UIColor blackColor];
  }

  v10 = v7;

  label = [(UIInputSwitcherTableCellSegmentView *)self label];
  [label setTextColor:v10];

  imageView = [(UIInputSwitcherTableCellSegmentView *)self imageView];
  [imageView setTintColor:v10];
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = UIInputSwitcherTableCellSegmentView;
  [(UIView *)&v28 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_backgroundView setFrame:round(v4 + (v3 + -64.0) * 0.5), round(v6 + (v5 + -39.0) * 0.5), 64.0, 39.0];
  [(UIView *)self->_label sizeToFit];
  [(UIView *)self->_label frame];
  v8 = v7;
  v10 = v9;
  [(UIView *)self bounds];
  [(UILabel *)self->_label setFrame:round(v12 + (v11 - v8) * 0.5), round(v14 + (v13 - v10) * 0.5), v8, v10];
  image = [(UIImageView *)self->_imageView image];

  imageView = self->_imageView;
  if (image)
  {
    [(UIImageView *)imageView setHidden:0];
    image2 = [(UIImageView *)self->_imageView image];
    [image2 size];
    v19 = v18;
    v21 = v20;

    [(UIView *)self bounds];
    v24 = round(v23 + (v22 - v19) * 0.5);
    v27 = round(v26 + (v25 - v21) * 0.5);
  }

  else
  {
    v24 = *MEMORY[0x1E695F058];
    v27 = *(MEMORY[0x1E695F058] + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
    [(UIImageView *)imageView setHidden:1];
  }

  [(UIImageView *)self->_imageView setFrame:v24, v27, v19, v21];
}

- (CGSize)intrinsicContentSize
{
  v2 = 64.0;
  v3 = 39.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end