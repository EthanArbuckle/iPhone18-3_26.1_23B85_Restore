@interface PKFooterHyperlinkView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKFooterHyperlinkView)initWithReuseIdentifier:(id)identifier;
- (id)addFooterStyleAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
@end

@implementation PKFooterHyperlinkView

- (PKFooterHyperlinkView)initWithReuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PKFooterHyperlinkView;
  v3 = [(PKFooterHyperlinkView *)&v8 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(PKHyperlinkTextView);
    textView = v3->_textView;
    v3->_textView = v4;

    [(PKFooterHyperlinkView *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9818]];
    contentView = [(PKFooterHyperlinkView *)v3 contentView];
    [contentView addSubview:v3->_textView];
  }

  return v3;
}

- (void)setAttributedText:(id)text
{
  v4 = [(PKFooterHyperlinkView *)self addFooterStyleAttributes:text];
  [(PKHyperlinkTextView *)self->_textView setAttributedText:v4];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = PKFooterHyperlinkView;
  [(PKFooterHyperlinkView *)&v22 layoutSubviews];
  contentView = [(PKFooterHyperlinkView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _shouldReverseLayoutDirection = [contentView _shouldReverseLayoutDirection];
  [contentView layoutMargins];
  v14 = v5 + v13;
  v15 = v7 + 0.0;
  v17 = v9 - (v13 + v16);
  [(PKHyperlinkTextView *)self->_textView sizeThatFits:v17, v11];
  v20 = v19;
  v21 = v14 + v17 - v19;
  if (!_shouldReverseLayoutDirection)
  {
    v21 = v14;
  }

  [(PKHyperlinkTextView *)self->_textView setFrame:v21, v15, v20, v18];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(PKFooterHyperlinkView *)self contentView:fits.width];
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

- (id)addFooterStyleAttributes:(id)attributes
{
  v13[2] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if ([attributesCopy length])
  {
    v4 = [attributesCopy mutableCopy];
    v5 = MEMORY[0x1E695DF90];
    v12[0] = *MEMORY[0x1E69DB648];
    v6 = [objc_opt_class() _defaultFontForTableViewStyle:1 isSectionHeader:0];
    v13[0] = v6;
    v12[1] = *MEMORY[0x1E69DB650];
    v7 = [objc_opt_class() _defaultTextColorForTableViewStyle:1 isSectionHeader:0];
    v13[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v9 = [v5 dictionaryWithDictionary:v8];

    v10 = [attributesCopy attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, objc_msgSend(attributesCopy, "length")}];
    [v9 addEntriesFromDictionary:v10];
    [v4 addAttributes:v9 range:{0, objc_msgSend(attributesCopy, "length")}];
  }

  else
  {
    v4 = attributesCopy;
  }

  return v4;
}

@end