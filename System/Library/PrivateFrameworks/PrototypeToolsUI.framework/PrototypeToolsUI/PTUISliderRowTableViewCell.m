@interface PTUISliderRowTableViewCell
- (PTUISliderRowTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)valueForText:(id)a3;
- (void)numericKeypadDidUpdateValue:(id)a3;
- (void)numericKeypadWillDismiss:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation PTUISliderRowTableViewCell

- (id)valueForText:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  [a3 floatValue];

  return [v3 numberWithFloat:?];
}

- (PTUISliderRowTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = PTUISliderRowTableViewCell;
  v4 = [(PTUISliderRowTableViewCell *)&v23 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    slider = v4->_slider;
    v4->_slider = v5;

    [(UISlider *)v4->_slider setContinuous:1];
    [(UISlider *)v4->_slider addTarget:v4 action:sel__valueChanged_ forControlEvents:4096];
    v7 = objc_alloc(MEMORY[0x277D75BB8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textField = v4->_textField;
    v4->_textField = v8;

    [(UITextField *)v4->_textField setUserInteractionEnabled:1];
    [(UITextField *)v4->_textField setKeyboardType:8];
    [(UITextField *)v4->_textField setDelegate:v4];
    v10 = objc_alloc(MEMORY[0x277D75A68]);
    v24[0] = v4->_slider;
    v24[1] = v4->_textField;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v12 = [v10 initWithArrangedSubviews:v11];

    [v12 setAxis:0];
    [v12 setSpacing:10.0];
    [v12 frame];
    v14 = v13;
    [v12 frame];
    v16 = v15;
    v17 = [(PTUISliderRowTableViewCell *)v4 _tableView];
    [v17 frame];
    v19 = v18 * 0.5;
    v20 = [(PTUISliderRowTableViewCell *)v4 _tableView];
    [v20 frame];
    [v12 setFrame:{v14, v16, v19}];

    [(PTUISliderRowTableViewCell *)v4 setAccessoryView:v12];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v4;
}

void __41__PTUISliderRowTableViewCell_updateLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) row];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && ([v6 valueStringFormatter], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v6 valueStringFormatter];
    v9 = MEMORY[0x277CCABB0];
    [*(*(a1 + 32) + 1032) value];
    v10 = [v9 numberWithFloat:?];
    v11 = [*(a1 + 32) row];
    v12 = [v11 settings];
    v16 = (v8)[2](v8, v10, v12);

    v13 = v16;
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    [*(*(a1 + 32) + 1032) value];
    v13 = [v14 stringWithFormat:@"%.02f", v15];
  }

  v17 = v13;
  [*(*(a1 + 32) + 1040) setText:v13];
}

void __55__PTUISliderRowTableViewCell_updateCellCharacteristics__block_invoke(uint64_t a1)
{
  v7.receiver = *(a1 + 32);
  v7.super_class = PTUISliderRowTableViewCell;
  objc_msgSendSuper2(&v7, sel_updateCellCharacteristics);
  v2 = [*(a1 + 32) row];
  v3 = *(*(a1 + 32) + 1032);
  [v2 minValue];
  *&v4 = v4;
  [v3 setMinimumValue:v4];
  v5 = *(*(a1 + 32) + 1032);
  [v2 maxValue];
  *&v6 = v6;
  [v5 setMaximumValue:v6];
}

void __50__PTUISliderRowTableViewCell_updateDisplayedValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) row];
  v4 = [v2 value];

  v3 = *(*(a1 + 32) + 1032);
  [v4 floatValue];
  [v3 setValue:?];
  [*(a1 + 32) updateLabel];
}

uint64_t __44__PTUISliderRowTableViewCell__valueChanged___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1032) value];
  v3 = v2;
  v4 = [*(a1 + 32) row];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  [v4 setValue:v5];

  v6 = *(a1 + 32);

  return [v6 updateLabel];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v7 = a3;
  if (PTUINumericKeypadIsNeeded())
  {
    v4 = +[PTUINumericKeypad sharedKeypad];
    v5 = [v7 text];
    [v4 setStringValue:v5];

    v6 = +[PTUINumericKeypad sharedKeypad];
    [v6 showAnimated:1 forDelegate:self];
  }
}

- (void)textFieldDidEndEditing:(id)a3
{
  [a3 setTextAlignment:2];
  v7 = [(UITextField *)self->_textField text];
  v4 = [(PTUIRowTableViewCell *)self row];
  v5 = [(PTUISliderRowTableViewCell *)self valueForText:v7];
  [v4 setValue:v5];

  if (PTUINumericKeypadIsNeeded())
  {
    v6 = +[PTUINumericKeypad sharedKeypad];
    [v6 hideAnimated:1];
  }
}

- (void)numericKeypadDidUpdateValue:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

uint64_t __58__PTUISliderRowTableViewCell_numericKeypadDidUpdateValue___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1032);
  [*(a1 + 40) doubleValue];
  *&v3 = v3;
  [v2 setValue:v3];
  [*(*(a1 + 32) + 1032) sendActionsForControlEvents:4096];
  v4 = *(a1 + 32);

  return [v4 updateLabel];
}

- (void)numericKeypadWillDismiss:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __55__PTUISliderRowTableViewCell_numericKeypadWillDismiss___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1032);
  [*(a1 + 40) doubleValue];
  *&v3 = v3;
  [v2 setValue:v3];
  [*(a1 + 32) updateLabel];
  if (PTUINumericKeypadIsNeeded())
  {
    v4 = +[PTUINumericKeypad sharedKeypad];
    [v4 hideAnimated:1];
  }
}

@end