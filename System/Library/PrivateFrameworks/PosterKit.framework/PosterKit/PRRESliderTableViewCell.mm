@interface PRRESliderTableViewCell
- (PRRESliderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_currentValue;
- (void)_configure;
- (void)_setCurrentValue:(id)a3;
@end

@implementation PRRESliderTableViewCell

- (PRRESliderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PRRESliderTableViewCell;
  v4 = [(PRRESliderTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCF60]);
    slider = v4->_slider;
    v4->_slider = v5;

    [(UISlider *)v4->_slider addTarget:v4 action:sel__valueChanged_ forControlEvents:4096];
    [(PRRESliderTableViewCell *)v4 setAccessoryView:v4->_slider];
  }

  return v4;
}

- (void)_configure
{
  v4.receiver = self;
  v4.super_class = PRRESliderTableViewCell;
  [(PRRETableViewCell *)&v4 _configure];
  [(UISlider *)self->_slider setMinimumValue:0.0];
  LODWORD(v3) = 1.0;
  [(UISlider *)self->_slider setMaximumValue:v3];
}

- (id)_currentValue
{
  v2 = MEMORY[0x1E696AD98];
  [(UISlider *)self->_slider value];

  return [v2 numberWithFloat:?];
}

- (void)_setCurrentValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v12 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v12;
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

  slider = self->_slider;
  [v7 floatValue];
  v10 = v9;

  LODWORD(v11) = v10;
  [(UISlider *)slider setValue:v11];
}

@end