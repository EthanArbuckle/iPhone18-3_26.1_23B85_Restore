@interface VSPSPickerTableViewCell
- (VSPSPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)targetAsDelegate;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation VSPSPickerTableViewCell

- (VSPSPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v26.receiver = self;
  v26.super_class = VSPSPickerTableViewCell;
  v9 = [(PSTableCell *)&v26 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(PSTableCell *)v9 setSpecifier:v8];
    v11 = objc_alloc_init(MEMORY[0x277D75840]);
    pickerView = v10->_pickerView;
    v10->_pickerView = v11;

    [(UIPickerView *)v10->_pickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIPickerView *)v10->_pickerView setDelegate:v10];
    [(UIPickerView *)v10->_pickerView setDataSource:v10];
    v13 = objc_alloc(MEMORY[0x277D75D18]);
    v14 = [(VSPSPickerTableViewCell *)v10 contentView];
    [v14 bounds];
    v15 = [v13 initWithFrame:?];

    [v15 setAutoresizingMask:18];
    [v15 setClipsToBounds:1];
    v16 = [(VSPSPickerTableViewCell *)v10 contentView];
    [v16 addSubview:v15];

    [v15 addSubview:v10->_pickerView];
    v17 = [(VSPSPickerTableViewCell *)v10 targetAsDelegate];
    v18 = [v17 pickerViewCellInitialSelectedRow:v10];

    [(UIPickerView *)v10->_pickerView selectRow:v18 inComponent:0 animated:0];
    v19 = [(UIPickerView *)v10->_pickerView leadingAnchor];
    v20 = [v15 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(UIPickerView *)v10->_pickerView trailingAnchor];
    v23 = [v15 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v24 setActive:1];
  }

  return v10;
}

- (id)targetAsDelegate
{
  v3 = [(PSTableCell *)self specifier];
  v4 = [v3 target];
  v5 = [v4 conformsToProtocol:&unk_288115048];

  if (v5)
  {
    v6 = [(PSTableCell *)self specifier];
    v7 = [v6 target];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = [(VSPSPickerTableViewCell *)self targetAsDelegate:a3];
  v6 = [v5 pickerViewCellNumberOfRows:self];

  return v6;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = [(VSPSPickerTableViewCell *)self targetAsDelegate:a3];
  v8 = [v7 pickerViewCell:self titleForRow:a4];

  return v8;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = [(VSPSPickerTableViewCell *)self targetAsDelegate:a3];
  [v7 pickerViewCell:self didSelectRow:a4];
}

@end