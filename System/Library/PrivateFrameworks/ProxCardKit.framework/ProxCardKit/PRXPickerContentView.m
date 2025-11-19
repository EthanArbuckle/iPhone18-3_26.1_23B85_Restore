@interface PRXPickerContentView
- (PRXPickerContentView)initWithCardStyle:(int64_t)a3;
- (void)setTextField:(id)a3;
- (void)updateConstraints;
@end

@implementation PRXPickerContentView

- (PRXPickerContentView)initWithCardStyle:(int64_t)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = PRXPickerContentView;
  v3 = [(PRXCardContentView *)&v20 initWithCardStyle:a3];
  if (v3)
  {
    v4 = objc_alloc_init(PRXPickerView);
    pickerView = v3->_pickerView;
    v3->_pickerView = &v4->super;

    [(UIPickerView *)v3->_pickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXPickerContentView *)v3 addSubview:v3->_pickerView];
    v6 = [(PRXCardContentView *)v3 mainContentGuide];
    v17 = MEMORY[0x277CCAAD0];
    v19 = [(UIPickerView *)v3->_pickerView leadingAnchor];
    v18 = [v6 leadingAnchor];
    v7 = [v19 constraintEqualToAnchor:v18];
    v21[0] = v7;
    v8 = [(UIPickerView *)v3->_pickerView trailingAnchor];
    v9 = [v6 trailingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v21[1] = v10;
    v11 = [(UIPickerView *)v3->_pickerView bottomAnchor];
    v12 = [v6 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v21[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    [v17 activateConstraints:v14];

    v15 = v3;
  }

  return v3;
}

- (void)updateConstraints
{
  v10.receiver = self;
  v10.super_class = PRXPickerContentView;
  [(PRXCardContentView *)&v10 updateConstraints];
  if (!self->_pickerTopConstraint)
  {
    textField = self->_textField;
    v4 = [(UIPickerView *)self->_pickerView topAnchor];
    if (textField)
    {
      v5 = [(UITextField *)self->_textField bottomAnchor];
      v6 = [v4 constraintEqualToAnchor:v5 constant:10.0];
      pickerTopConstraint = self->_pickerTopConstraint;
      self->_pickerTopConstraint = v6;
    }

    else
    {
      v5 = [(PRXCardContentView *)self mainContentGuide];
      pickerTopConstraint = [v5 topAnchor];
      v8 = [v4 constraintEqualToAnchor:pickerTopConstraint];
      v9 = self->_pickerTopConstraint;
      self->_pickerTopConstraint = v8;
    }

    [(NSLayoutConstraint *)self->_pickerTopConstraint setActive:1];
  }
}

- (void)setTextField:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  textField = self->_textField;
  if (textField != v5)
  {
    [(UITextField *)textField removeFromSuperview];
    objc_storeStrong(&self->_textField, a3);
    v7 = self->_textField;
    if (v7)
    {
      [(UITextField *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PRXPickerContentView *)self addSubview:self->_textField];
      v8 = [(PRXCardContentView *)self mainContentGuide];
      v18 = MEMORY[0x277CCAAD0];
      v21 = [(UITextField *)self->_textField topAnchor];
      v20 = [v8 topAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v22[0] = v19;
      v9 = [(UITextField *)self->_textField leadingAnchor];
      v10 = [v8 leadingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v22[1] = v11;
      v12 = [(UITextField *)self->_textField trailingAnchor];
      v13 = [v8 trailingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v22[2] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
      [v18 activateConstraints:v15];
    }

    pickerTopConstraint = self->_pickerTopConstraint;
    if (pickerTopConstraint)
    {
      [(NSLayoutConstraint *)pickerTopConstraint setActive:0];
      v17 = self->_pickerTopConstraint;
      self->_pickerTopConstraint = 0;
    }

    [(PRXPickerContentView *)self setNeedsUpdateConstraints];
  }
}

@end