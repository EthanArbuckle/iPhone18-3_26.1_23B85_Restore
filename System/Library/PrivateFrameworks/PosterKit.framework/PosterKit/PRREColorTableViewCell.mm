@interface PRREColorTableViewCell
- (PRREColorTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_configure;
- (void)_setCurrentValue:(id)value;
- (void)_tapped:(id)_tapped;
- (void)colorPickerViewControllerDidFinish:(id)finish;
@end

@implementation PRREColorTableViewCell

- (PRREColorTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PRREColorTableViewCell;
  v4 = [(PRREColorTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DC8A8]);
    well = v4->_well;
    v4->_well = v5;

    [(UIColorWell *)v4->_well setSupportsAlpha:0];
    [(UIColorWell *)v4->_well addTarget:v4 action:sel__valueChanged_ forControlEvents:4096];
    [(UIColorWell *)v4->_well addTarget:v4 action:sel__tapped_ forControlEvents:64];
    [(PRREColorTableViewCell *)v4 setAccessoryView:v4->_well];
  }

  return v4;
}

- (void)_configure
{
  v3.receiver = self;
  v3.super_class = PRREColorTableViewCell;
  [(PRRETableViewCell *)&v3 _configure];
  [(UIColorWell *)self->_well sizeToFit];
  [(PRREColorTableViewCell *)self setNeedsLayout];
}

- (void)_setCurrentValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  v6 = valueCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(UIColorWell *)self->_well setSelectedColor:v8];
}

- (void)_tapped:(id)_tapped
{
  v4 = objc_alloc_init(MEMORY[0x1E69DC8A0]);
  [v4 setDelegate:self];
  [v4 setSupportsAlpha:0];
}

- (void)colorPickerViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selectedColor = [finishCopy selectedColor];
  [(PRREColorTableViewCell *)self _setCurrentValue:selectedColor];

  [(PRRETableViewCell *)self _valueChanged:self];
  [finishCopy setDelegate:0];
}

@end