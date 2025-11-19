@interface PKAccountBillPaymentMessageContentView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKAccountBillPaymentMessageContentView)initWithFrame:(CGRect)a3;
- (id)imageView;
- (id)messageTextView;
- (void)layoutSubviews;
- (void)setAttributedMessage:(id)a3;
- (void)setMessage:(id)a3;
- (void)setSystemImage:(id)a3;
@end

@implementation PKAccountBillPaymentMessageContentView

- (PKAccountBillPaymentMessageContentView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PKAccountBillPaymentMessageContentView;
  v3 = [(PKAccountBillPaymentMessageContentView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PKAccountBillPaymentMessageContentView *)v3 setBackgroundColor:v4];

    [(PKAccountBillPaymentMessageContentView *)v3 setUserInteractionEnabled:1];
    v5 = [(PKAccountBillPaymentMessageContentView *)v3 layer];
    [v5 setCornerRadius:14.0];
    [v5 setCornerCurve:*MEMORY[0x1E69796E8]];
  }

  return v3;
}

- (void)setSystemImage:(id)a3
{
  v9 = a3;
  if (![(NSString *)self->_systemImage isEqualToString:?])
  {
    objc_storeStrong(&self->_systemImage, a3);
    if (self->_systemImage)
    {
      imageView = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC30], 2, 0);
      v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:imageView scale:-1];
      v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9 withConfiguration:v6];
      v8 = [(PKAccountBillPaymentMessageContentView *)self imageView];
      [v8 setImage:v7];
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

- (void)setMessage:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_message isEqualToString:?])
  {
    objc_storeStrong(&self->_message, a3);
    attributedMessage = self->_attributedMessage;
    self->_attributedMessage = 0;

    if ([(NSString *)self->_message length])
    {
      messageTextView = [(PKAccountBillPaymentMessageContentView *)self messageTextView];
      [messageTextView setText:v7];
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

- (void)setAttributedMessage:(id)a3
{
  v13 = a3;
  if (![(NSAttributedString *)self->_attributedMessage isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_attributedMessage, a3);
    message = self->_message;
    self->_message = 0;

    if ([(NSAttributedString *)self->_attributedMessage length])
    {
      messageTextView = [v13 mutableCopy];
      v7 = [v13 length];
      v8 = *MEMORY[0x1E69DB648];
      v9 = [(PKAccountBillPaymentMessageContentView *)self _messageFont];
      [(UITextView *)messageTextView addAttribute:v8 value:v9 range:0, v7];

      v10 = *MEMORY[0x1E69DB650];
      v11 = [MEMORY[0x1E69DC888] labelColor];
      [(UITextView *)messageTextView addAttribute:v10 value:v11 range:0, v7];

      v12 = [(PKAccountBillPaymentMessageContentView *)self messageTextView];
      [v12 setAttributedText:messageTextView];
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
    v7 = [(PKAccountBillPaymentMessageContentView *)self _messageFont];
    [(UITextView *)v6 setFont:v7];

    v8 = self->_messageTextView;
    v9 = [MEMORY[0x1E69DC888] labelColor];
    [(UITextView *)v8 setTextColor:v9];

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
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v6 setTintColor:v7];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKAccountBillPaymentMessageContentView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  width = a3.size.width;
  memset(&v22, 0, sizeof(v22));
  v7 = a3.origin.x + 16.0;
  v8 = a3.origin.y + 10.0;
  remainder.origin.x = a3.origin.x + 16.0;
  remainder.origin.y = a3.origin.y + 10.0;
  v9 = a3.size.height + -20.0;
  remainder.size.width = a3.size.width + -32.0;
  remainder.size.height = a3.size.height + -20.0;
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
    if (!a4)
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
    if (!a4)
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