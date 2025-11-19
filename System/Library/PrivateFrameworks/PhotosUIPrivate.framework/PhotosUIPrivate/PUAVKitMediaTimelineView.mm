@interface PUAVKitMediaTimelineView
+ (id)_stringFromTimeInterval:(double)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)timeRangeMark:(id)a3 sizeInFrame:(CGRect)a4;
- (PUAVKitMediaTimelineView)initWithFrame:(CGRect)a3;
- (PUMediaTimelineViewDelegate)delegate;
- (id)uiProxyForTimeRangeMark:(id)a3 withSource:(id)a4;
- (void)_updateCurrentValueText;
- (void)_updateMaxValueText;
- (void)_updateTimeRangeMarks;
- (void)_updateTimelineConfiguration;
- (void)dealloc;
- (void)invalidateIntrinsicContentSize;
- (void)mediaTimelineControl:(id)a3 didChangeValue:(float)a4;
- (void)mediaTimelineControlDidEndChanging:(id)a3;
- (void)mediaTimelineControlWillBeginChanging:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCurrentValue:(float)a3;
- (void)setHighlightedTimeRanges:(id)a3;
- (void)setLabelColor:(id)a3;
- (void)setLabelFont:(id)a3;
- (void)setMaxValue:(float)a3;
- (void)setShowsTimeLabels:(BOOL)a3;
- (void)setWhiteValue:(double)a3;
@end

@implementation PUAVKitMediaTimelineView

- (PUMediaTimelineViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mediaTimelineControlDidEndChanging:(id)a3
{
  v4 = [(PUAVKitMediaTimelineView *)self delegate];
  [v4 mediaTimelineControlViewDidEndChanging:self];
}

- (void)mediaTimelineControlWillBeginChanging:(id)a3
{
  v4 = [(PUAVKitMediaTimelineView *)self delegate];
  [v4 mediaTimelineControlViewWillBeginChanging:self];
}

- (void)mediaTimelineControl:(id)a3 didChangeValue:(float)a4
{
  [(PUAVKitMediaTimelineView *)self setCurrentValue:a3];
  v5 = [(PUAVKitMediaTimelineView *)self delegate];
  [v5 mediaTimelineControlViewDidChangeValue:self];
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = PUAVKitMediaTimelineView;
  [(PUAVKitMediaTimelineView *)&v4 invalidateIntrinsicContentSize];
  v3 = [(PUAVKitMediaTimelineView *)self delegate];
  [v3 mediaTimelineControlIntrinsicContentSizeDidChange:self];
}

- (void)_updateTimelineConfiguration
{
  v12 = [MEMORY[0x1E69585E8] defaultConfiguration];
  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x1E69DC730];
    v4 = MEMORY[0x1E69DC888];
    [(PUAVKitMediaTimelineView *)self whiteValue];
    v5 = [v4 colorWithWhite:? alpha:?];
    v6 = [v3 _effectWithTintColor:v5];
    [v12 setCurrentValueVisualEffect:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:20];
    [v12 setMaxValueVisualEffect:v7];
  }

  v8 = [MEMORY[0x1E69585F0] belowConfiguration];
  v9 = [(PUAVKitMediaTimelineView *)self labelColor];
  [v8 setTextColor:v9];

  v10 = [(PUAVKitMediaTimelineView *)self labelFont];
  [v8 setTextFont:v10];

  [v12 setLabelsConfiguration:v8];
  if ([(PUAVKitMediaTimelineView *)self showsTimeLabels])
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [v8 setLabelsStyle:v11];
  [(AVMediaTimelineControl *)self->_timelineControl setConfiguration:v12];
  [(PUAVKitMediaTimelineView *)self invalidateIntrinsicContentSize];
}

- (void)_updateMaxValueText
{
  v3 = objc_opt_class();
  [(PUAVKitMediaTimelineView *)self maxValue];
  v5 = [v3 _stringFromTimeInterval:v4];
  [(PUAVKitMediaTimelineView *)self setMaxValueText:v5];

  [(PUAVKitMediaTimelineView *)self invalidateIntrinsicContentSize];
}

- (void)_updateCurrentValueText
{
  v3 = objc_opt_class();
  [(PUAVKitMediaTimelineView *)self currentValue];
  v5 = [v3 _stringFromTimeInterval:v4];
  [(PUAVKitMediaTimelineView *)self setCurrentValueText:v5];

  [(PUAVKitMediaTimelineView *)self invalidateIntrinsicContentSize];
}

- (void)_updateTimeRangeMarks
{
  v3 = [(PUAVKitMediaTimelineView *)self highlightedTimeRanges];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(PUAVKitMediaTimelineView *)self highlightedTimeRanges];
    v6 = PXMap();
    [(PUAVKitMediaTimelineView *)self setTimeRangeMarks:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];

    [(PUAVKitMediaTimelineView *)self setTimeRangeMarks:v7];
  }
}

id __49__PUAVKitMediaTimelineView__updateTimeRangeMarks__block_invoke(uint64_t a1, void *a2)
{
  memset(&v11, 0, sizeof(v11));
  if (a2)
  {
    [a2 CMTimeRangeValue];
  }

  v3 = objc_alloc(MEMORY[0x1E6958620]);
  *&v9.start.value = *&v11.start.value;
  v9.start.epoch = v11.start.epoch;
  Seconds = CMTimeGetSeconds(&v9.start);
  v9 = v11;
  CMTimeRangeGetEnd(&time, &v9);
  v5 = CMTimeGetSeconds(&time);
  *&v6 = v5;
  *&v5 = Seconds;
  v7 = [v3 initWithStartValue:&stru_1F2AC6818 endValue:*(a1 + 32) identifier:v5 markUIProvider:v6];

  return v7;
}

- (id)uiProxyForTimeRangeMark:(id)a3 withSource:(id)a4
{
  v4 = MEMORY[0x1E6958628];
  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  v6 = [v5 colorWithAlphaComponent:0.85];
  LODWORD(v7) = 4.0;
  v8 = [v4 timeRangeMarkUIProxyWithBackgroundColor:v6 cornerRadius:v7];

  return v8;
}

- (CGSize)timeRangeMark:(id)a3 sizeInFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v7 = a3;
  [(PUAVKitMediaTimelineView *)self maxValue];
  if (v8 == 0.0)
  {
    v9 = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v10 = v8;
    [v7 endValue];
    v12 = v11;
    [v7 startValue];
    v9 = width * (v12 - v13) / v10;
  }

  v14 = v9;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setHighlightedTimeRanges:(id)a3
{
  if (self->_highlightedTimeRanges != a3)
  {
    v4 = [a3 copy];
    highlightedTimeRanges = self->_highlightedTimeRanges;
    self->_highlightedTimeRanges = v4;

    [(PUAVKitMediaTimelineView *)self _updateTimeRangeMarks];
  }
}

- (void)setWhiteValue:(double)a3
{
  if (self->_whiteValue != a3)
  {
    self->_whiteValue = a3;
    [(PUAVKitMediaTimelineView *)self _updateTimelineConfiguration];
  }
}

- (void)setShowsTimeLabels:(BOOL)a3
{
  if (self->_showsTimeLabels != a3)
  {
    self->_showsTimeLabels = a3;
    [(PUAVKitMediaTimelineView *)self _updateTimelineConfiguration];

    [(PUAVKitMediaTimelineView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setMaxValue:(float)a3
{
  if (self->_maxValue != a3)
  {
    self->_maxValue = a3;
    [(PUAVKitMediaTimelineView *)self _updateMaxValueText];
    timelineControl = self->_timelineControl;

    [(AVMediaTimelineControl *)timelineControl setNeedsLayout];
  }
}

- (void)setCurrentValue:(float)a3
{
  if (self->_currentValue != a3)
  {
    self->_currentValue = a3;
    [(PUAVKitMediaTimelineView *)self _updateCurrentValueText];
  }
}

- (void)setLabelFont:(id)a3
{
  v5 = a3;
  if (self->_labelFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_labelFont, a3);
    [(PUAVKitMediaTimelineView *)self _updateTimelineConfiguration];
    [(PUAVKitMediaTimelineView *)self invalidateIntrinsicContentSize];
    v5 = v6;
  }
}

- (void)setLabelColor:(id)a3
{
  v5 = a3;
  if (self->_labelColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_labelColor, a3);
    [(PUAVKitMediaTimelineView *)self _updateTimelineConfiguration];
    v5 = v6;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_timelineControl != v10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUAVKitMediaTimelineView.m" lineNumber:91 description:{@"Unexpected observed object %@", v10}];
  }

  v12 = NSStringFromSelector(sel_intrinsicContentSize);
  v13 = [v16 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUAVKitMediaTimelineView.m" lineNumber:92 description:{@"Unexpected observed key path %@", v16}];
  }

  [(PUAVKitMediaTimelineView *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  [(AVMediaTimelineControl *)self->_timelineControl intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dealloc
{
  timelineControl = self->_timelineControl;
  v4 = NSStringFromSelector(sel_intrinsicContentSize);
  [(AVMediaTimelineControl *)timelineControl removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = PUAVKitMediaTimelineView;
  [(PUAVKitMediaTimelineView *)&v5 dealloc];
}

- (PUAVKitMediaTimelineView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = PUAVKitMediaTimelineView;
  v3 = [(PUAVKitMediaTimelineView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_whiteValue = 1.0;
    v5 = [MEMORY[0x1E69DC888] labelColor];
    labelColor = v4->_labelColor;
    v4->_labelColor = v5;

    v7 = [objc_alloc(MEMORY[0x1E69585E0]) initWithSource:v4];
    timelineControl = v4->_timelineControl;
    v4->_timelineControl = v7;

    [(PUAVKitMediaTimelineView *)v4 bounds];
    [(AVMediaTimelineControl *)v4->_timelineControl setFrame:?];
    [(AVMediaTimelineControl *)v4->_timelineControl setDelegate:v4];
    [(AVMediaTimelineControl *)v4->_timelineControl setEnabled:1];
    [(AVMediaTimelineControl *)v4->_timelineControl setAutoresizingMask:18];
    v9 = [MEMORY[0x1E69DC888] blackColor];
    v10 = [v9 CGColor];
    v11 = [(AVMediaTimelineControl *)v4->_timelineControl layer];
    [v11 setShadowColor:v10];

    v12 = [(AVMediaTimelineControl *)v4->_timelineControl layer];
    LODWORD(v13) = 1050253722;
    [v12 setShadowOpacity:v13];

    v14 = [(AVMediaTimelineControl *)v4->_timelineControl layer];
    [v14 setShadowRadius:5.0];

    [(PUAVKitMediaTimelineView *)v4 _updateTimelineConfiguration];
    [(PUAVKitMediaTimelineView *)v4 addSubview:v4->_timelineControl];
    v15 = v4->_timelineControl;
    v16 = NSStringFromSelector(sel_intrinsicContentSize);
    [(AVMediaTimelineControl *)v15 addObserver:v4 forKeyPath:v16 options:0 context:0];

    [(PUAVKitMediaTimelineView *)v4 setPlaying:1];
    [(PUAVKitMediaTimelineView *)v4 setLoading:0];
    [(PUAVKitMediaTimelineView *)v4 setMaxValue:0.0];
    [(PUAVKitMediaTimelineView *)v4 setMinValue:0.0];
    LODWORD(v17) = 0.5;
    [(PUAVKitMediaTimelineView *)v4 setCurrentValue:v17];
    [(PUAVKitMediaTimelineView *)v4 setClipsToBounds:0];
  }

  return v4;
}

+ (id)_stringFromTimeInterval:(double)a3
{
  if (_stringFromTimeInterval__onceToken != -1)
  {
    dispatch_once(&_stringFromTimeInterval__onceToken, &__block_literal_global_25939);
  }

  v4 = &_stringFromTimeInterval__hourMinuteSecondFormatter;
  if (a3 < 3600.0)
  {
    v4 = &_stringFromTimeInterval__minuteSecondFormatter;
  }

  v5 = *v4;

  return [v5 stringFromTimeInterval:a3];
}

uint64_t __52__PUAVKitMediaTimelineView__stringFromTimeInterval___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = _stringFromTimeInterval__minuteSecondFormatter;
  _stringFromTimeInterval__minuteSecondFormatter = v0;

  [_stringFromTimeInterval__minuteSecondFormatter setAllowedUnits:192];
  [_stringFromTimeInterval__minuteSecondFormatter setUnitsStyle:0];
  [_stringFromTimeInterval__minuteSecondFormatter setZeroFormattingBehavior:0x10000];
  v2 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v3 = _stringFromTimeInterval__hourMinuteSecondFormatter;
  _stringFromTimeInterval__hourMinuteSecondFormatter = v2;

  [_stringFromTimeInterval__hourMinuteSecondFormatter setAllowedUnits:224];
  [_stringFromTimeInterval__hourMinuteSecondFormatter setUnitsStyle:0];
  v4 = _stringFromTimeInterval__hourMinuteSecondFormatter;

  return [v4 setZeroFormattingBehavior:0x10000];
}

@end