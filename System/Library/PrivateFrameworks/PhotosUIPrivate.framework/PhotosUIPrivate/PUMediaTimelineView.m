@interface PUMediaTimelineView
+ (id)_stringFromTimeInterval:(double)a3;
- (CGSize)intrinsicContentSize;
- (PUMediaTimelineView)initWithFrame:(CGRect)a3;
- (PUMediaTimelineViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_sliderFluidInteractionWillBegin:(id)a3 withLocation:(CGPoint)a4;
- (void)_sliderFluidInteractionWillEnd:(id)a3;
- (void)_sliderValueChanged:(id)a3;
- (void)_updateCurrentTimeText;
- (void)_updateDurationText;
- (void)_updateSliderConfiguration;
- (void)layoutSubviews;
- (void)outputEventSignaledForCoalescer:(id)a3;
- (void)setCurrentValue:(float)a3;
- (void)setLabelColor:(id)a3;
- (void)setLabelFont:(id)a3;
- (void)setMaxValue:(float)a3;
- (void)setMinValue:(float)a3;
- (void)setShowsTimeLabels:(BOOL)a3;
- (void)setWhiteValue:(double)a3;
@end

@implementation PUMediaTimelineView

- (PUMediaTimelineViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_sliderFluidInteractionWillEnd:(id)a3
{
  v4 = [MEMORY[0x1E69C44E8] delayedCoalescerWithDelay:{a3, 0.1}];
  eventCoalescer = self->_eventCoalescer;
  self->_eventCoalescer = v4;

  [(PXEventCoalescer *)self->_eventCoalescer registerObserver:self];
  v6 = self->_eventCoalescer;

  [(PXEventCoalescer *)v6 inputEvent];
}

- (void)_sliderFluidInteractionWillBegin:(id)a3 withLocation:(CGPoint)a4
{
  v5 = [(PUMediaTimelineView *)self delegate:a3];
  [v5 mediaTimelineControlViewWillBeginChanging:self];
}

- (void)_updateSliderConfiguration
{
  v8 = objc_alloc_init(MEMORY[0x1E69DD718]);
  v3 = MEMORY[0x1E69DC730];
  v4 = MEMORY[0x1E69DC888];
  [(PUMediaTimelineView *)self whiteValue];
  v5 = [v4 colorWithWhite:? alpha:?];
  v6 = [v3 _effectWithTintColor:v5];
  [v8 setMinimumTrackEffect:v6];

  v7 = [MEMORY[0x1E69DC730] effectWithStyle:20];
  [v8 setMaximumTrackEffect:v7];

  [v8 setDelegate:self];
  [(UISlider *)self->_slider _setSliderConfiguration:v8];
}

- (void)outputEventSignaledForCoalescer:(id)a3
{
  if (self->_eventCoalescer == a3)
  {
    v4 = [(PUMediaTimelineView *)self delegate];
    [v4 mediaTimelineControlViewDidEndChanging:self];

    eventCoalescer = self->_eventCoalescer;
    self->_eventCoalescer = 0;
  }
}

- (void)_updateDurationText
{
  v3 = objc_opt_class();
  [(PUMediaTimelineView *)self maxValue];
  v5 = [v3 _stringFromTimeInterval:v4];
  [(UILabel *)self->_durationLabel setText:v5];
}

- (void)_updateCurrentTimeText
{
  v3 = objc_opt_class();
  [(PUMediaTimelineView *)self currentValue];
  v5 = [v3 _stringFromTimeInterval:v4];
  [(UILabel *)self->_currentTimeLabel setText:v5];
}

- (void)_sliderValueChanged:(id)a3
{
  [(PXEventCoalescer *)self->_eventCoalescer inputEvent];
  v4 = [(PUMediaTimelineView *)self delegate];
  [v4 mediaTimelineControlViewDidChangeValue:self];
}

- (void)setCurrentValue:(float)a3
{
  [(UISlider *)self->_slider value];
  if (*&v5 != a3)
  {
    *&v5 = a3;
    [(UISlider *)self->_slider setValue:v5];

    [(PUMediaTimelineView *)self _updateCurrentTimeText];
  }
}

- (void)setMinValue:(float)a3
{
  [(UISlider *)self->_slider minimumValue];
  if (*&v5 != a3)
  {
    slider = self->_slider;
    *&v5 = a3;

    [(UISlider *)slider setMinimumValue:v5];
  }
}

- (void)setMaxValue:(float)a3
{
  [(UISlider *)self->_slider maximumValue];
  if (*&v5 != a3)
  {
    *&v5 = a3;
    [(UISlider *)self->_slider setMaximumValue:v5];

    [(PUMediaTimelineView *)self _updateDurationText];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setShowsTimeLabels:(BOOL)a3
{
  if (self->_showsTimeLabels != a3)
  {
    self->_showsTimeLabels = a3;
    [(PUMediaTimelineView *)self setNeedsLayout];
  }
}

- (void)setLabelColor:(id)a3
{
  objc_storeStrong(&self->_labelColor, a3);
  v5 = a3;
  [(UILabel *)self->_currentTimeLabel setTextColor:v5];
  [(UILabel *)self->_durationLabel setTextColor:v5];
}

- (void)setLabelFont:(id)a3
{
  objc_storeStrong(&self->_labelFont, a3);
  v5 = a3;
  [(UILabel *)self->_currentTimeLabel setFont:v5];
  [(UILabel *)self->_durationLabel setFont:v5];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = PUMediaTimelineView;
  v5 = [(PUMediaTimelineView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  slider = v5;
  if (v5 == self)
  {
    slider = self->_slider;
  }

  v7 = slider;

  return slider;
}

- (void)setWhiteValue:(double)a3
{
  if (self->_whiteValue != a3)
  {
    self->_whiteValue = a3;
    [(PUMediaTimelineView *)self _updateSliderConfiguration];
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PUMediaTimelineView;
  [(PUMediaTimelineView *)&v19 layoutSubviews];
  [(PUMediaTimelineView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIVisualEffectView *)self->_platterView setFrame:?];
  PXRectGetCenter();
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  CGRectGetWidth(v20);
  PXRectWithCenterAndSize();
  [(UISlider *)self->_slider setFrame:?];
  [(UISlider *)self->_slider frame];
  MaxY = CGRectGetMaxY(v21);
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  Width = CGRectGetWidth(v22);
  v13 = [(PUMediaTimelineView *)self labelFont];
  [v13 lineHeight];
  [(UILabel *)self->_currentTimeLabel setFrame:0.0, MaxY, Width, v14];

  [(UISlider *)self->_slider frame];
  v15 = CGRectGetMaxY(v23);
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v16 = CGRectGetWidth(v24);
  v17 = [(PUMediaTimelineView *)self labelFont];
  [v17 lineHeight];
  [(UILabel *)self->_durationLabel setFrame:0.0, v15, v16, v18];

  [(UILabel *)self->_durationLabel setHidden:[(PUMediaTimelineView *)self showsTimeLabels]^ 1];
  [(UILabel *)self->_currentTimeLabel setHidden:[(PUMediaTimelineView *)self showsTimeLabels]^ 1];
}

- (PUMediaTimelineView)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = PUMediaTimelineView;
  v3 = [(PUMediaTimelineView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF60]);
    [(PUMediaTimelineView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    slider = v3->_slider;
    v3->_slider = v5;

    [(UISlider *)v3->_slider addTarget:v3 action:sel__sliderValueChanged_ forControlEvents:4096];
    [(UISlider *)v3->_slider _setSliderStyle:110];
    v3->_whiteValue = 1.0;
    v7 = [MEMORY[0x1E69DC888] blackColor];
    v8 = [v7 CGColor];
    v9 = [(UISlider *)v3->_slider layer];
    [v9 setShadowColor:v8];

    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
    v12 = [(UISlider *)v3->_slider layer];
    [v12 setShadowOffset:{v10, v11}];

    v13 = [(UISlider *)v3->_slider layer];
    LODWORD(v14) = 1050253722;
    [v13 setShadowOpacity:v14];

    v15 = [(UISlider *)v3->_slider layer];
    [v15 setShadowRadius:5.0];

    [(PUMediaTimelineView *)v3 addSubview:v3->_slider];
    v16 = [MEMORY[0x1E69DC888] labelColor];
    labelColor = v3->_labelColor;
    v3->_labelColor = v16;

    v18 = PXFontWithTextStyleAndWeight();
    labelFont = v3->_labelFont;
    v3->_labelFont = v18;

    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    currentTimeLabel = v3->_currentTimeLabel;
    v3->_currentTimeLabel = v20;

    [(UILabel *)v3->_currentTimeLabel setTextAlignment:0];
    [(UILabel *)v3->_currentTimeLabel setFont:v3->_labelFont];
    [(UILabel *)v3->_currentTimeLabel setTextColor:v3->_labelColor];
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    durationLabel = v3->_durationLabel;
    v3->_durationLabel = v22;

    [(UILabel *)v3->_durationLabel setTextAlignment:2];
    [(UILabel *)v3->_durationLabel setFont:v3->_labelFont];
    [(UILabel *)v3->_durationLabel setTextColor:v3->_labelColor];
    [(PUMediaTimelineView *)v3 addSubview:v3->_currentTimeLabel];
    [(PUMediaTimelineView *)v3 addSubview:v3->_durationLabel];
    [(PUMediaTimelineView *)v3 _updateCurrentTimeText];
    [(PUMediaTimelineView *)v3 _updateSliderConfiguration];
  }

  return v3;
}

+ (id)_stringFromTimeInterval:(double)a3
{
  if (_stringFromTimeInterval__onceToken_80870 != -1)
  {
    dispatch_once(&_stringFromTimeInterval__onceToken_80870, &__block_literal_global_80871);
  }

  v4 = &_stringFromTimeInterval__hourMinuteSecondFormatter_80872;
  if (a3 < 3600.0)
  {
    v4 = &_stringFromTimeInterval__minuteSecondFormatter_80873;
  }

  v5 = *v4;

  return [v5 stringFromTimeInterval:a3];
}

uint64_t __47__PUMediaTimelineView__stringFromTimeInterval___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = _stringFromTimeInterval__minuteSecondFormatter_80873;
  _stringFromTimeInterval__minuteSecondFormatter_80873 = v0;

  [_stringFromTimeInterval__minuteSecondFormatter_80873 setAllowedUnits:192];
  [_stringFromTimeInterval__minuteSecondFormatter_80873 setUnitsStyle:0];
  [_stringFromTimeInterval__minuteSecondFormatter_80873 setZeroFormattingBehavior:0x10000];
  v2 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v3 = _stringFromTimeInterval__hourMinuteSecondFormatter_80872;
  _stringFromTimeInterval__hourMinuteSecondFormatter_80872 = v2;

  [_stringFromTimeInterval__hourMinuteSecondFormatter_80872 setAllowedUnits:224];
  [_stringFromTimeInterval__hourMinuteSecondFormatter_80872 setUnitsStyle:0];
  v4 = _stringFromTimeInterval__hourMinuteSecondFormatter_80872;

  return [v4 setZeroFormattingBehavior:0x10000];
}

@end