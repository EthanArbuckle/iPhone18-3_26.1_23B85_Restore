@interface TTRIRecurrenceOrdinalChooserController
- (TTRIRecurrenceOrdinalChooserController)initWithDate:(id)a3;
- (double)heightForRow:(int64_t)a3;
- (id)cellForRow:(int64_t)a3;
@end

@implementation TTRIRecurrenceOrdinalChooserController

- (TTRIRecurrenceOrdinalChooserController)initWithDate:(id)a3
{
  v7.receiver = self;
  v7.super_class = TTRIRecurrenceOrdinalChooserController;
  v3 = [(TTRIRecurrenceChooserController *)&v7 initWithDate:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    [(TTRIRecurrenceOrdinalPickerViewController *)v4 setDelegate:v3];
    pickerViewController = v3->_pickerViewController;
    v3->_pickerViewController = v4;
  }

  return v3;
}

- (double)heightForRow:(int64_t)a3
{
  v3 = [(TTRIRecurrenceOrdinalPickerViewController *)self->_pickerViewController view];
  [v3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v5 = v4;

  return v5;
}

- (id)cellForRow:(int64_t)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  cell = self->_cell;
  if (!cell)
  {
    v5 = [(TTRIRecurrenceOrdinalPickerViewController *)self->_pickerViewController view];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(TTRIRecurrenceChooserController *)self backgroundColor];

    if (v6)
    {
      v7 = [(TTRIRecurrenceChooserController *)self backgroundColor];
      [v5 setBackgroundColor:v7];
    }

    v8 = [[TTRICustomRecurrenceTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v9 = self->_cell;
    self->_cell = &v8->super;

    v10 = [(UITableViewCell *)self->_cell contentView];
    [v10 addSubview:v5];
    v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:9 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
    [v10 addConstraint:v11];

    v12 = [MEMORY[0x277CCAAD0] constraintWithItem:v5 attribute:7 relatedBy:0 toItem:v10 attribute:7 multiplier:1.0 constant:1.0];
    [v10 addConstraint:v12];

    v13 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:8 relatedBy:1 toItem:v5 attribute:8 multiplier:1.0 constant:0.0];
    LODWORD(v14) = 1148829696;
    [v13 setPriority:v14];
    v15 = [MEMORY[0x277CCAAD0] constraintWithItem:v10 attribute:3 relatedBy:0 toItem:v5 attribute:3 multiplier:1.0 constant:0.0];
    v18[0] = v13;
    v18[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v10 addConstraints:v16];

    cell = self->_cell;
  }

  return cell;
}

@end