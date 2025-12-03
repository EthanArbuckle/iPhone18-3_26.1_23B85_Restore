@interface TTRIRecurrenceOrdinalChooserController
- (TTRIRecurrenceOrdinalChooserController)initWithDate:(id)date;
- (double)heightForRow:(int64_t)row;
- (id)cellForRow:(int64_t)row;
@end

@implementation TTRIRecurrenceOrdinalChooserController

- (TTRIRecurrenceOrdinalChooserController)initWithDate:(id)date
{
  v7.receiver = self;
  v7.super_class = TTRIRecurrenceOrdinalChooserController;
  v3 = [(TTRIRecurrenceChooserController *)&v7 initWithDate:date];
  if (v3)
  {
    v4 = objc_opt_new();
    [(TTRIRecurrenceOrdinalPickerViewController *)v4 setDelegate:v3];
    pickerViewController = v3->_pickerViewController;
    v3->_pickerViewController = v4;
  }

  return v3;
}

- (double)heightForRow:(int64_t)row
{
  view = [(TTRIRecurrenceOrdinalPickerViewController *)self->_pickerViewController view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v5 = v4;

  return v5;
}

- (id)cellForRow:(int64_t)row
{
  v18[2] = *MEMORY[0x277D85DE8];
  cell = self->_cell;
  if (!cell)
  {
    view = [(TTRIRecurrenceOrdinalPickerViewController *)self->_pickerViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    backgroundColor = [(TTRIRecurrenceChooserController *)self backgroundColor];

    if (backgroundColor)
    {
      backgroundColor2 = [(TTRIRecurrenceChooserController *)self backgroundColor];
      [view setBackgroundColor:backgroundColor2];
    }

    v8 = [[TTRICustomRecurrenceTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v9 = self->_cell;
    self->_cell = &v8->super;

    contentView = [(UITableViewCell *)self->_cell contentView];
    [contentView addSubview:view];
    v11 = [MEMORY[0x277CCAAD0] constraintWithItem:contentView attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v11];

    v12 = [MEMORY[0x277CCAAD0] constraintWithItem:view attribute:7 relatedBy:0 toItem:contentView attribute:7 multiplier:1.0 constant:1.0];
    [contentView addConstraint:v12];

    v13 = [MEMORY[0x277CCAAD0] constraintWithItem:contentView attribute:8 relatedBy:1 toItem:view attribute:8 multiplier:1.0 constant:0.0];
    LODWORD(v14) = 1148829696;
    [v13 setPriority:v14];
    v15 = [MEMORY[0x277CCAAD0] constraintWithItem:contentView attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];
    v18[0] = v13;
    v18[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [contentView addConstraints:v16];

    cell = self->_cell;
  }

  return cell;
}

@end