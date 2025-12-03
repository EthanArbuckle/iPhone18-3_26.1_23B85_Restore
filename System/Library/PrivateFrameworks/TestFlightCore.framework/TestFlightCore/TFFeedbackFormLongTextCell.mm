@interface TFFeedbackFormLongTextCell
+ (CGSize)_sizeToFitText:(id)text fittingSize:(CGSize)size inTraitEnvironment:(id)environment;
+ (CGSize)sizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)size inTraitEnvironment:(id)environment;
+ (UIEdgeInsets)_textViewInsetsInTraitEnvironment:(id)environment;
+ (double)_adjustedTextViewHeightForCandidateHeight:(double)height font:(id)font;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TFFeedbackFormLongTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_prepareForDisplayWithTraitCollection:(id)collection;
- (void)_updateCellHeightForTextIfNecessary;
- (void)_updateCellHeightForTextUpdatesInTableView:(id)view;
- (void)applyContentsOfEntry:(id)entry;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDisplayedDataString:(id)string;
- (void)textViewDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TFFeedbackFormLongTextCell

- (TFFeedbackFormLongTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = TFFeedbackFormLongTextCell;
  v4 = [(TFFeedbackFormBaseCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v4->_textView;
    v4->_textView = v6;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:clearColor];

    [(UITextView *)v4->_textView setDelegate:v4];
    traitCollection = [(TFFeedbackFormLongTextCell *)v4 traitCollection];
    v10 = [TFFeedbackFormLongTextCell _createTextViewFontForTraitCollection:traitCollection];
    [(UITextView *)v4->_textView setFont:v10];

    [(UITextView *)v4->_textView setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    textContainer = [(UITextView *)v4->_textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    textContainer2 = [(UITextView *)v4->_textView textContainer];
    [textContainer2 setLineBreakMode:0];

    [(UITextView *)v4->_textView setScrollEnabled:0];
    contentView = [(TFFeedbackFormLongTextCell *)v4 contentView];
    [contentView addSubview:v4->_textView];
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
  contentView = [(TFFeedbackFormLongTextCell *)self contentView];
  [contentView bounds];
  v13 = v6 + v12;
  v15 = v4 + v14;
  v17 = v16 - (v6 + v10);
  v19 = v18 - (v4 + v8);

  textView = [(TFFeedbackFormLongTextCell *)self textView];
  [textView setFrame:{v13, v15, v17, v19}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  textView = [(TFFeedbackFormLongTextCell *)self textView];
  text = [textView text];
  [TFFeedbackFormLongTextCell _sizeToFitText:text fittingSize:self inTraitEnvironment:width, height];
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
  v5.super_class = TFFeedbackFormLongTextCell;
  [(TFFeedbackFormLongTextCell *)&v5 traitCollectionDidChange:change];
  traitCollection = [(TFFeedbackFormLongTextCell *)self traitCollection];
  [(TFFeedbackFormLongTextCell *)self _prepareForDisplayWithTraitCollection:traitCollection];

  [(TFFeedbackFormLongTextCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = TFFeedbackFormLongTextCell;
  [(TFFeedbackFormLongTextCell *)&v10 prepareForReuse];
  textView = [(TFFeedbackFormLongTextCell *)self textView];
  isFirstResponder = [textView isFirstResponder];

  if (isFirstResponder)
  {
    longTextEntry = [(TFFeedbackFormLongTextCell *)self longTextEntry];

    if (longTextEntry)
    {
      updateProxy = [(TFFeedbackFormBaseCell *)self updateProxy];
      longTextEntry2 = [(TFFeedbackFormLongTextCell *)self longTextEntry];
      textView2 = [(TFFeedbackFormLongTextCell *)self textView];
      text = [textView2 text];
      [updateProxy didUpdateEntry:longTextEntry2 toString:text editInProgress:0];
    }
  }

  [(TFFeedbackFormLongTextCell *)self setLongTextEntry:0];
}

- (void)applyContentsOfEntry:(id)entry
{
  v15[2] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if ([entryCopy type] == 1)
  {
    [(TFFeedbackFormLongTextCell *)self setLongTextEntry:entryCopy];
    placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    longTextEntry = [(TFFeedbackFormLongTextCell *)self longTextEntry];
    placeholder = [longTextEntry placeholder];
    v14[0] = *MEMORY[0x277D740A8];
    textView = [(TFFeedbackFormLongTextCell *)self textView];
    font = [textView font];
    v14[1] = *MEMORY[0x277D740C0];
    v15[0] = font;
    v15[1] = placeholderTextColor;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = [v6 initWithString:placeholder attributes:v11];
    textView2 = [(TFFeedbackFormLongTextCell *)self textView];
    [textView2 setAttributedPlaceholder:v12];
  }
}

+ (CGSize)sizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)size inTraitEnvironment:(id)environment
{
  height = size.height;
  width = size.width;
  entryCopy = entry;
  environmentCopy = environment;
  v13 = entryCopy;
  sourceCopy = source;
  identifier = [v13 identifier];
  v16 = [sourceCopy stringForIdentifier:identifier];

  if (!v16 || ![v16 length])
  {
    placeholder = [v13 placeholder];

    v16 = placeholder;
  }

  [self _sizeToFitText:v16 fittingSize:environmentCopy inTraitEnvironment:{width, height}];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)setDisplayedDataString:(id)string
{
  stringCopy = string;
  textView = [(TFFeedbackFormLongTextCell *)self textView];
  [textView setText:stringCopy];
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  longTextEntry = [(TFFeedbackFormLongTextCell *)self longTextEntry];

  if (longTextEntry)
  {
    updateProxy = [(TFFeedbackFormBaseCell *)self updateProxy];
    longTextEntry2 = [(TFFeedbackFormLongTextCell *)self longTextEntry];
    text = [editingCopy text];
    [updateProxy didUpdateEntry:longTextEntry2 toString:text editInProgress:0];
  }
}

+ (UIEdgeInsets)_textViewInsetsInTraitEnvironment:(id)environment
{
  [TFFeedbackFormViewSpecification formCellInsetsInTraitEnvironment:environment];

  MEMORY[0x2821DE498](15);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

+ (CGSize)_sizeToFitText:(id)text fittingSize:(CGSize)size inTraitEnvironment:(id)environment
{
  width = size.width;
  v33[1] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  textCopy = text;
  [TFFeedbackFormLongTextCell _textViewInsetsInTraitEnvironment:environmentCopy];
  v11 = v10;
  v13 = v12;
  v16 = width - v14 - v15;
  traitCollection = [environmentCopy traitCollection];

  v18 = [self _createTextViewFontForTraitCollection:traitCollection];

  v32 = *MEMORY[0x277D740A8];
  v33[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  [textCopy boundingRectWithSize:3 options:v19 attributes:0 context:{v16, 1.79769313e308}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v35.origin.x = v21;
  v35.origin.y = v23;
  v35.size.width = v25;
  v35.size.height = v27;
  [self _adjustedTextViewHeightForCandidateHeight:v18 font:CGRectGetHeight(v35)];
  v29 = v28;

  v30 = ceil(v13 + v11 + v29);
  v31 = width;
  result.height = v30;
  result.width = v31;
  return result;
}

+ (double)_adjustedTextViewHeightForCandidateHeight:(double)height font:(id)font
{
  [font tf_computeFittedLineHeight];
  result = v5 * 3.0;
  if (result <= height)
  {
    return height;
  }

  return result;
}

- (void)_updateCellHeightForTextIfNecessary
{
  [(TFFeedbackFormLongTextCell *)self bounds];
  v4 = v3;
  v6 = v5;
  textView = [(TFFeedbackFormLongTextCell *)self textView];
  text = [textView text];
  [TFFeedbackFormLongTextCell _sizeToFitText:text fittingSize:self inTraitEnvironment:v4, 1.79769313e308];
  v10 = v9;

  if (v6 != v10)
  {
    updateProxy = [(TFFeedbackFormBaseCell *)self updateProxy];
    longTextEntry = [(TFFeedbackFormLongTextCell *)self longTextEntry];
    textView2 = [(TFFeedbackFormLongTextCell *)self textView];
    text2 = [textView2 text];
    [updateProxy didUpdateEntry:longTextEntry toString:text2 editInProgress:1];

    [(TFFeedbackFormLongTextCell *)self setNeedsDisplay];
    _tableView = [(TFFeedbackFormLongTextCell *)self _tableView];
    [(TFFeedbackFormLongTextCell *)self _updateCellHeightForTextUpdatesInTableView:_tableView];
  }
}

- (void)_updateCellHeightForTextUpdatesInTableView:(id)view
{
  v3 = MEMORY[0x277D75D18];
  viewCopy = view;
  areAnimationsEnabled = [v3 areAnimationsEnabled];
  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  [viewCopy performBatchUpdates:&__block_literal_global_10 completion:0];

  v6 = MEMORY[0x277D75D18];

  [v6 setAnimationsEnabled:areAnimationsEnabled];
}

- (void)_prepareForDisplayWithTraitCollection:(id)collection
{
  v5 = [TFFeedbackFormLongTextCell _createTextViewFontForTraitCollection:collection];
  textView = [(TFFeedbackFormLongTextCell *)self textView];
  [textView setFont:v5];
}

@end