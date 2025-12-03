@interface PUMediaTimelineView
+ (id)_stringFromTimeInterval:(double)interval;
- (CGSize)intrinsicContentSize;
- (PUMediaTimelineView)initWithFrame:(CGRect)frame;
- (PUMediaTimelineViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillEnd:(id)end;
- (void)_sliderValueChanged:(id)changed;
- (void)_updateCurrentTimeText;
- (void)_updateDurationText;
- (void)_updateSliderConfiguration;
- (void)layoutSubviews;
- (void)outputEventSignaledForCoalescer:(id)coalescer;
- (void)setCurrentValue:(float)value;
- (void)setLabelColor:(id)color;
- (void)setLabelFont:(id)font;
- (void)setMaxValue:(float)value;
- (void)setMinValue:(float)value;
- (void)setShowsTimeLabels:(BOOL)labels;
- (void)setWhiteValue:(double)value;
@end

@implementation PUMediaTimelineView

- (PUMediaTimelineViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_sliderFluidInteractionWillEnd:(id)end
{
  v4 = [MEMORY[0x1E69C44E8] delayedCoalescerWithDelay:{end, 0.1}];
  eventCoalescer = self->_eventCoalescer;
  self->_eventCoalescer = v4;

  [(PXEventCoalescer *)self->_eventCoalescer registerObserver:self];
  v6 = self->_eventCoalescer;

  [(PXEventCoalescer *)v6 inputEvent];
}

- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location
{
  v5 = [(PUMediaTimelineView *)self delegate:begin];
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

- (void)outputEventSignaledForCoalescer:(id)coalescer
{
  if (self->_eventCoalescer == coalescer)
  {
    delegate = [(PUMediaTimelineView *)self delegate];
    [delegate mediaTimelineControlViewDidEndChanging:self];

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

- (void)_sliderValueChanged:(id)changed
{
  [(PXEventCoalescer *)self->_eventCoalescer inputEvent];
  delegate = [(PUMediaTimelineView *)self delegate];
  [delegate mediaTimelineControlViewDidChangeValue:self];
}

- (void)setCurrentValue:(float)value
{
  [(UISlider *)self->_slider value];
  if (*&v5 != value)
  {
    *&v5 = value;
    [(UISlider *)self->_slider setValue:v5];

    [(PUMediaTimelineView *)self _updateCurrentTimeText];
  }
}

- (void)setMinValue:(float)value
{
  [(UISlider *)self->_slider minimumValue];
  if (*&v5 != value)
  {
    slider = self->_slider;
    *&v5 = value;

    [(UISlider *)slider setMinimumValue:v5];
  }
}

- (void)setMaxValue:(float)value
{
  [(UISlider *)self->_slider maximumValue];
  if (*&v5 != value)
  {
    *&v5 = value;
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

- (void)setShowsTimeLabels:(BOOL)labels
{
  if (self->_showsTimeLabels != labels)
  {
    self->_showsTimeLabels = labels;
    [(PUMediaTimelineView *)self setNeedsLayout];
  }
}

- (void)setLabelColor:(id)color
{
  objc_storeStrong(&self->_labelColor, color);
  colorCopy = color;
  [(UILabel *)self->_currentTimeLabel setTextColor:colorCopy];
  [(UILabel *)self->_durationLabel setTextColor:colorCopy];
}

- (void)setLabelFont:(id)font
{
  objc_storeStrong(&self->_labelFont, font);
  fontCopy = font;
  [(UILabel *)self->_currentTimeLabel setFont:fontCopy];
  [(UILabel *)self->_durationLabel setFont:fontCopy];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = PUMediaTimelineView;
  v5 = [(PUMediaTimelineView *)&v9 hitTest:event withEvent:test.x, test.y];
  slider = v5;
  if (v5 == self)
  {
    slider = self->_slider;
  }

  v7 = slider;

  return slider;
}

- (void)setWhiteValue:(double)value
{
  if (self->_whiteValue != value)
  {
    self->_whiteValue = value;
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
  labelFont = [(PUMediaTimelineView *)self labelFont];
  [labelFont lineHeight];
  [(UILabel *)self->_currentTimeLabel setFrame:0.0, MaxY, Width, v14];

  [(UISlider *)self->_slider frame];
  v15 = CGRectGetMaxY(v23);
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v16 = CGRectGetWidth(v24);
  labelFont2 = [(PUMediaTimelineView *)self labelFont];
  [labelFont2 lineHeight];
  [(UILabel *)self->_durationLabel setFrame:0.0, v15, v16, v18];

  [(UILabel *)self->_durationLabel setHidden:[(PUMediaTimelineView *)self showsTimeLabels]^ 1];
  [(UILabel *)self->_currentTimeLabel setHidden:[(PUMediaTimelineView *)self showsTimeLabels]^ 1];
}

- (PUMediaTimelineView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = PUMediaTimelineView;
  v3 = [(PUMediaTimelineView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(UISlider *)v3->_slider layer];
    [layer setShadowColor:cGColor];

    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
    layer2 = [(UISlider *)v3->_slider layer];
    [layer2 setShadowOffset:{v10, v11}];

    layer3 = [(UISlider *)v3->_slider layer];
    LODWORD(v14) = 1050253722;
    [layer3 setShadowOpacity:v14];

    layer4 = [(UISlider *)v3->_slider layer];
    [layer4 setShadowRadius:5.0];

    [(PUMediaTimelineView *)v3 addSubview:v3->_slider];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    labelColor = v3->_labelColor;
    v3->_labelColor = labelColor;

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

+ (id)_stringFromTimeInterval:(double)interval
{
  if (_stringFromTimeInterval__onceToken_80870 != -1)
  {
    dispatch_once(&_stringFromTimeInterval__onceToken_80870, &__block_literal_global_80871);
  }

  v4 = &_stringFromTimeInterval__hourMinuteSecondFormatter_80872;
  if (interval < 3600.0)
  {
    v4 = &_stringFromTimeInterval__minuteSecondFormatter_80873;
  }

  v5 = *v4;

  return [v5 stringFromTimeInterval:interval];
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