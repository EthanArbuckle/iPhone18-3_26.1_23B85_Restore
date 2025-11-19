@interface PKPeerPaymentMessagesButton
+ (CGSize)referenceSize;
- (CGSize)imageSize;
- (PKPeerPaymentMessagesButton)init;
- (PKPeerPaymentMessagesButton)initWithFrame:(CGRect)a3;
- (PKPeerPaymentMessagesButton)initWithFrame:(CGRect)a3 usePlatterColor:(BOOL)a4;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setShowsActivityIndicator:(BOOL)a3;
@end

@implementation PKPeerPaymentMessagesButton

+ (CGSize)referenceSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (PKPeerPaymentMessagesButton)init
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [objc_opt_class() referenceSize];

  return [(PKPeerPaymentMessagesButton *)self initWithFrame:v3, v4, v5, v6];
}

- (PKPeerPaymentMessagesButton)initWithFrame:(CGRect)a3
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  [objc_opt_class() referenceSize];

  return [(PKPeerPaymentMessagesButton *)self initWithFrame:1 usePlatterColor:v4, v5, v6, v7];
}

- (PKPeerPaymentMessagesButton)initWithFrame:(CGRect)a3 usePlatterColor:(BOOL)a4
{
  v4 = a4;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentMessagesButton;
  v5 = [(PKPeerPaymentMessagesButton *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    if (v4)
    {
      v6 = +[PKPeerPaymentTheme platterPressedColor];
      highlightedBackgroundColor = v5->_highlightedBackgroundColor;
      v5->_highlightedBackgroundColor = v6;

      +[PKPeerPaymentTheme platterColor];
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] clearColor];
      v10 = v5->_highlightedBackgroundColor;
      v5->_highlightedBackgroundColor = v9;

      [MEMORY[0x1E69DC888] clearColor];
    }
    v8 = ;
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v8;

    [(PKPeerPaymentMessagesButton *)v5 setHighlighted:0];
    v12 = [(PKPeerPaymentMessagesButton *)v5 imageView];
    [v12 setContentMode:1];
  }

  return v5;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PKPeerPaymentMessagesButton;
  [(PKPeerPaymentMessagesButton *)&v6 setHighlighted:?];
  v5 = 1;
  if (v3)
  {
    v5 = 0;
  }

  [(PKPeerPaymentMessagesButton *)self setBackgroundColor:*(&self->super.super.super.super.super.isa + OBJC_IVAR___PKPeerPaymentMessagesButton__highlightedBackgroundColor[v5])];
}

- (void)setImageSize:(CGSize)a3
{
  if (self->_imageSize.width != a3.width || self->_imageSize.height != a3.height)
  {
    self->_imageSize = a3;
    [(PKPeerPaymentMessagesButton *)self setNeedsLayout];
  }
}

- (void)setShowsActivityIndicator:(BOOL)a3
{
  self->_showsActivityIndicator = a3;
  spinner = self->_spinner;
  if (a3)
  {
    v5 = 0.0;
    if (!spinner)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v7 = self->_spinner;
      self->_spinner = v6;

      v8 = self->_spinner;
      v9 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIActivityIndicatorView *)v8 setColor:v9];

      [(UIActivityIndicatorView *)self->_spinner startAnimating];
      [(PKPeerPaymentMessagesButton *)self addSubview:self->_spinner];
    }
  }

  else
  {
    v5 = 1.0;
    if (spinner)
    {
      [(UIActivityIndicatorView *)spinner removeFromSuperview];
      v10 = self->_spinner;
      self->_spinner = 0;
    }
  }

  v11 = [(PKPeerPaymentMessagesButton *)self titleLabel];
  [v11 setAlpha:v5];

  [(PKPeerPaymentMessagesButton *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentMessagesButton;
  [(PKPeerPaymentMessagesButton *)&v8 layoutSubviews];
  [(PKPeerPaymentMessagesButton *)self bounds];
  UIRectGetCenter();
  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner setCenter:v3, v4];
  }

  if (self->_imageSize.width != *MEMORY[0x1E695F060] || self->_imageSize.height != *(MEMORY[0x1E695F060] + 8))
  {
    v7 = [(PKPeerPaymentMessagesButton *)self imageView];
    UIRectCenteredAboutPoint();
    [v7 setFrame:?];
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end