@interface PKPeerPaymentMessagesButton
+ (CGSize)referenceSize;
- (CGSize)imageSize;
- (PKPeerPaymentMessagesButton)init;
- (PKPeerPaymentMessagesButton)initWithFrame:(CGRect)frame;
- (PKPeerPaymentMessagesButton)initWithFrame:(CGRect)frame usePlatterColor:(BOOL)color;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageSize:(CGSize)size;
- (void)setShowsActivityIndicator:(BOOL)indicator;
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

- (PKPeerPaymentMessagesButton)initWithFrame:(CGRect)frame
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  [objc_opt_class() referenceSize];

  return [(PKPeerPaymentMessagesButton *)self initWithFrame:1 usePlatterColor:v4, v5, v6, v7];
}

- (PKPeerPaymentMessagesButton)initWithFrame:(CGRect)frame usePlatterColor:(BOOL)color
{
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentMessagesButton;
  v5 = [(PKPeerPaymentMessagesButton *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    if (colorCopy)
    {
      v6 = +[PKPeerPaymentTheme platterPressedColor];
      highlightedBackgroundColor = v5->_highlightedBackgroundColor;
      v5->_highlightedBackgroundColor = v6;

      +[PKPeerPaymentTheme platterColor];
    }

    else
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      v10 = v5->_highlightedBackgroundColor;
      v5->_highlightedBackgroundColor = clearColor;

      [MEMORY[0x1E69DC888] clearColor];
    }
    v8 = ;
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v8;

    [(PKPeerPaymentMessagesButton *)v5 setHighlighted:0];
    imageView = [(PKPeerPaymentMessagesButton *)v5 imageView];
    [imageView setContentMode:1];
  }

  return v5;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = PKPeerPaymentMessagesButton;
  [(PKPeerPaymentMessagesButton *)&v6 setHighlighted:?];
  v5 = 1;
  if (highlightedCopy)
  {
    v5 = 0;
  }

  [(PKPeerPaymentMessagesButton *)self setBackgroundColor:*(&self->super.super.super.super.super.isa + OBJC_IVAR___PKPeerPaymentMessagesButton__highlightedBackgroundColor[v5])];
}

- (void)setImageSize:(CGSize)size
{
  if (self->_imageSize.width != size.width || self->_imageSize.height != size.height)
  {
    self->_imageSize = size;
    [(PKPeerPaymentMessagesButton *)self setNeedsLayout];
  }
}

- (void)setShowsActivityIndicator:(BOOL)indicator
{
  self->_showsActivityIndicator = indicator;
  spinner = self->_spinner;
  if (indicator)
  {
    v5 = 0.0;
    if (!spinner)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v7 = self->_spinner;
      self->_spinner = v6;

      v8 = self->_spinner;
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UIActivityIndicatorView *)v8 setColor:whiteColor];

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

  titleLabel = [(PKPeerPaymentMessagesButton *)self titleLabel];
  [titleLabel setAlpha:v5];

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
    imageView = [(PKPeerPaymentMessagesButton *)self imageView];
    UIRectCenteredAboutPoint();
    [imageView setFrame:?];
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