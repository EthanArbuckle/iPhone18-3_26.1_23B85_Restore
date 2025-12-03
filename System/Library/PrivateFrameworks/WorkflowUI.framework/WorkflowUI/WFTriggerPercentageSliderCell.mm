@interface WFTriggerPercentageSliderCell
- (WFTriggerPercentageSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (WFTriggerPercentageSliderCellDelegate)delegate;
- (double)sliderValue;
- (void)configureWithInitialValue:(double)value maximumValue:(double)maximumValue minimumValue:(double)minimumValue stepValue:(double)stepValue;
- (void)setSliderValue:(double)value;
- (void)sliderValueChanged:(id)changed;
@end

@implementation WFTriggerPercentageSliderCell

- (WFTriggerPercentageSliderCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSliderValue:(double)value
{
  [(WFTriggerPercentageSliderCell *)self stepValue];
  [(WFTriggerPercentageSliderCell *)self roundValue:value toNearestStep:v5];
  v7 = v6;
  slider = [(WFTriggerPercentageSliderCell *)self slider];
  *&v8 = v7;
  [slider setValue:0 animated:v8];
}

- (double)sliderValue
{
  slider = [(WFTriggerPercentageSliderCell *)self slider];
  [slider value];
  v5 = v4;
  [(WFTriggerPercentageSliderCell *)self stepValue];
  [(WFTriggerPercentageSliderCell *)self roundValue:v5 toNearestStep:v6];
  v8 = v7;

  return v8;
}

- (void)sliderValueChanged:(id)changed
{
  slider = [(WFTriggerPercentageSliderCell *)self slider];
  [(WFTriggerPercentageSliderCell *)self sliderValue];
  *&v5 = v5;
  [slider setValue:0 animated:v5];

  delegate = [(WFTriggerPercentageSliderCell *)self delegate];
  [(WFTriggerPercentageSliderCell *)self sliderValue];
  [delegate sliderValueChangedToValue:?];
}

- (void)configureWithInitialValue:(double)value maximumValue:(double)maximumValue minimumValue:(double)minimumValue stepValue:(double)stepValue
{
  maximumValueCopy = maximumValue;
  slider = [(WFTriggerPercentageSliderCell *)self slider];
  *&v12 = maximumValueCopy;
  [slider setMaximumValue:v12];

  slider2 = [(WFTriggerPercentageSliderCell *)self slider];
  *&minimumValue = minimumValue;
  LODWORD(v14) = LODWORD(minimumValue);
  [slider2 setMinimumValue:v14];

  [(WFTriggerPercentageSliderCell *)self setSliderValue:value];

  [(WFTriggerPercentageSliderCell *)self setStepValue:stepValue];
}

- (WFTriggerPercentageSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = WFTriggerPercentageSliderCell;
  v4 = [(WFTriggerPercentageSliderCell *)&v13 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    slider = v4->_slider;
    v4->_slider = v5;

    [(UISlider *)v4->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
    v4->_stepValue = 1.0;
    contentView = [(WFTriggerPercentageSliderCell *)v4 contentView];
    [contentView addSubview:v4->_slider];

    v8 = v4->_slider;
    contentView2 = [(WFTriggerPercentageSliderCell *)v4 contentView];
    v10 = [(UISlider *)v8 wf_addConstraintsToFillSuperview:contentView2 insets:8.0, 8.0, 8.0, 8.0];

    [(UISlider *)v4->_slider addTarget:v4 action:sel_sliderValueChanged_ forControlEvents:4096];
    v11 = v4;
  }

  return v4;
}

@end