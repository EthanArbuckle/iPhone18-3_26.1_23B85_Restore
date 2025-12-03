@interface SKUIPinnedFooterView
- (SKUIPinnedFooterView)initWithFrame:(CGRect)frame;
- (void)_configureTextViewTextStyling;
- (void)_initializeTextView;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
@end

@implementation SKUIPinnedFooterView

- (SKUIPinnedFooterView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPinnedFooterView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIPinnedFooterView;
  height = [(SKUIPinnedFooterView *)&v11 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    [(SKUIPinnedFooterView *)height _initializeTextView];
  }

  return v9;
}

- (void)layoutSubviews
{
  [(SKUIPinnedFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(SKUIPinnedFooterView *)self horizontalPadding];
  v8 = v4 + v7 * -2.0;
  textView = [(SKUIPinnedFooterView *)self textView];
  [textView sizeThatFits:{v8, 3.40282347e38}];
  v11 = v10;
  v13 = v12;

  [(SKUIPinnedFooterView *)self horizontalPadding];
  v15 = v14;
  textView2 = [(SKUIPinnedFooterView *)self textView];
  [textView2 setFrame:{v15, v6 + -10.0 - v13, v11, v13}];

  v17.receiver = self;
  v17.super_class = SKUIPinnedFooterView;
  [(SKUIPinnedFooterView *)&v17 layoutSubviews];
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  if (self->_attributedText != textCopy)
  {
    v7 = textCopy;
    objc_storeStrong(&self->_attributedText, text);
    textView = [(SKUIPinnedFooterView *)self textView];
    [textView setAttributedText:v7];

    [(SKUIPinnedFooterView *)self _configureTextViewTextStyling];
    textCopy = v7;
  }
}

- (void)_configureTextViewTextStyling
{
  textView = [(SKUIPinnedFooterView *)self textView];
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [textView setTextColor:lightGrayColor];

  textView2 = [(SKUIPinnedFooterView *)self textView];
  [textView2 setTextAlignment:1];

  textView3 = [(SKUIPinnedFooterView *)self textView];
  v6 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [textView3 setFont:v6];
}

- (void)_initializeTextView
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(SKUIPinnedFooterView *)self setTextView:v3];

  textView = [(SKUIPinnedFooterView *)self textView];
  [textView setDataDetectorTypes:2];

  textView2 = [(SKUIPinnedFooterView *)self textView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [textView2 setBackgroundColor:clearColor];

  textView3 = [(SKUIPinnedFooterView *)self textView];
  [textView3 setEditable:0];

  textView4 = [(SKUIPinnedFooterView *)self textView];
  [textView4 setTextContainerInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  [(SKUIPinnedFooterView *)self _configureTextViewTextStyling];
  contentView = [(SKUIPinnedFooterView *)self contentView];
  textView5 = [(SKUIPinnedFooterView *)self textView];
  [contentView addSubview:textView5];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPinnedFooterView initWithFrame:]";
}

@end