@interface PRRESegmentTableViewCell
- (PRRESegmentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_currentValue;
- (void)_configure;
- (void)_setCurrentValue:(id)value;
@end

@implementation PRRESegmentTableViewCell

- (PRRESegmentTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PRRESegmentTableViewCell;
  v4 = [(PRRESegmentTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCF38]);
    segment = v4->_segment;
    v4->_segment = v5;

    [(UISegmentedControl *)v4->_segment addTarget:v4 action:sel__valueChanged_ forControlEvents:4096];
    [(PRRESegmentTableViewCell *)v4 setAccessoryView:v4->_segment];
  }

  return v4;
}

- (void)_configure
{
  v3.receiver = self;
  v3.super_class = PRRESegmentTableViewCell;
  [(PRRETableViewCell *)&v3 _configure];
  [(UISegmentedControl *)self->_segment removeAllSegments];
  [(UISegmentedControl *)self->_segment insertSegmentWithTitle:@"🚫" atIndex:0 animated:0];
  [(UISegmentedControl *)self->_segment insertSegmentWithTitle:@"✅" atIndex:1 animated:0];
  [(UISegmentedControl *)self->_segment insertSegmentWithTitle:@"🟡" atIndex:2 animated:0];
  [(UISegmentedControl *)self->_segment insertSegmentWithTitle:@"🛑" atIndex:3 animated:0];
  [(UISegmentedControl *)self->_segment sizeToFit];
  [(PRRESegmentTableViewCell *)self setNeedsLayout];
}

- (id)_currentValue
{
  v2 = MEMORY[0x1E696AD98];
  selectedSegmentIndex = [(UISegmentedControl *)self->_segment selectedSegmentIndex];

  return [v2 numberWithInteger:selectedSegmentIndex];
}

- (void)_setCurrentValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  v10 = valueCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  segment = self->_segment;
  integerValue = [v7 integerValue];

  [(UISegmentedControl *)segment setSelectedSegmentIndex:integerValue];
}

@end