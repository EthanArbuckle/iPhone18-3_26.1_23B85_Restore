@interface WFTimePickerTableViewCell
- (WFTimePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation WFTimePickerTableViewCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WFTimePickerTableViewCell;
  [(WFTimePickerTableViewCell *)&v4 prepareForReuse];
  v3 = [(WFTimePickerTableViewCell *)self datePicker];
  [v3 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
}

- (WFTimePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WFTimePickerTableViewCell;
  v4 = [(WFTimePickerTableViewCell *)&v28 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    datePicker = v4->_datePicker;
    v4->_datePicker = v5;

    [(UIDatePicker *)v4->_datePicker setDatePickerMode:0];
    [(UIDatePicker *)v4->_datePicker setPreferredDatePickerStyle:1];
    v7 = [(WFTimePickerTableViewCell *)v4 contentView];
    [v7 addSubview:v4->_datePicker];

    [(UIDatePicker *)v4->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    v26 = [(UIDatePicker *)v4->_datePicker trailingAnchor];
    v27 = [(WFTimePickerTableViewCell *)v4 contentView];
    v25 = [v27 trailingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v29[0] = v24;
    v22 = [(UIDatePicker *)v4->_datePicker topAnchor];
    v23 = [(WFTimePickerTableViewCell *)v4 contentView];
    v21 = [v23 topAnchor];
    v19 = [v22 constraintEqualToAnchor:v21];
    v29[1] = v19;
    v8 = [(UIDatePicker *)v4->_datePicker bottomAnchor];
    v9 = [(WFTimePickerTableViewCell *)v4 contentView];
    v10 = [v9 bottomAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v29[2] = v11;
    v12 = [(UIDatePicker *)v4->_datePicker leadingAnchor];
    v13 = [(WFTimePickerTableViewCell *)v4 contentView];
    v14 = [v13 leadingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v29[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v20 activateConstraints:v16];

    v17 = v4;
  }

  return v4;
}

@end