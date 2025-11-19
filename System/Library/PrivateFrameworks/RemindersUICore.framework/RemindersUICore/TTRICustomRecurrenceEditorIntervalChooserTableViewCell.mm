@interface TTRICustomRecurrenceEditorIntervalChooserTableViewCell
+ (NSNumberFormatter)numberFormatter;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (TTRICustomRecurrenceEditorIntervalChooserTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (TTRICustomRecurrenceEditorIntervalChooserTableViewCellDelegate)delegate;
- (void)setIntervalValue:(int64_t)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
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

- (TTRICustomRecurrenceEditorIntervalChooserTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = TTRICustomRecurrenceEditorIntervalChooserTableViewCell;
  v4 = [(TTRIPopupMenuTableViewCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v6 setKeyboardType:8];
    v7 = [(TTRIPopupMenuTableViewCell *)v4 titleLabel];
    v8 = [v7 font];
    [v6 setFont:v8];

    v9 = [MEMORY[0x277D75348] labelColor];
    [v6 setTextColor:v9];

    v10 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v6 setBackgroundColor:v10];

    [v6 setClipsToBounds:1];
    v11 = [v6 layer];
    [v11 setCornerRadius:4.0];

    [v6 setAdjustsFontForContentSizeCategory:1];
    v12 = [v6 textContainer];
    [v12 setWidthTracksTextView:1];

    v13 = [v6 textContainer];
    [v13 setLineFragmentPadding:0.0];

    [v6 setTextContainerInset:{0.0, 8.0, 0.0, 8.0}];
    [v6 setTextAlignment:1];
    [v6 setScrollEnabled:0];
    v14 = [v6 textContainer];
    [v14 setMaximumNumberOfLines:1];

    [v6 setDelegate:v4];
    [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)v4 setIntervalChooserTextView:v6];
    LODWORD(v15) = 1148829696;
    [v6 setLayoutSize:*MEMORY[0x277CEC620] withContentPriority:{*(MEMORY[0x277CEC620] + 8), v15}];
    v16 = [(TTRIPopupMenuTableViewCell *)v4 accessoriesStackView];
    [v16 insertArrangedSubview:v6 atIndex:0];
  }

  return v4;
}

- (void)setIntervalValue:(int64_t)a3
{
  v4 = MEMORY[0x277CCABB8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:0];
  v7 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
  [v7 setText:v6];

  v8 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
  [v8 invalidateIntrinsicContentSize];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];

  if (v11 == v9)
  {
    v13 = [v9 text];
    v14 = [v13 mutableCopy];
    [v14 replaceCharactersInRange:location withString:{length, v10}];
    if ([v14 containsString:@"\n"])
    {
      [v9 resignFirstResponder];
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

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];

  if (v5 == v4)
  {
    v6 = [(TTRIPopupMenuTableViewCell *)self accessoriesStackView];
    [v6 invalidateIntrinsicContentSize];
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];

  if (v5 == v4)
  {
    v6 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
    v15 = [v6 text];

    v7 = [MEMORY[0x277CCABB8] localizedStringFromNumber:&unk_282F1AF58 numberStyle:0];
    if (![v15 length])
    {
      v8 = v7;

      v9 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
      [v9 setText:v8];

      v15 = v8;
    }

    v10 = +[TTRICustomRecurrenceEditorIntervalChooserTableViewCell numberFormatter];
    v11 = [v10 numberFromString:v15];

    if (v11)
    {
      v12 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self delegate];
      [v12 intervalChooserDidUpdateValue:{objc_msgSend(v11, "intValue")}];

      v13 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
      [v13 invalidateIntrinsicContentSize];
    }

    else
    {
      v14 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self intervalChooserTextView];
      [v14 setText:v7];

      v13 = [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self delegate];
      [v13 intervalChooserDidUpdateValue:1];
    }
  }
}

- (TTRICustomRecurrenceEditorIntervalChooserTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end