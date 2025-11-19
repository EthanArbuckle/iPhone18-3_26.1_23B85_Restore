@interface WFTriggerPercentageSliderCell
- (WFTriggerPercentageSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (WFTriggerPercentageSliderCellDelegate)delegate;
- (double)sliderValue;
- (void)configureWithInitialValue:(double)a3 maximumValue:(double)a4 minimumValue:(double)a5 stepValue:(double)a6;
- (void)setSliderValue:(double)a3;
- (void)sliderValueChanged:(id)a3;
@end

@implementation WFTriggerPercentageSliderCell

- (WFTriggerPercentageSliderCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSliderValue:(double)a3
{
  [(WFTriggerPercentageSliderCell *)self stepValue];
  [(WFTriggerPercentageSliderCell *)self roundValue:a3 toNearestStep:v5];
  v7 = v6;
  v9 = [(WFTriggerPercentageSliderCell *)self slider];
  *&v8 = v7;
  [v9 setValue:0 animated:v8];
}

- (double)sliderValue
{
  v3 = [(WFTriggerPercentageSliderCell *)self slider];
  [v3 value];
  v5 = v4;
  [(WFTriggerPercentageSliderCell *)self stepValue];
  [(WFTriggerPercentageSliderCell *)self roundValue:v5 toNearestStep:v6];
  v8 = v7;

  return v8;
}

- (void)sliderValueChanged:(id)a3
{
  v4 = [(WFTriggerPercentageSliderCell *)self slider];
  [(WFTriggerPercentageSliderCell *)self sliderValue];
  *&v5 = v5;
  [v4 setValue:0 animated:v5];

  v6 = [(WFTriggerPercentageSliderCell *)self delegate];
  [(WFTriggerPercentageSliderCell *)self sliderValue];
  [v6 sliderValueChangedToValue:?];
}

- (void)configureWithInitialValue:(double)a3 maximumValue:(double)a4 minimumValue:(double)a5 stepValue:(double)a6
{
  v10 = a4;
  v11 = [(WFTriggerPercentageSliderCell *)self slider];
  *&v12 = v10;
  [v11 setMaximumValue:v12];

  v13 = [(WFTriggerPercentageSliderCell *)self slider];
  *&a5 = a5;
  LODWORD(v14) = LODWORD(a5);
  [v13 setMinimumValue:v14];

  [(WFTriggerPercentageSliderCell *)self setSliderValue:a3];

  [(WFTriggerPercentageSliderCell *)self setStepValue:a6];
}

- (WFTriggerPercentageSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = WFTriggerPercentageSliderCell;
  v4 = [(WFTriggerPercentageSliderCell *)&v13 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    slider = v4->_slider;
    v4->_slider = v5;

    [(UISlider *)v4->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
    v4->_stepValue = 1.0;
    v7 = [(WFTriggerPercentageSliderCell *)v4 contentView];
    [v7 addSubview:v4->_slider];

    v8 = v4->_slider;
    v9 = [(WFTriggerPercentageSliderCell *)v4 contentView];
    v10 = [(UISlider *)v8 wf_addConstraintsToFillSuperview:v9 insets:8.0, 8.0, 8.0, 8.0];

    [(UISlider *)v4->_slider addTarget:v4 action:sel_sliderValueChanged_ forControlEvents:4096];
    v11 = v4;
  }

  return v4;
}

@end