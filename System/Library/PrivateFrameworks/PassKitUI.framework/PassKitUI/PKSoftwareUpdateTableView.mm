@interface PKSoftwareUpdateTableView
- (PKSoftwareUpdateTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)_messageAttributedStringWithTextColor:(id)color;
- (void)layoutSubviews;
- (void)setContext:(int64_t)context;
- (void)setLinkColor:(id)color;
- (void)setTextColor:(id)color;
@end

@implementation PKSoftwareUpdateTableView

- (PKSoftwareUpdateTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v26.receiver = self;
  v26.super_class = PKSoftwareUpdateTableView;
  v4 = [(PKSoftwareUpdateTableView *)&v26 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    textColor = v4->_textColor;
    v4->_textColor = grayColor;

    linkColor = v4->_linkColor;
    v4->_linkColor = 0;

    v8 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    scrollView = v4->_scrollView;
    v4->_scrollView = v8;

    [(PKSoftwareUpdateTableView *)v4 addSubview:v4->_scrollView];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v10;

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    v12 = v4->_titleLabel;
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v12 setFont:v13];

    v14 = v4->_titleLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v14 setBackgroundColor:clearColor];

    [(UILabel *)v4->_titleLabel setTextColor:v4->_textColor];
    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v16 = PKDeviceSpecificLocalizedStringKeyForKey(@"FAIL_FORWARD_UPDATE_TITLE", 0);
    v17 = v4->_titleLabel;
    v18 = PKLocalizedPaymentString(v16);
    [(UILabel *)v17 setText:v18];

    [(UIScrollView *)v4->_scrollView addSubview:v4->_titleLabel];
    v19 = objc_alloc_init(MEMORY[0x1E69DD168]);
    messageView = v4->_messageView;
    v4->_messageView = v19;

    v21 = v4->_messageView;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v21 setBackgroundColor:clearColor2];

    [(UITextView *)v4->_messageView setEditable:0];
    [(UITextView *)v4->_messageView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v4->_messageView setAdjustsFontForContentSizeCategory:1];
    [(UITextView *)v4->_messageView setDataDetectorTypes:2];
    [(UITextView *)v4->_messageView setScrollingEnabled:0];
    v23 = v4->_messageView;
    v24 = [(PKSoftwareUpdateTableView *)v4 _messageAttributedStringWithTextColor:v4->_textColor];
    [(UITextView *)v23 setAttributedText:v24];

    [(UIScrollView *)v4->_scrollView addSubview:v4->_messageView];
    [(PKSoftwareUpdateTableView *)v4 setContext:0];
  }

  return v4;
}

- (void)setContext:(int64_t)context
{
  self->_context = context;
  IsBridge = PKPaymentSetupContextIsBridge();
  v7 = PKDeviceSpecificLocalizedStringKeyForKey(@"FAIL_FORWARD_UPDATE_TITLE", IsBridge);
  titleLabel = self->_titleLabel;
  v6 = PKLocalizedPaymentString(v7);
  [(UILabel *)titleLabel setText:v6];

  [(PKSoftwareUpdateTableView *)self setNeedsLayout];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(UILabel *)self->_titleLabel setTextColor:v8];
    messageView = self->_messageView;
    v7 = [(PKSoftwareUpdateTableView *)self _messageAttributedStringWithTextColor:v8];
    [(UITextView *)messageView setAttributedText:v7];

    colorCopy = v8;
  }
}

- (void)setLinkColor:(id)color
{
  v9[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (self->_linkColor != colorCopy)
  {
    objc_storeStrong(&self->_linkColor, color);
    messageView = self->_messageView;
    if (colorCopy)
    {
      v8 = *MEMORY[0x1E69DB650];
      v9[0] = colorCopy;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [(UITextView *)messageView setLinkTextAttributes:v7];
    }

    else
    {
      [(UITextView *)messageView setLinkTextAttributes:0];
    }
  }
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = PKSoftwareUpdateTableView;
  [(PKSoftwareUpdateTableView *)&v39 layoutSubviews];
  safeAreaLayoutGuide = [(PKSoftwareUpdateTableView *)self safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  font = [(UILabel *)self->_titleLabel font];
  [(PKSoftwareUpdateTableView *)self directionalLayoutMargins];
  v14 = v13;
  [(PKSoftwareUpdateTableView *)self directionalLayoutMargins];
  v16 = v14 + v15;
  [(UIScrollView *)self->_scrollView setFrame:v5, v7, v9, v11];
  titleLabel = self->_titleLabel;
  [(PKSoftwareUpdateTableView *)self bounds];
  PKFloatRoundToPixel();
  [(UILabel *)titleLabel pkui_sizeThatFits:1 forceWordWrap:?];
  v19 = v18;
  v21 = v20;
  [font _bodyLeading];
  v23 = v9 - v16;
  if (v21 > v22 + v22)
  {
    [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:v9 - v16, 1.79769313e308];
    v19 = v24;
    v21 = v25;
  }

  v26 = self->_titleLabel;
  PKFloatRoundToPixel();
  v28 = v27;
  [font ascender];
  PKFloatRoundToPixel();
  [(UILabel *)v26 setFrame:v28, v29, v19, v21];
  [(UITextView *)self->_messageView sizeThatFits:v23, 1.79769313e308];
  v31 = v30;
  v33 = v32;
  messageView = self->_messageView;
  PKFloatRoundToPixel();
  v36 = v35;
  [(UILabel *)self->_titleLabel frame];
  CGRectGetMaxY(v40);
  [font descender];
  [font _bodyLeading];
  [font ascender];
  PKFloatRoundToPixel();
  [(UITextView *)messageView setFrame:v36, v37, v31, v33];
  scrollView = self->_scrollView;
  [(UITextView *)self->_messageView frame];
  [(UIScrollView *)scrollView setContentSize:v9, CGRectGetMaxY(v41)];
}

- (id)_messageAttributedStringWithTextColor:(id)color
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7D0];
  colorCopy = color;
  defaultParagraphStyle = [v3 defaultParagraphStyle];
  v6 = [defaultParagraphStyle mutableCopy];

  [v6 setAlignment:1];
  v14[0] = *MEMORY[0x1E69DB648];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v8 = *MEMORY[0x1E69DB650];
  v15[0] = v7;
  v15[1] = colorCopy;
  v9 = *MEMORY[0x1E69DB688];
  v14[1] = v8;
  v14[2] = v9;
  v15[2] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v11 = PKLocalizedPaymentString(&cfstr_FailForwardUpd_0.isa);
  v12 = PKAttributedStringByParsingLinksInString();

  return v12;
}

@end