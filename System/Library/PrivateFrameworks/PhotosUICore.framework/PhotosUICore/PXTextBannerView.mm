@interface PXTextBannerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXTextBannerView)initWithFrame:(CGRect)frame;
- (void)_updateSubviews;
- (void)layoutSubviews;
- (void)setDestructiveText:(BOOL)text;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
@end

@implementation PXTextBannerView

- (void)layoutSubviews
{
  [(PXTextBannerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_backgroundView setFrame:?];
  if (self->_textAlignment == 1)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 5.0;
  }

  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  v15 = CGRectInset(v14, v11, 0.0);
  textLabel = self->_textLabel;

  [(UILabel *)textLabel setFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UILabel *)self->_textLabel sizeThatFits:?];
  v7 = 5.0;
  if (self->_textAlignment == 1)
  {
    v7 = 0.0;
  }

  v8 = v6 + v7 * 2.0;
  if (width < v8)
  {
    v8 = width;
  }

  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_updateSubviews
{
  [(UILabel *)self->_textLabel setText:self->_text];
  [(UILabel *)self->_textLabel setTextAlignment:self->_textAlignment];
  if (self->_destructiveText)
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v3 = ;
  [(UILabel *)self->_textLabel setTextColor:v3];
}

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(PXTextBannerView *)self _updateSubviews];
  }
}

- (void)setDestructiveText:(BOOL)text
{
  if (self->_destructiveText != text)
  {
    self->_destructiveText = text;
    [(PXTextBannerView *)self _updateSubviews];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  text = self->_text;
  v9 = textCopy;
  if (text != textCopy || (v6 = [(NSString *)text isEqualToString:textCopy], textCopy = v9, !v6))
  {
    v7 = [(NSString *)textCopy copy];
    v8 = self->_text;
    self->_text = v7;

    [(PXTextBannerView *)self _updateSubviews];
    textCopy = v9;
  }
}

- (PXTextBannerView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = PXTextBannerView;
  v3 = [(PXTextBannerView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPhotoViewGradient"];
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v5;

    [(PXTextBannerView *)v3 addSubview:v3->_backgroundView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v3->_textLabel;
    v3->_textLabel = v7;

    v9 = v3->_textLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v9 setBackgroundColor:clearColor];

    v11 = v3->_textLabel;
    v12 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    [(UILabel *)v11 setFont:v12];

    v13 = v3->_textLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v13 setTextColor:whiteColor];

    [(UILabel *)v3->_textLabel setTextAlignment:2];
    [(PXTextBannerView *)v3 addSubview:v3->_textLabel];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(PXTextBannerView *)v3 setBackgroundColor:clearColor2];

    [(PXTextBannerView *)v3 _updateSubviews];
  }

  return v3;
}

@end