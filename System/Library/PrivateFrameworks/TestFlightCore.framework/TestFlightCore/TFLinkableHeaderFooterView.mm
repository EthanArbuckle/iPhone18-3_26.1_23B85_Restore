@interface TFLinkableHeaderFooterView
+ (CGSize)itemSizeWithText:(id)a3 isHeader:(BOOL)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6;
+ (double)_heightForTextViewWithText:(id)a3 font:(id)a4 isHeader:(BOOL)a5 fittingWidth:(double)a6 inTraitEnvironment:(id)a7;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TFLinkableHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (void)_prepareForDisplayWithTraitCollection:(id)a3;
- (void)_updateTextViewWithLinkMap:(id)a3;
- (void)applyText:(id)a3 withTextLinkMap:(id)a4 isHeader:(BOOL)a5;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TFLinkableHeaderFooterView

- (TFLinkableHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v19.receiver = self;
  v19.super_class = TFLinkableHeaderFooterView;
  v3 = [(TFLinkableHeaderFooterView *)&v19 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75C40]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v3->_textView;
    v3->_textView = v5;

    [(UITextView *)v3->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = v3->_textView;
    v8 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v7 setBackgroundColor:v8];

    [(UITextView *)v3->_textView setEditable:0];
    [(UITextView *)v3->_textView setSelectable:1];
    [(UITextView *)v3->_textView setScrollEnabled:0];
    [(UITextView *)v3->_textView setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v9 = [(UITextView *)v3->_textView textContainer];
    [v9 setLineFragmentPadding:0.0];

    [(UITextView *)v3->_textView setInsetsLayoutMarginsFromSafeArea:0];
    v10 = [(UITextView *)v3->_textView textContainer];
    [v10 setLineBreakMode:0];

    v11 = v3->_textView;
    v12 = +[TFLinkableHeaderFooterViewSpecification textViewFontColor];
    [(UITextView *)v11 setTextColor:v12];

    v13 = v3->_textView;
    v14 = [(TFLinkableHeaderFooterView *)v3 traitCollection];
    v15 = [TFLinkableHeaderFooterViewSpecification createTextViewFontForTraitCollection:v14];
    [(UITextView *)v13 setFont:v15];

    [(UITextView *)v3->_textView _setInteractiveTextSelectionDisabled:1];
    v16 = [(UITextView *)v3->_textView textDragInteraction];
    [v16 setEnabled:0];

    v17 = [(TFLinkableHeaderFooterView *)v3 contentView];
    [v17 addSubview:v3->_textView];
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
  v11 = [(TFLinkableHeaderFooterView *)self contentView];
  [v11 bounds];
  v13 = v6 + v12;
  v15 = v4 + v14;
  v17 = v16 - (v6 + v10);
  v19 = v18 - (v4 + v8);

  v20 = [(TFLinkableHeaderFooterView *)self textView];
  v21 = [v20 font];
  [TFLinkableHeaderFooterViewSpecification topPaddingFromFirstBaselineForShowingHeader:[(TFLinkableHeaderFooterView *)self isHeader]];
  [v21 _scaledValueForValue:?];
  v23 = v22;

  v24 = [(TFLinkableHeaderFooterView *)self textView];
  [v24 tf_estimatedFirstBaseline];
  v26 = v25;

  v35.origin.x = v13;
  v35.origin.y = v15;
  v35.size.width = v17;
  v35.size.height = v19;
  v27 = v23 - v26 + CGRectGetMinY(v35);
  v28 = [(TFLinkableHeaderFooterView *)self textView];
  [v28 sizeThatFits:{v17, v19}];
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
  v33 = [(TFLinkableHeaderFooterView *)self textView];
  [v33 setFrame:{MinX, v27, Width, v30}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TFLinkableHeaderFooterView *)self textView];
  v7 = [v6 text];
  [TFLinkableHeaderFooterView itemSizeWithText:v7 isHeader:[(TFLinkableHeaderFooterView *)self isHeader] fittingSize:self inTraitEnvironment:width, height];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = TFLinkableHeaderFooterView;
  [(TFLinkableHeaderFooterView *)&v5 traitCollectionDidChange:a3];
  v4 = [(TFLinkableHeaderFooterView *)self traitCollection];
  [(TFLinkableHeaderFooterView *)self _prepareForDisplayWithTraitCollection:v4];

  [(TFLinkableHeaderFooterView *)self setNeedsLayout];
}

- (void)applyText:(id)a3 withTextLinkMap:(id)a4 isHeader:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(TFLinkableHeaderFooterView *)self textView];
  [v10 setText:v9];

  [(TFLinkableHeaderFooterView *)self _updateTextViewWithLinkMap:v8];
  [(TFLinkableHeaderFooterView *)self setIsHeader:v5];

  [(TFLinkableHeaderFooterView *)self setNeedsLayout];
}

+ (CGSize)itemSizeWithText:(id)a3 isHeader:(BOOL)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6
{
  width = a5.width;
  v7 = a4;
  v10 = a6;
  v11 = a3;
  [TFFeedbackFormViewSpecification formCellInsetsInTraitEnvironment:v10];
  v14 = width - v12 - v13;
  v15 = [v10 traitCollection];
  v16 = [TFLinkableHeaderFooterViewSpecification createTextViewFontForTraitCollection:v15];

  [a1 _heightForTextViewWithText:v11 font:v16 isHeader:v7 fittingWidth:v10 inTraitEnvironment:v14];
  v18 = v17;

  [TFLinkableHeaderFooterViewSpecification topPaddingFromFirstBaselineForShowingHeader:v7];
  [v16 _scaledValueForValue:?];
  v20 = v19;
  [TFLinkableHeaderFooterViewSpecification bottomPaddingForShowingHeader:v7];
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

+ (double)_heightForTextViewWithText:(id)a3 font:(id)a4 isHeader:(BOOL)a5 fittingWidth:(double)a6 inTraitEnvironment:(id)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22 = *MEMORY[0x277D740A8];
  v23[0] = a4;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a4;
  v11 = a3;
  v12 = [v9 dictionaryWithObjects:v23 forKeys:&v22 count:1];

  [v11 boundingRectWithSize:3 options:v12 attributes:0 context:{a6, 1.79769313e308}];
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

- (void)_updateTextViewWithLinkMap:(id)a3
{
  v34[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(TFLinkableHeaderFooterView *)self textView];
    v6 = [v5 text];

    if (v6)
    {
      v33[0] = *MEMORY[0x277D740A8];
      v7 = [(TFLinkableHeaderFooterView *)self textView];
      v8 = [v7 font];
      v34[0] = v8;
      v33[1] = *MEMORY[0x277D740C0];
      v9 = [(TFLinkableHeaderFooterView *)self textView];
      v10 = [v9 textColor];
      v34[1] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

      v12 = objc_alloc(MEMORY[0x277CCAB48]);
      v13 = [(TFLinkableHeaderFooterView *)self textView];
      v14 = [v13 text];
      v27 = v11;
      v15 = [v12 initWithString:v14 attributes:v11];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = v4;
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
            v24 = [v22 rangeValue];
            [v15 addAttribute:v20 value:v23 range:{v24, v25}];
          }

          v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v18);
      }

      v26 = [(TFLinkableHeaderFooterView *)self textView];
      [v26 setAttributedText:v15];

      [(TFLinkableHeaderFooterView *)self setNeedsLayout];
    }
  }
}

- (void)_prepareForDisplayWithTraitCollection:(id)a3
{
  v4 = a3;
  v6 = [(TFLinkableHeaderFooterView *)self textView];
  v5 = [TFLinkableHeaderFooterViewSpecification createTextViewFontForTraitCollection:v4];

  [v6 setFont:v5];
}

@end