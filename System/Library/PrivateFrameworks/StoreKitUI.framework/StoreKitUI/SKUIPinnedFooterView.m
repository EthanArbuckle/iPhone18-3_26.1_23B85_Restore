@interface SKUIPinnedFooterView
- (SKUIPinnedFooterView)initWithFrame:(CGRect)a3;
- (void)_configureTextViewTextStyling;
- (void)_initializeTextView;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
@end

@implementation SKUIPinnedFooterView

- (SKUIPinnedFooterView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPinnedFooterView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIPinnedFooterView;
  v8 = [(SKUIPinnedFooterView *)&v11 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUIPinnedFooterView *)v8 _initializeTextView];
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
  v9 = [(SKUIPinnedFooterView *)self textView];
  [v9 sizeThatFits:{v8, 3.40282347e38}];
  v11 = v10;
  v13 = v12;

  [(SKUIPinnedFooterView *)self horizontalPadding];
  v15 = v14;
  v16 = [(SKUIPinnedFooterView *)self textView];
  [v16 setFrame:{v15, v6 + -10.0 - v13, v11, v13}];

  v17.receiver = self;
  v17.super_class = SKUIPinnedFooterView;
  [(SKUIPinnedFooterView *)&v17 layoutSubviews];
}

- (void)setAttributedText:(id)a3
{
  v5 = a3;
  if (self->_attributedText != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_attributedText, a3);
    v6 = [(SKUIPinnedFooterView *)self textView];
    [v6 setAttributedText:v7];

    [(SKUIPinnedFooterView *)self _configureTextViewTextStyling];
    v5 = v7;
  }
}

- (void)_configureTextViewTextStyling
{
  v3 = [(SKUIPinnedFooterView *)self textView];
  v4 = [MEMORY[0x277D75348] lightGrayColor];
  [v3 setTextColor:v4];

  v5 = [(SKUIPinnedFooterView *)self textView];
  [v5 setTextAlignment:1];

  v7 = [(SKUIPinnedFooterView *)self textView];
  v6 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [v7 setFont:v6];
}

- (void)_initializeTextView
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(SKUIPinnedFooterView *)self setTextView:v3];

  v4 = [(SKUIPinnedFooterView *)self textView];
  [v4 setDataDetectorTypes:2];

  v5 = [(SKUIPinnedFooterView *)self textView];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [(SKUIPinnedFooterView *)self textView];
  [v7 setEditable:0];

  v8 = [(SKUIPinnedFooterView *)self textView];
  [v8 setTextContainerInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  [(SKUIPinnedFooterView *)self _configureTextViewTextStyling];
  v10 = [(SKUIPinnedFooterView *)self contentView];
  v9 = [(SKUIPinnedFooterView *)self textView];
  [v10 addSubview:v9];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPinnedFooterView initWithFrame:]";
}

@end