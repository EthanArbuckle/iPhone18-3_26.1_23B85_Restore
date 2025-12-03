@interface TFLinkableHeaderFooterView
+ (CGSize)itemSizeWithText:(id)text isHeader:(BOOL)header fittingSize:(CGSize)size inTraitEnvironment:(id)environment;
+ (double)_heightForTextViewWithText:(id)text font:(id)font isHeader:(BOOL)header fittingWidth:(double)width inTraitEnvironment:(id)environment;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TFLinkableHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (void)_prepareForDisplayWithTraitCollection:(id)collection;
- (void)_updateTextViewWithLinkMap:(id)map;
- (void)applyText:(id)text withTextLinkMap:(id)map isHeader:(BOOL)header;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TFLinkableHeaderFooterView

- (TFLinkableHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = TFLinkableHeaderFooterView;
  v3 = [(TFLinkableHeaderFooterView *)&v19 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75C40]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v3->_textView;
    v3->_textView = v5;

    [(UITextView *)v3->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = v3->_textView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v7 setBackgroundColor:clearColor];

    [(UITextView *)v3->_textView setEditable:0];
    [(UITextView *)v3->_textView setSelectable:1];
    [(UITextView *)v3->_textView setScrollEnabled:0];
    [(UITextView *)v3->_textView setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    textContainer = [(UITextView *)v3->_textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)v3->_textView setInsetsLayoutMarginsFromSafeArea:0];
    textContainer2 = [(UITextView *)v3->_textView textContainer];
    [textContainer2 setLineBreakMode:0];

    v11 = v3->_textView;
    v12 = +[TFLinkableHeaderFooterViewSpecification textViewFontColor];
    [(UITextView *)v11 setTextColor:v12];

    v13 = v3->_textView;
    traitCollection = [(TFLinkableHeaderFooterView *)v3 traitCollection];
    v15 = [TFLinkableHeaderFooterViewSpecification createTextViewFontForTraitCollection:traitCollection];
    [(UITextView *)v13 setFont:v15];

    [(UITextView *)v3->_textView _setInteractiveTextSelectionDisabled:1];
    textDragInteraction = [(UITextView *)v3->_textView textDragInteraction];
    [textDragInteraction setEnabled:0];

    contentView = [(TFLinkableHeaderFooterView *)v3 contentView];
    [contentView addSubview:v3->_textView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = TFLinkableHeaderFooterView;
  [(TFLinkableHeaderFooterView *)&v34 layoutSubviews];
  [TFFeedbackFormViewSpecification formCellInsetsInTraitEnvironment:self];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(TFLinkableHeaderFooterView *)self contentView];
  [contentView bounds];
  v13 = v6 + v12;
  v15 = v4 + v14;
  v17 = v16 - (v6 + v10);
  v19 = v18 - (v4 + v8);

  textView = [(TFLinkableHeaderFooterView *)self textView];
  font = [textView font];
  [TFLinkableHeaderFooterViewSpecification topPaddingFromFirstBaselineForShowingHeader:[(TFLinkableHeaderFooterView *)self isHeader]];
  [font _scaledValueForValue:?];
  v23 = v22;

  textView2 = [(TFLinkableHeaderFooterView *)self textView];
  [textView2 tf_estimatedFirstBaseline];
  v26 = v25;

  v35.origin.x = v13;
  v35.origin.y = v15;
  v35.size.width = v17;
  v35.size.height = v19;
  v27 = v23 - v26 + CGRectGetMinY(v35);
  textView3 = [(TFLinkableHeaderFooterView *)self textView];
  [textView3 sizeThatFits:{v17, v19}];
  v30 = v29;

  v36.origin.x = v13;
  v36.origin.y = v15;
  v36.size.width = v17;
  v36.size.height = v19;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v13;
  v37.origin.y = v15;
  v37.size.width = v17;
  v37.size.height = v19;
  Width = CGRectGetWidth(v37);
  textView4 = [(TFLinkableHeaderFooterView *)self textView];
  [textView4 setFrame:{MinX, v27, Width, v30}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  textView = [(TFLinkableHeaderFooterView *)self textView];
  text = [textView text];
  [TFLinkableHeaderFooterView itemSizeWithText:text isHeader:[(TFLinkableHeaderFooterView *)self isHeader] fittingSize:self inTraitEnvironment:width, height];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = TFLinkableHeaderFooterView;
  [(TFLinkableHeaderFooterView *)&v5 traitCollectionDidChange:change];
  traitCollection = [(TFLinkableHeaderFooterView *)self traitCollection];
  [(TFLinkableHeaderFooterView *)self _prepareForDisplayWithTraitCollection:traitCollection];

  [(TFLinkableHeaderFooterView *)self setNeedsLayout];
}

- (void)applyText:(id)text withTextLinkMap:(id)map isHeader:(BOOL)header
{
  headerCopy = header;
  mapCopy = map;
  textCopy = text;
  textView = [(TFLinkableHeaderFooterView *)self textView];
  [textView setText:textCopy];

  [(TFLinkableHeaderFooterView *)self _updateTextViewWithLinkMap:mapCopy];
  [(TFLinkableHeaderFooterView *)self setIsHeader:headerCopy];

  [(TFLinkableHeaderFooterView *)self setNeedsLayout];
}

+ (CGSize)itemSizeWithText:(id)text isHeader:(BOOL)header fittingSize:(CGSize)size inTraitEnvironment:(id)environment
{
  width = size.width;
  headerCopy = header;
  environmentCopy = environment;
  textCopy = text;
  [TFFeedbackFormViewSpecification formCellInsetsInTraitEnvironment:environmentCopy];
  v14 = width - v12 - v13;
  traitCollection = [environmentCopy traitCollection];
  v16 = [TFLinkableHeaderFooterViewSpecification createTextViewFontForTraitCollection:traitCollection];

  [self _heightForTextViewWithText:textCopy font:v16 isHeader:headerCopy fittingWidth:environmentCopy inTraitEnvironment:v14];
  v18 = v17;

  [TFLinkableHeaderFooterViewSpecification topPaddingFromFirstBaselineForShowingHeader:headerCopy];
  [v16 _scaledValueForValue:?];
  v20 = v19;
  [TFLinkableHeaderFooterViewSpecification bottomPaddingForShowingHeader:headerCopy];
  [v16 _scaledValueForValue:?];
  v22 = v21;
  [v16 tf_estimatedFirstBaseline];
  v24 = v22 + v18 + v20 - v23;

  v25 = width;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

+ (double)_heightForTextViewWithText:(id)text font:(id)font isHeader:(BOOL)header fittingWidth:(double)width inTraitEnvironment:(id)environment
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22 = *MEMORY[0x277D740A8];
  v23[0] = font;
  v9 = MEMORY[0x277CBEAC0];
  fontCopy = font;
  textCopy = text;
  v12 = [v9 dictionaryWithObjects:v23 forKeys:&v22 count:1];

  [textCopy boundingRectWithSize:3 options:v12 attributes:0 context:{width, 1.79769313e308}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v24.origin.x = v14;
  v24.origin.y = v16;
  v24.size.width = v18;
  v24.size.height = v20;
  return CGRectGetHeight(v24);
}

- (void)_updateTextViewWithLinkMap:(id)map
{
  v34[2] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  if (mapCopy)
  {
    textView = [(TFLinkableHeaderFooterView *)self textView];
    text = [textView text];

    if (text)
    {
      v33[0] = *MEMORY[0x277D740A8];
      textView2 = [(TFLinkableHeaderFooterView *)self textView];
      font = [textView2 font];
      v34[0] = font;
      v33[1] = *MEMORY[0x277D740C0];
      textView3 = [(TFLinkableHeaderFooterView *)self textView];
      textColor = [textView3 textColor];
      v34[1] = textColor;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

      v12 = objc_alloc(MEMORY[0x277CCAB48]);
      textView4 = [(TFLinkableHeaderFooterView *)self textView];
      text2 = [textView4 text];
      v27 = v11;
      v15 = [v12 initWithString:text2 attributes:v11];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = mapCopy;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        v20 = *MEMORY[0x277D740E8];
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v28 + 1) + 8 * i);
            v23 = [v16 objectForKeyedSubscript:v22];
            rangeValue = [v22 rangeValue];
            [v15 addAttribute:v20 value:v23 range:{rangeValue, v25}];
          }

          v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v18);
      }

      textView5 = [(TFLinkableHeaderFooterView *)self textView];
      [textView5 setAttributedText:v15];

      [(TFLinkableHeaderFooterView *)self setNeedsLayout];
    }
  }
}

- (void)_prepareForDisplayWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  textView = [(TFLinkableHeaderFooterView *)self textView];
  v5 = [TFLinkableHeaderFooterViewSpecification createTextViewFontForTraitCollection:collectionCopy];

  [textView setFont:v5];
}

@end