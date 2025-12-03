@interface PRXPickerContentView
- (PRXPickerContentView)initWithCardStyle:(int64_t)style;
- (void)setTextField:(id)field;
- (void)updateConstraints;
@end

@implementation PRXPickerContentView

- (PRXPickerContentView)initWithCardStyle:(int64_t)style
{
  v21[3] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = PRXPickerContentView;
  v3 = [(PRXCardContentView *)&v20 initWithCardStyle:style];
  if (v3)
  {
    v4 = objc_alloc_init(PRXPickerView);
    pickerView = v3->_pickerView;
    v3->_pickerView = &v4->super;

    [(UIPickerView *)v3->_pickerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXPickerContentView *)v3 addSubview:v3->_pickerView];
    mainContentGuide = [(PRXCardContentView *)v3 mainContentGuide];
    v17 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIPickerView *)v3->_pickerView leadingAnchor];
    leadingAnchor2 = [mainContentGuide leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v21[0] = v7;
    trailingAnchor = [(UIPickerView *)v3->_pickerView trailingAnchor];
    trailingAnchor2 = [mainContentGuide trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v21[1] = v10;
    bottomAnchor = [(UIPickerView *)v3->_pickerView bottomAnchor];
    bottomAnchor2 = [mainContentGuide bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    topAnchor = [(UIPickerView *)self->_pickerView topAnchor];
    if (textField)
    {
      bottomAnchor = [(UITextField *)self->_textField bottomAnchor];
      v6 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];
      pickerTopConstraint = self->_pickerTopConstraint;
      self->_pickerTopConstraint = v6;
    }

    else
    {
      bottomAnchor = [(PRXCardContentView *)self mainContentGuide];
      pickerTopConstraint = [bottomAnchor topAnchor];
      v8 = [topAnchor constraintEqualToAnchor:pickerTopConstraint];
      v9 = self->_pickerTopConstraint;
      self->_pickerTopConstraint = v8;
    }

    [(NSLayoutConstraint *)self->_pickerTopConstraint setActive:1];
  }
}

- (void)setTextField:(id)field
{
  v22[3] = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  textField = self->_textField;
  if (textField != fieldCopy)
  {
    [(UITextField *)textField removeFromSuperview];
    objc_storeStrong(&self->_textField, field);
    v7 = self->_textField;
    if (v7)
    {
      [(UITextField *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PRXPickerContentView *)self addSubview:self->_textField];
      mainContentGuide = [(PRXCardContentView *)self mainContentGuide];
      v18 = MEMORY[0x277CCAAD0];
      topAnchor = [(UITextField *)self->_textField topAnchor];
      topAnchor2 = [mainContentGuide topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v22[0] = v19;
      leadingAnchor = [(UITextField *)self->_textField leadingAnchor];
      leadingAnchor2 = [mainContentGuide leadingAnchor];
      v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v22[1] = v11;
      trailingAnchor = [(UITextField *)self->_textField trailingAnchor];
      trailingAnchor2 = [mainContentGuide trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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