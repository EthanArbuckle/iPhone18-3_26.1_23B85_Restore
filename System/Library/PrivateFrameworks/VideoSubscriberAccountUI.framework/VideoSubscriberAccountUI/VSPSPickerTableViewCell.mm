@interface VSPSPickerTableViewCell
- (VSPSPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)targetAsDelegate;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation VSPSPickerTableViewCell

- (VSPSPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v26.receiver = self;
  v26.super_class = VSPSPickerTableViewCell;
  v9 = [(PSTableCell *)&v26 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(PSTableCell *)v9 setSpecifier:specifierCopy];
    v11 = objc_alloc_init(MEMORY[0x277D75840]);
    pickerView = v10->_pickerView;
    v10->_pickerView = v11;

    [(UIPickerView *)v10->_pickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIPickerView *)v10->_pickerView setDelegate:v10];
    [(UIPickerView *)v10->_pickerView setDataSource:v10];
    v13 = objc_alloc(MEMORY[0x277D75D18]);
    contentView = [(VSPSPickerTableViewCell *)v10 contentView];
    [contentView bounds];
    v15 = [v13 initWithFrame:?];

    [v15 setAutoresizingMask:18];
    [v15 setClipsToBounds:1];
    contentView2 = [(VSPSPickerTableViewCell *)v10 contentView];
    [contentView2 addSubview:v15];

    [v15 addSubview:v10->_pickerView];
    targetAsDelegate = [(VSPSPickerTableViewCell *)v10 targetAsDelegate];
    v18 = [targetAsDelegate pickerViewCellInitialSelectedRow:v10];

    [(UIPickerView *)v10->_pickerView selectRow:v18 inComponent:0 animated:0];
    leadingAnchor = [(UIPickerView *)v10->_pickerView leadingAnchor];
    leadingAnchor2 = [v15 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v21 setActive:1];

    trailingAnchor = [(UIPickerView *)v10->_pickerView trailingAnchor];
    trailingAnchor2 = [v15 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v24 setActive:1];
  }

  return v10;
}

- (id)targetAsDelegate
{
  specifier = [(PSTableCell *)self specifier];
  target = [specifier target];
  v5 = [target conformsToProtocol:&unk_288115048];

  if (v5)
  {
    specifier2 = [(PSTableCell *)self specifier];
    target2 = [specifier2 target];
  }

  else
  {
    target2 = 0;
  }

  return target2;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v5 = [(VSPSPickerTableViewCell *)self targetAsDelegate:view];
  v6 = [v5 pickerViewCellNumberOfRows:self];

  return v6;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = [(VSPSPickerTableViewCell *)self targetAsDelegate:view];
  v8 = [v7 pickerViewCell:self titleForRow:row];

  return v8;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v7 = [(VSPSPickerTableViewCell *)self targetAsDelegate:view];
  [v7 pickerViewCell:self didSelectRow:row];
}

@end