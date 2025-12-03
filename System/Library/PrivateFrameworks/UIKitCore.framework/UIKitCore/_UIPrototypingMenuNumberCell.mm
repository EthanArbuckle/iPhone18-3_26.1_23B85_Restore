@interface _UIPrototypingMenuNumberCell
- (_UIPrototypingMenuNumberCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_prototypingSettingDidChange;
- (void)_sliderDidChangeValue:(id)value;
- (void)_tapRecognizerDidRecognizer:(id)recognizer;
@end

@implementation _UIPrototypingMenuNumberCell

- (_UIPrototypingMenuNumberCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v25.receiver = self;
  v25.super_class = _UIPrototypingMenuNumberCell;
  v4 = [(_UIPrototypingMenuCell *)&v25 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIStackView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(UIStackView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    floatValueStackView = v4->_floatValueStackView;
    v4->_floatValueStackView = v10;

    [(UIStackView *)v4->_floatValueStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_floatValueStackView setAxis:0];
    [(UIStackView *)v4->_floatValueStackView setDistribution:0];
    [(UIStackView *)v4->_floatValueStackView setSpacing:1.17549435e-38];
    [(UIStackView *)v4->_floatValueStackView setLayoutMarginsRelativeArrangement:1];
    [(UIView *)v4->_floatValueStackView setLayoutMargins:10.0, 0.0, 10.0, 0.0];
    stackView = [(_UIPrototypingMenuCell *)v4 stackView];
    [stackView addArrangedSubview:v4->_floatValueStackView];

    v13 = [[UILabel alloc] initWithFrame:v6, v7, v8, v9];
    minLabel = v4->_minLabel;
    v4->_minLabel = v13;

    v15 = *off_1E70ECD28;
    v16 = [off_1E70ECC18 monospacedDigitSystemFontOfSize:17.0 weight:*off_1E70ECD28];
    [(UILabel *)v4->_minLabel setFont:v16];

    [(UIStackView *)v4->_floatValueStackView addArrangedSubview:v4->_minLabel];
    v17 = [[_UIPrototypingMenuSlider alloc] initWithFrame:v6, v7, v8, v9];
    slider = v4->_slider;
    v4->_slider = v17;

    [(UIControl *)v4->_slider addTarget:v4 action:sel__sliderDidChangeValue_ forControlEvents:4096];
    [(UIStackView *)v4->_floatValueStackView addArrangedSubview:v4->_slider];
    v19 = [[UILabel alloc] initWithFrame:v6, v7, v8, v9];
    maxLabel = v4->_maxLabel;
    v4->_maxLabel = v19;

    v21 = [off_1E70ECC18 monospacedDigitSystemFontOfSize:17.0 weight:v15];
    [(UILabel *)v4->_maxLabel setFont:v21];

    [(UILabel *)v4->_maxLabel setTextAlignment:2];
    [(UIStackView *)v4->_floatValueStackView addArrangedSubview:v4->_maxLabel];
    v22 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:sel__tapRecognizerDidRecognizer_];
    tapRecognizer = v4->_tapRecognizer;
    v4->_tapRecognizer = v22;

    [(UIView *)v4 addGestureRecognizer:v4->_tapRecognizer];
    [(UITableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)_tapRecognizerDidRecognizer:(id)recognizer
{
  [recognizer locationInView:self];
  v5 = v4;
  slider = [(_UIPrototypingMenuNumberCell *)self slider];
  slider2 = [(_UIPrototypingMenuNumberCell *)self slider];
  [slider2 knobCenter];
  [slider convertPoint:self toView:?];
  v9 = v8;

  slider3 = [(_UIPrototypingMenuNumberCell *)self slider];
  v11 = slider3;
  if (v5 >= v9)
  {
    [slider3 increment];
  }

  else
  {
    [slider3 decrement];
  }
}

- (void)_prototypingSettingDidChange
{
  v35.receiver = self;
  v35.super_class = _UIPrototypingMenuNumberCell;
  [(_UIPrototypingMenuCell *)&v35 _prototypingSettingDidChange];
  prototypingSetting = [(_UIPrototypingMenuCell *)self prototypingSetting];
  [prototypingSetting stepSize];
  v5 = v4;
  if (v4 == 0.0)
  {
    type = [prototypingSetting type];
    if (type == 1)
    {
      v5 = 0.01;
    }

    else if (!type)
    {
      v5 = 1.0;
    }
  }

  minimumValue = [prototypingSetting minimumValue];
  [minimumValue floatValue];
  v9 = v8;

  v11 = v5;
  *v12.i64 = v11;
  v13 = trunc(v11);
  __x = v12;
  if (v11 <= 0.0)
  {
    goto LABEL_12;
  }

  *v10.i64 = *v12.i64 - v13;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  if (*vbslq_s8(vnegq_f64(v14), v10, v12).i64 == 0.0)
  {
    v15 = 0;
    goto LABEL_13;
  }

  if (fmod(*v12.i64, 0.1) == 0.0)
  {
    v15 = 1;
  }

  else
  {
LABEL_12:
    v15 = 2;
  }

LABEL_13:
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.*f", v15, v9];
  [(UILabel *)self->_minLabel setText:v16];

  maximumValue = [prototypingSetting maximumValue];
  [maximumValue floatValue];
  v19 = v18;

  if (v11 <= 0.0)
  {
    goto LABEL_18;
  }

  *v20.i64 = *__x.i64 - v13;
  v21.f64[0] = NAN;
  v21.f64[1] = NAN;
  if (*vbslq_s8(vnegq_f64(v21), v20, __x).i64 != 0.0)
  {
    if (fmod(*__x.i64, 0.1) == 0.0)
    {
      v22 = 1;
      goto LABEL_19;
    }

LABEL_18:
    v22 = 2;
    goto LABEL_19;
  }

  v22 = 0;
LABEL_19:
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.*f", v22, v19];
  [(UILabel *)self->_maxLabel setText:v23];

  currentValue = [prototypingSetting currentValue];
  [currentValue floatValue];
  v26 = v25;

  slider = [(_UIPrototypingMenuNumberCell *)self slider];
  *&v28 = v9;
  [slider setMinimumValue:v28];

  slider2 = [(_UIPrototypingMenuNumberCell *)self slider];
  *&v30 = v19;
  [slider2 setMaximumValue:v30];

  slider3 = [(_UIPrototypingMenuNumberCell *)self slider];
  [slider3 setStepSize:v5];

  slider4 = [(_UIPrototypingMenuNumberCell *)self slider];
  LODWORD(v33) = v26;
  [slider4 setValue:v33];
}

- (void)_sliderDidChangeValue:(id)value
{
  v4 = MEMORY[0x1E696AD98];
  [value value];
  v6 = [v4 numberWithFloat:?];
  prototypingSetting = [(_UIPrototypingMenuCell *)self prototypingSetting];
  [prototypingSetting setCurrentValue:v6];
}

@end