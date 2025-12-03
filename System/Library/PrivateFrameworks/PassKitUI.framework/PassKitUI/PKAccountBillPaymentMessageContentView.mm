@interface PKAccountBillPaymentMessageContentView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountBillPaymentMessageContentView)initWithFrame:(CGRect)frame;
- (id)imageView;
- (id)messageTextView;
- (void)layoutSubviews;
- (void)setAttributedMessage:(id)message;
- (void)setMessage:(id)message;
- (void)setSystemImage:(id)image;
@end

@implementation PKAccountBillPaymentMessageContentView

- (PKAccountBillPaymentMessageContentView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PKAccountBillPaymentMessageContentView;
  v3 = [(PKAccountBillPaymentMessageContentView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PKAccountBillPaymentMessageContentView *)v3 setBackgroundColor:secondarySystemBackgroundColor];

    [(PKAccountBillPaymentMessageContentView *)v3 setUserInteractionEnabled:1];
    layer = [(PKAccountBillPaymentMessageContentView *)v3 layer];
    [layer setCornerRadius:14.0];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  }

  return v3;
}

- (void)setSystemImage:(id)image
{
  imageCopy = image;
  if (![(NSString *)self->_systemImage isEqualToString:?])
  {
    objc_storeStrong(&self->_systemImage, image);
    if (self->_systemImage)
    {
      imageView = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC30], 2, 0);
      v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:imageView scale:-1];
      v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:imageCopy withConfiguration:v6];
      imageView = [(PKAccountBillPaymentMessageContentView *)self imageView];
      [imageView setImage:v7];
    }

    else
    {
      [(UIImageView *)self->_imageView removeFromSuperview];
      imageView = self->_imageView;
      self->_imageView = 0;
    }

    [(PKAccountBillPaymentMessageContentView *)self setNeedsLayout];
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (![(NSString *)self->_message isEqualToString:?])
  {
    objc_storeStrong(&self->_message, message);
    attributedMessage = self->_attributedMessage;
    self->_attributedMessage = 0;

    if ([(NSString *)self->_message length])
    {
      messageTextView = [(PKAccountBillPaymentMessageContentView *)self messageTextView];
      [messageTextView setText:messageCopy];
    }

    else
    {
      [(UITextView *)self->_messageTextView removeFromSuperview];
      messageTextView = self->_messageTextView;
      self->_messageTextView = 0;
    }

    [(PKAccountBillPaymentMessageContentView *)self setNeedsLayout];
  }
}

- (void)setAttributedMessage:(id)message
{
  messageCopy = message;
  if (![(NSAttributedString *)self->_attributedMessage isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_attributedMessage, message);
    message = self->_message;
    self->_message = 0;

    if ([(NSAttributedString *)self->_attributedMessage length])
    {
      messageTextView = [messageCopy mutableCopy];
      v7 = [messageCopy length];
      v8 = *MEMORY[0x1E69DB648];
      _messageFont = [(PKAccountBillPaymentMessageContentView *)self _messageFont];
      [(UITextView *)messageTextView addAttribute:v8 value:_messageFont range:0, v7];

      v10 = *MEMORY[0x1E69DB650];
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UITextView *)messageTextView addAttribute:v10 value:labelColor range:0, v7];

      messageTextView = [(PKAccountBillPaymentMessageContentView *)self messageTextView];
      [messageTextView setAttributedText:messageTextView];
    }

    else
    {
      [(UITextView *)self->_messageTextView removeFromSuperview];
      messageTextView = self->_messageTextView;
      self->_messageTextView = 0;
    }

    [(PKAccountBillPaymentMessageContentView *)self setNeedsLayout];
  }
}

- (id)messageTextView
{
  messageTextView = self->_messageTextView;
  if (!messageTextView)
  {
    v4 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v5 = self->_messageTextView;
    self->_messageTextView = v4;

    [(UITextView *)self->_messageTextView setDelegate:self];
    [(UITextView *)self->_messageTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_messageTextView setEditable:0];
    [(UITextView *)self->_messageTextView setSelectable:1];
    [(UITextView *)self->_messageTextView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)self->_messageTextView setUserInteractionEnabled:1];
    v6 = self->_messageTextView;
    _messageFont = [(PKAccountBillPaymentMessageContentView *)self _messageFont];
    [(UITextView *)v6 setFont:_messageFont];

    v8 = self->_messageTextView;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UITextView *)v8 setTextColor:labelColor];

    [(PKAccountBillPaymentMessageContentView *)self addSubview:self->_messageTextView];
    messageTextView = self->_messageTextView;
  }

  return messageTextView;
}

- (id)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = self->_imageView;
    self->_imageView = v4;

    v6 = self->_imageView;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v6 setTintColor:labelColor];

    [(PKAccountBillPaymentMessageContentView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAccountBillPaymentMessageContentView;
  [(PKAccountBillPaymentMessageContentView *)&v3 layoutSubviews];
  [(PKAccountBillPaymentMessageContentView *)self bounds];
  [(PKAccountBillPaymentMessageContentView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKAccountBillPaymentMessageContentView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  width = bounds.size.width;
  memset(&v22, 0, sizeof(v22));
  v7 = bounds.origin.x + 16.0;
  v8 = bounds.origin.y + 10.0;
  remainder.origin.x = bounds.origin.x + 16.0;
  remainder.origin.y = bounds.origin.y + 10.0;
  v9 = bounds.size.height + -20.0;
  remainder.size.width = bounds.size.width + -32.0;
  remainder.size.height = bounds.size.height + -20.0;
  if ([(PKAccountBillPaymentMessageContentView *)self _shouldReverseLayoutDirection])
  {
    v10 = CGRectMaxXEdge;
  }

  else
  {
    v10 = CGRectMinXEdge;
  }

  imageView = self->_imageView;
  v12 = 0.0;
  v13 = 0.0;
  if (imageView)
  {
    [(UIImageView *)imageView sizeThatFits:width + -32.0, v9];
    v15 = v14;
    v13 = v16;
    v25.origin.x = v7;
    v25.origin.y = v8;
    v25.size.width = width + -32.0;
    v25.size.height = v9;
    CGRectDivide(v25, &v22, &remainder, v15, v10);
    PKSizeAlignedInRect();
    if (!layout)
    {
      [(UIImageView *)self->_imageView setFrame:?];
    }

    CGRectDivide(remainder, &v22, &remainder, 16.0, v10);
  }

  messageTextView = self->_messageTextView;
  if (messageTextView)
  {
    [(UITextView *)messageTextView sizeThatFits:remainder.size.width, remainder.size.height];
    v12 = v18;
    CGRectDivide(remainder, &v22, &remainder, v19, v10);
    if (!layout)
    {
      [(UITextView *)self->_messageTextView setFrame:*&v22.origin, *&v22.size];
    }
  }

  v20 = fmax(v12, v13) + 0.0 + 20.0;
  v21 = width;
  result.height = v20;
  result.width = v21;
  return result;
}

@end