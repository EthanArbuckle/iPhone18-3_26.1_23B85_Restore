@interface PKFooterHyperlinkView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKFooterHyperlinkView)initWithReuseIdentifier:(id)a3;
- (id)addFooterStyleAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
@end

@implementation PKFooterHyperlinkView

- (PKFooterHyperlinkView)initWithReuseIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKFooterHyperlinkView;
  v3 = [(PKFooterHyperlinkView *)&v8 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(PKHyperlinkTextView);
    textView = v3->_textView;
    v3->_textView = v4;

    [(PKFooterHyperlinkView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9818]];
    v6 = [(PKFooterHyperlinkView *)v3 contentView];
    [v6 addSubview:v3->_textView];
  }

  return v3;
}

- (void)setAttributedText:(id)a3
{
  v4 = [(PKFooterHyperlinkView *)self addFooterStyleAttributes:a3];
  [(PKHyperlinkTextView *)self->_textView setAttributedText:v4];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = PKFooterHyperlinkView;
  [(PKFooterHyperlinkView *)&v22 layoutSubviews];
  v3 = [(PKFooterHyperlinkView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 _shouldReverseLayoutDirection];
  [v3 layoutMargins];
  v14 = v5 + v13;
  v15 = v7 + 0.0;
  v17 = v9 - (v13 + v16);
  [(PKHyperlinkTextView *)self->_textView sizeThatFits:v17, v11];
  v20 = v19;
  v21 = v14 + v17 - v19;
  if (!v12)
  {
    v21 = v14;
  }

  [(PKHyperlinkTextView *)self->_textView setFrame:v21, v15, v20, v18];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(PKFooterHyperlinkView *)self contentView:a3.width];
  [v4 layoutMargins];
  v6 = v5;
  v8 = v7;
  [v4 frame];
  v10 = v9 - (v6 + v8);
  [(PKHyperlinkTextView *)self->_textView sizeThatFits:v10, 1.79769313e308];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)addFooterStyleAttributes:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 mutableCopy];
    v5 = MEMORY[0x1E695DF90];
    v12[0] = *MEMORY[0x1E69DB648];
    v6 = [objc_opt_class() _defaultFontForTableViewStyle:1 isSectionHeader:0];
    v13[0] = v6;
    v12[1] = *MEMORY[0x1E69DB650];
    v7 = [objc_opt_class() _defaultTextColorForTableViewStyle:1 isSectionHeader:0];
    v13[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v9 = [v5 dictionaryWithDictionary:v8];

    v10 = [v3 attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, objc_msgSend(v3, "length")}];
    [v9 addEntriesFromDictionary:v10];
    [v4 addAttributes:v9 range:{0, objc_msgSend(v3, "length")}];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end