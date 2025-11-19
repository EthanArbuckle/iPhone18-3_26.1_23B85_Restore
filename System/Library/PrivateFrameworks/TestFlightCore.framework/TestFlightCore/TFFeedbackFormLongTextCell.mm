@interface TFFeedbackFormLongTextCell
+ (CGSize)_sizeToFitText:(id)a3 fittingSize:(CGSize)a4 inTraitEnvironment:(id)a5;
+ (CGSize)sizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6;
+ (UIEdgeInsets)_textViewInsetsInTraitEnvironment:(id)a3;
+ (double)_adjustedTextViewHeightForCandidateHeight:(double)a3 font:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TFFeedbackFormLongTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_prepareForDisplayWithTraitCollection:(id)a3;
- (void)_updateCellHeightForTextIfNecessary;
- (void)_updateCellHeightForTextUpdatesInTableView:(id)a3;
- (void)applyContentsOfEntry:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisplayedDataString:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TFFeedbackFormLongTextCell

- (TFFeedbackFormLongTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = TFFeedbackFormLongTextCell;
  v4 = [(TFFeedbackFormBaseCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v4->_textView;
    v4->_textView = v6;

    v8 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:v8];

    [(UITextView *)v4->_textView setDelegate:v4];
    v9 = [(TFFeedbackFormLongTextCell *)v4 traitCollection];
    v10 = [TFFeedbackFormLongTextCell _createTextViewFontForTraitCollection:v9];
    [(UITextView *)v4->_textView setFont:v10];

    [(UITextView *)v4->_textView setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v11 = [(UITextView *)v4->_textView textContainer];
    [v11 setLineFragmentPadding:0.0];

    v12 = [(UITextView *)v4->_textView textContainer];
    [v12 setLineBreakMode:0];

    [(UITextView *)v4->_textView setScrollEnabled:0];
    v13 = [(TFFeedbackFormLongTextCell *)v4 contentView];
    [v13 addSubview:v4->_textView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = TFFeedbackFormLongTextCell;
  [(TFFeedbackFormBaseCell *)&v21 layoutSubviews];
  [(TFFeedbackFormLongTextCell *)self _updateCellHeightForTextIfNecessary];
  [TFFeedbackFormLongTextCell _textViewInsetsInTraitEnvironment:self];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TFFeedbackFormLongTextCell *)self contentView];
  [v11 bounds];
  v13 = v6 + v12;
  v15 = v4 + v14;
  v17 = v16 - (v6 + v10);
  v19 = v18 - (v4 + v8);

  v20 = [(TFFeedbackFormLongTextCell *)self textView];
  [v20 setFrame:{v13, v15, v17, v19}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TFFeedbackFormLongTextCell *)self textView];
  v7 = [v6 text];
  [TFFeedbackFormLongTextCell _sizeToFitText:v7 fittingSize:self inTraitEnvironment:width, height];
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
  v5.super_class = TFFeedbackFormLongTextCell;
  [(TFFeedbackFormLongTextCell *)&v5 traitCollectionDidChange:a3];
  v4 = [(TFFeedbackFormLongTextCell *)self traitCollection];
  [(TFFeedbackFormLongTextCell *)self _prepareForDisplayWithTraitCollection:v4];

  [(TFFeedbackFormLongTextCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = TFFeedbackFormLongTextCell;
  [(TFFeedbackFormLongTextCell *)&v10 prepareForReuse];
  v3 = [(TFFeedbackFormLongTextCell *)self textView];
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    v5 = [(TFFeedbackFormLongTextCell *)self longTextEntry];

    if (v5)
    {
      v6 = [(TFFeedbackFormBaseCell *)self updateProxy];
      v7 = [(TFFeedbackFormLongTextCell *)self longTextEntry];
      v8 = [(TFFeedbackFormLongTextCell *)self textView];
      v9 = [v8 text];
      [v6 didUpdateEntry:v7 toString:v9 editInProgress:0];
    }
  }

  [(TFFeedbackFormLongTextCell *)self setLongTextEntry:0];
}

- (void)applyContentsOfEntry:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 type] == 1)
  {
    [(TFFeedbackFormLongTextCell *)self setLongTextEntry:v4];
    v5 = [MEMORY[0x277D75348] placeholderTextColor];
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = [(TFFeedbackFormLongTextCell *)self longTextEntry];
    v8 = [v7 placeholder];
    v14[0] = *MEMORY[0x277D740A8];
    v9 = [(TFFeedbackFormLongTextCell *)self textView];
    v10 = [v9 font];
    v14[1] = *MEMORY[0x277D740C0];
    v15[0] = v10;
    v15[1] = v5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = [v6 initWithString:v8 attributes:v11];
    v13 = [(TFFeedbackFormLongTextCell *)self textView];
    [v13 setAttributedPlaceholder:v12];
  }
}

+ (CGSize)sizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)a5 inTraitEnvironment:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a6;
  v13 = v11;
  v14 = a4;
  v15 = [v13 identifier];
  v16 = [v14 stringForIdentifier:v15];

  if (!v16 || ![v16 length])
  {
    v17 = [v13 placeholder];

    v16 = v17;
  }

  [a1 _sizeToFitText:v16 fittingSize:v12 inTraitEnvironment:{width, height}];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)setDisplayedDataString:(id)a3
{
  v4 = a3;
  v5 = [(TFFeedbackFormLongTextCell *)self textView];
  [v5 setText:v4];
}

- (void)textViewDidEndEditing:(id)a3
{
  v8 = a3;
  v4 = [(TFFeedbackFormLongTextCell *)self longTextEntry];

  if (v4)
  {
    v5 = [(TFFeedbackFormBaseCell *)self updateProxy];
    v6 = [(TFFeedbackFormLongTextCell *)self longTextEntry];
    v7 = [v8 text];
    [v5 didUpdateEntry:v6 toString:v7 editInProgress:0];
  }
}

+ (UIEdgeInsets)_textViewInsetsInTraitEnvironment:(id)a3
{
  [TFFeedbackFormViewSpecification formCellInsetsInTraitEnvironment:a3];

  MEMORY[0x2821DE498](15);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

+ (CGSize)_sizeToFitText:(id)a3 fittingSize:(CGSize)a4 inTraitEnvironment:(id)a5
{
  width = a4.width;
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  [TFFeedbackFormLongTextCell _textViewInsetsInTraitEnvironment:v8];
  v11 = v10;
  v13 = v12;
  v16 = width - v14 - v15;
  v17 = [v8 traitCollection];

  v18 = [a1 _createTextViewFontForTraitCollection:v17];

  v32 = *MEMORY[0x277D740A8];
  v33[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  [v9 boundingRectWithSize:3 options:v19 attributes:0 context:{v16, 1.79769313e308}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v35.origin.x = v21;
  v35.origin.y = v23;
  v35.size.width = v25;
  v35.size.height = v27;
  [a1 _adjustedTextViewHeightForCandidateHeight:v18 font:CGRectGetHeight(v35)];
  v29 = v28;

  v30 = ceil(v13 + v11 + v29);
  v31 = width;
  result.height = v30;
  result.width = v31;
  return result;
}

+ (double)_adjustedTextViewHeightForCandidateHeight:(double)a3 font:(id)a4
{
  [a4 tf_computeFittedLineHeight];
  result = v5 * 3.0;
  if (result <= a3)
  {
    return a3;
  }

  return result;
}

- (void)_updateCellHeightForTextIfNecessary
{
  [(TFFeedbackFormLongTextCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(TFFeedbackFormLongTextCell *)self textView];
  v8 = [v7 text];
  [TFFeedbackFormLongTextCell _sizeToFitText:v8 fittingSize:self inTraitEnvironment:v4, 1.79769313e308];
  v10 = v9;

  if (v6 != v10)
  {
    v11 = [(TFFeedbackFormBaseCell *)self updateProxy];
    v12 = [(TFFeedbackFormLongTextCell *)self longTextEntry];
    v13 = [(TFFeedbackFormLongTextCell *)self textView];
    v14 = [v13 text];
    [v11 didUpdateEntry:v12 toString:v14 editInProgress:1];

    [(TFFeedbackFormLongTextCell *)self setNeedsDisplay];
    v15 = [(TFFeedbackFormLongTextCell *)self _tableView];
    [(TFFeedbackFormLongTextCell *)self _updateCellHeightForTextUpdatesInTableView:v15];
  }
}

- (void)_updateCellHeightForTextUpdatesInTableView:(id)a3
{
  v3 = MEMORY[0x277D75D18];
  v4 = a3;
  v5 = [v3 areAnimationsEnabled];
  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  [v4 performBatchUpdates:&__block_literal_global_10 completion:0];

  v6 = MEMORY[0x277D75D18];

  [v6 setAnimationsEnabled:v5];
}

- (void)_prepareForDisplayWithTraitCollection:(id)a3
{
  v5 = [TFFeedbackFormLongTextCell _createTextViewFontForTraitCollection:a3];
  v4 = [(TFFeedbackFormLongTextCell *)self textView];
  [v4 setFont:v5];
}

@end