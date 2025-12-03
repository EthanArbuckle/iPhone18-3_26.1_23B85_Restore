@interface WFTimePickerTableViewCell
- (WFTimePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation WFTimePickerTableViewCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WFTimePickerTableViewCell;
  [(WFTimePickerTableViewCell *)&v4 prepareForReuse];
  datePicker = [(WFTimePickerTableViewCell *)self datePicker];
  [datePicker removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
}

- (WFTimePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WFTimePickerTableViewCell;
  v4 = [(WFTimePickerTableViewCell *)&v28 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    datePicker = v4->_datePicker;
    v4->_datePicker = v5;

    [(UIDatePicker *)v4->_datePicker setDatePickerMode:0];
    [(UIDatePicker *)v4->_datePicker setPreferredDatePickerStyle:1];
    contentView = [(WFTimePickerTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_datePicker];

    [(UIDatePicker *)v4->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    trailingAnchor = [(UIDatePicker *)v4->_datePicker trailingAnchor];
    contentView2 = [(WFTimePickerTableViewCell *)v4 contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[0] = v24;
    topAnchor = [(UIDatePicker *)v4->_datePicker topAnchor];
    contentView3 = [(WFTimePickerTableViewCell *)v4 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[1] = v19;
    bottomAnchor = [(UIDatePicker *)v4->_datePicker bottomAnchor];
    contentView4 = [(WFTimePickerTableViewCell *)v4 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29[2] = v11;
    leadingAnchor = [(UIDatePicker *)v4->_datePicker leadingAnchor];
    contentView5 = [(WFTimePickerTableViewCell *)v4 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v20 activateConstraints:v16];

    v17 = v4;
  }

  return v4;
}

@end