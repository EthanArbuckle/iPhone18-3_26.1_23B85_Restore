@interface _SBUIWallpaperInstructionView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_SBUIWallpaperInstructionView)initWithImage:(id)image text:(id)text font:(id)font;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation _SBUIWallpaperInstructionView

- (_SBUIWallpaperInstructionView)initWithImage:(id)image text:(id)text font:(id)font
{
  imageCopy = image;
  textCopy = text;
  fontCopy = font;
  v17.receiver = self;
  v17.super_class = _SBUIWallpaperInstructionView;
  v11 = [(_SBUIWallpaperInstructionView *)&v17 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    imageView = v11->_imageView;
    v11->_imageView = v12;

    [(_SBUIWallpaperInstructionView *)v11 addSubview:v11->_imageView];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v11->_textLabel;
    v11->_textLabel = v14;

    [(UILabel *)v11->_textLabel setText:textCopy];
    [(UILabel *)v11->_textLabel setFont:fontCopy];
    [(UILabel *)v11->_textLabel setNumberOfLines:0];
    [(_SBUIWallpaperInstructionView *)v11 addSubview:v11->_textLabel];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIImageView *)self->_imageView sizeThatFits:?];
  v7 = v6;
  v9 = v8 + 5.0;
  [(UILabel *)self->_textLabel sizeThatFits:width - (v8 + 5.0), height];
  v12 = v9 + v11;
  if (v7 >= v10)
  {
    v10 = v7;
  }

  result.height = v10;
  result.width = v12;
  return result;
}

- (void)setTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = _SBUIWallpaperInstructionView;
  colorCopy = color;
  [(_SBUIWallpaperInstructionView *)&v5 setTintColor:colorCopy];
  [(UILabel *)self->_textLabel setTextColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)layoutSubviews
{
  [(_SBUIWallpaperInstructionView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_imageView sizeThatFits:v3, v5];
  [(UILabel *)self->_textLabel sizeThatFits:v4 - (v7 + 5.0), v6];
  BSRectWithSize();
  UIRectCenteredYInRectScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  BSRectWithSize();
  UIRectCenteredYInRectScale();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v23.origin.x = 0.0;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  v20 = CGRectGetMaxX(v23) + 5.0;
  [(UIImageView *)self->_imageView setFrame:0.0, v9, v11, v13, 0];
  textLabel = self->_textLabel;

  [(UILabel *)textLabel setFrame:v20, v15, v17, v19];
}

@end