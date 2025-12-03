@interface PXContextualMemoriesSettingsDatePickerTableViewCell
- (PXContextualMemoriesSettingsDatePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PXContextualMemoriesSettingsDatePickerTableViewCell

- (PXContextualMemoriesSettingsDatePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = PXContextualMemoriesSettingsDatePickerTableViewCell;
  v4 = [(PXContextualMemoriesSettingsDatePickerTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PXContextualMemoriesSettingsDatePickerTableViewCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc(MEMORY[0x1E69DC920]);
    contentView = [(PXContextualMemoriesSettingsDatePickerTableViewCell *)v5 contentView];
    [contentView bounds];
    v8 = [v6 initWithFrame:?];
    datePicker = v5->_datePicker;
    v5->_datePicker = v8;

    [(UIDatePicker *)v5->_datePicker setAutoresizingMask:18];
    [(UIDatePicker *)v5->_datePicker setDatePickerMode:1];
    contentView2 = [(PXContextualMemoriesSettingsDatePickerTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_datePicker];
  }

  return v5;
}

@end