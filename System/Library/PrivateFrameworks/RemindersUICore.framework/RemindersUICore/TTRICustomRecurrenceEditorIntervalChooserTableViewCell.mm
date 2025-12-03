@interface TTRICustomRecurrenceEditorIntervalChooserTableViewCell
+ (NSNumberFormatter)numberFormatter;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (TTRICustomRecurrenceEditorIntervalChooserTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (TTRICustomRecurrenceEditorIntervalChooserTableViewCellDelegate)delegate;
- (void)setIntervalValue:(int64_t)value;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation TTRICustomRecurrenceEditorIntervalChooserTableViewCell

+ (NSNumberFormatter)numberFormatter
{
  if (numberFormatter_onceToken != -1)
  {
    +[TTRICustomRecurrenceEditorIntervalChooserTableViewCell numberFormatter];
  }

  v3 = numberFormatter__numberFormatter;

  return v3;
}

uint64_t __73__TTRICustomRecurrenceEditorIntervalChooserTableViewCell_numberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = numberFormatter__numberFormatter;
  numberFormatter__numberFormatter = v0;

  v2 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  [numberFormatter__numberFormatter setMinimum:v2];

  v3 = [MEMORY[0x277CCABB0] numberWithInteger:999];
  [numberFormatter__numberFormatter setMaximum:v3];

  [numberFormatter__numberFormatter setMinimumIntegerDigits:1];
  [numberFormatter__numberFormatter setMaximumIntegerDigits:6];
  [numberFormatter__numberFormatter setMaximumFractionDigits:0];
  v4 = numberFormatter__numberFormatter;

  return [v4 setRoundingMode:1];
}

- (TTRICustomRecurrenceEditorIntervalChooserTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = TTRICustomRecurrenceEditorIntervalChooserTableViewCell;
  v4 = [(TTRIPopupMenuTableViewCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v6 setKeyboardType:8];
    titleLabel = [(TTRIPopupMenuTableViewCell *)v4 titleLabel];
    font = [titleLabel font];
    [v6 setFont:font];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [v6 setTextColor:labelColor];

    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v6 setBackgroundColor:secondarySystemBackgroundColor];

    [v6 setClipsToBounds:1];
    layer = [v6 layer];
    [layer setCornerRadius:4.0];

    [v6 setAdjustsFontForContentSizeCategory:1];
    textContainer = [v6 textContainer];
    [textContainer setWidthTracksTextView:1];

    textContainer2 = [v6 textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    [v6 setTextContainerInset:{0.0, 8.0, 0.0, 8.0}];
    [v6 setTextAlignment:1];
    [v6 setScrollEnabled:0];
    textContainer3 = [v6 textContainer];
    [textContainer3 setMaximumNumberOfLines:1];

    [v6 setDelegate:v4];
    [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)v4 setIntervalChooserTextView:v6];
    LODWORD(v15) = 1148829696;
    [v6 setLayoutSize:*MEMORY[0x277CEC620] withContentPriority:{*(MEMORY[0x277CEC620] + 8), v15}];
    accessoriesStackView = [(TTRIPopupMenuTableViewCell *)v4 accessoriesStackView];
    [accessoriesStackView insertArrangedSubview:v6 atIndex:0];
  }

  return v4;
}

- (void)setIntervalValue:(int64_t)value
{
  v4 = MEMORY[0x277CCABB8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:value];
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:0];
  intervalChooserTextView = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
  [intervalChooserTextView setText:v6];

  intervalChooserTextView2 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
  [intervalChooserTextView2 invalidateIntrinsicContentSize];
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  textCopy = text;
  intervalChooserTextView = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];

  if (intervalChooserTextView == viewCopy)
  {
    text = [viewCopy text];
    v14 = [text mutableCopy];
    [v14 replaceCharactersInRange:location withString:{length, textCopy}];
    if ([v14 containsString:@"\n"])
    {
      [viewCopy resignFirstResponder];
    }

    if ([v14 length])
    {
      v15 = +[TTRICustomRecurrenceEditorIntervalChooserTableViewCell numberFormatter];
      v16 = [v15 numberFromString:v14];

      if (v16)
      {
        v17 = +[TTRICustomRecurrenceEditorIntervalChooserTableViewCell numberFormatter];
        v18 = [v17 stringFromNumber:v16];

        v12 = [v14 isEqualToString:v18];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  intervalChooserTextView = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];

  if (intervalChooserTextView == changeCopy)
  {
    accessoriesStackView = [(TTRIPopupMenuTableViewCell *)self accessoriesStackView];
    [accessoriesStackView invalidateIntrinsicContentSize];
  }
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  intervalChooserTextView = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];

  if (intervalChooserTextView == editingCopy)
  {
    intervalChooserTextView2 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
    text = [intervalChooserTextView2 text];

    v7 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_282F1AF58 numberStyle:0];
    if (![text length])
    {
      v8 = v7;

      intervalChooserTextView3 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
      [intervalChooserTextView3 setText:v8];

      text = v8;
    }

    v10 = +[TTRICustomRecurrenceEditorIntervalChooserTableViewCell numberFormatter];
    v11 = [v10 numberFromString:text];

    if (v11)
    {
      delegate = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self delegate];
      [delegate intervalChooserDidUpdateValue:{objc_msgSend(v11, "intValue")}];

      intervalChooserTextView4 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
      [intervalChooserTextView4 invalidateIntrinsicContentSize];
    }

    else
    {
      intervalChooserTextView5 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
      [intervalChooserTextView5 setText:v7];

      intervalChooserTextView4 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self delegate];
      [intervalChooserTextView4 intervalChooserDidUpdateValue:1];
    }
  }
}

- (TTRICustomRecurrenceEditorIntervalChooserTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end