@interface PUAVKitMediaTimelineView
+ (id)_stringFromTimeInterval:(double)interval;
- (CGSize)intrinsicContentSize;
- (CGSize)timeRangeMark:(id)mark sizeInFrame:(CGRect)frame;
- (PUAVKitMediaTimelineView)initWithFrame:(CGRect)frame;
- (PUMediaTimelineViewDelegate)delegate;
- (id)uiProxyForTimeRangeMark:(id)mark withSource:(id)source;
- (void)_updateCurrentValueText;
- (void)_updateMaxValueText;
- (void)_updateTimeRangeMarks;
- (void)_updateTimelineConfiguration;
- (void)dealloc;
- (void)invalidateIntrinsicContentSize;
- (void)mediaTimelineControl:(id)control didChangeValue:(float)value;
- (void)mediaTimelineControlDidEndChanging:(id)changing;
- (void)mediaTimelineControlWillBeginChanging:(id)changing;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCurrentValue:(float)value;
- (void)setHighlightedTimeRanges:(id)ranges;
- (void)setLabelColor:(id)color;
- (void)setLabelFont:(id)font;
- (void)setMaxValue:(float)value;
- (void)setShowsTimeLabels:(BOOL)labels;
- (void)setWhiteValue:(double)value;
@end

@implementation PUAVKitMediaTimelineView

- (PUMediaTimelineViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mediaTimelineControlDidEndChanging:(id)changing
{
  delegate = [(PUAVKitMediaTimelineView *)self delegate];
  [delegate mediaTimelineControlViewDidEndChanging:self];
}

- (void)mediaTimelineControlWillBeginChanging:(id)changing
{
  delegate = [(PUAVKitMediaTimelineView *)self delegate];
  [delegate mediaTimelineControlViewWillBeginChanging:self];
}

- (void)mediaTimelineControl:(id)control didChangeValue:(float)value
{
  [(PUAVKitMediaTimelineView *)self setCurrentValue:control];
  delegate = [(PUAVKitMediaTimelineView *)self delegate];
  [delegate mediaTimelineControlViewDidChangeValue:self];
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = PUAVKitMediaTimelineView;
  [(PUAVKitMediaTimelineView *)&v4 invalidateIntrinsicContentSize];
  delegate = [(PUAVKitMediaTimelineView *)self delegate];
  [delegate mediaTimelineControlIntrinsicContentSizeDidChange:self];
}

- (void)_updateTimelineConfiguration
{
  defaultConfiguration = [MEMORY[0x1E69585E8] defaultConfiguration];
  if (objc_opt_respondsToSelector())
  {
    v3 = MEMORY[0x1E69DC730];
    v4 = MEMORY[0x1E69DC888];
    [(PUAVKitMediaTimelineView *)self whiteValue];
    v5 = [v4 colorWithWhite:? alpha:?];
    v6 = [v3 _effectWithTintColor:v5];
    [defaultConfiguration setCurrentValueVisualEffect:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:20];
    [defaultConfiguration setMaxValueVisualEffect:v7];
  }

  belowConfiguration = [MEMORY[0x1E69585F0] belowConfiguration];
  labelColor = [(PUAVKitMediaTimelineView *)self labelColor];
  [belowConfiguration setTextColor:labelColor];

  labelFont = [(PUAVKitMediaTimelineView *)self labelFont];
  [belowConfiguration setTextFont:labelFont];

  [defaultConfiguration setLabelsConfiguration:belowConfiguration];
  if ([(PUAVKitMediaTimelineView *)self showsTimeLabels])
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [belowConfiguration setLabelsStyle:v11];
  [(AVMediaTimelineControl *)self->_timelineControl setConfiguration:defaultConfiguration];
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
  highlightedTimeRanges = [(PUAVKitMediaTimelineView *)self highlightedTimeRanges];
  v4 = [highlightedTimeRanges count];

  if (v4)
  {
    highlightedTimeRanges2 = [(PUAVKitMediaTimelineView *)self highlightedTimeRanges];
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

- (id)uiProxyForTimeRangeMark:(id)mark withSource:(id)source
{
  v4 = MEMORY[0x1E6958628];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v6 = [systemBlueColor colorWithAlphaComponent:0.85];
  LODWORD(v7) = 4.0;
  v8 = [v4 timeRangeMarkUIProxyWithBackgroundColor:v6 cornerRadius:v7];

  return v8;
}

- (CGSize)timeRangeMark:(id)mark sizeInFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  markCopy = mark;
  [(PUAVKitMediaTimelineView *)self maxValue];
  if (v8 == 0.0)
  {
    v9 = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v10 = v8;
    [markCopy endValue];
    v12 = v11;
    [markCopy startValue];
    v9 = width * (v12 - v13) / v10;
  }

  v14 = v9;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setHighlightedTimeRanges:(id)ranges
{
  if (self->_highlightedTimeRanges != ranges)
  {
    v4 = [ranges copy];
    highlightedTimeRanges = self->_highlightedTimeRanges;
    self->_highlightedTimeRanges = v4;

    [(PUAVKitMediaTimelineView *)self _updateTimeRangeMarks];
  }
}

- (void)setWhiteValue:(double)value
{
  if (self->_whiteValue != value)
  {
    self->_whiteValue = value;
    [(PUAVKitMediaTimelineView *)self _updateTimelineConfiguration];
  }
}

- (void)setShowsTimeLabels:(BOOL)labels
{
  if (self->_showsTimeLabels != labels)
  {
    self->_showsTimeLabels = labels;
    [(PUAVKitMediaTimelineView *)self _updateTimelineConfiguration];

    [(PUAVKitMediaTimelineView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setMaxValue:(float)value
{
  if (self->_maxValue != value)
  {
    self->_maxValue = value;
    [(PUAVKitMediaTimelineView *)self _updateMaxValueText];
    timelineControl = self->_timelineControl;

    [(AVMediaTimelineControl *)timelineControl setNeedsLayout];
  }
}

- (void)setCurrentValue:(float)value
{
  if (self->_currentValue != value)
  {
    self->_currentValue = value;
    [(PUAVKitMediaTimelineView *)self _updateCurrentValueText];
  }
}

- (void)setLabelFont:(id)font
{
  fontCopy = font;
  if (self->_labelFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_labelFont, font);
    [(PUAVKitMediaTimelineView *)self _updateTimelineConfiguration];
    [(PUAVKitMediaTimelineView *)self invalidateIntrinsicContentSize];
    fontCopy = v6;
  }
}

- (void)setLabelColor:(id)color
{
  colorCopy = color;
  if (self->_labelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_labelColor, color);
    [(PUAVKitMediaTimelineView *)self _updateTimelineConfiguration];
    colorCopy = v6;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_timelineControl != objectCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAVKitMediaTimelineView.m" lineNumber:91 description:{@"Unexpected observed object %@", objectCopy}];
  }

  v12 = NSStringFromSelector(sel_intrinsicContentSize);
  v13 = [pathCopy isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUAVKitMediaTimelineView.m" lineNumber:92 description:{@"Unexpected observed key path %@", pathCopy}];
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

- (PUAVKitMediaTimelineView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = PUAVKitMediaTimelineView;
  v3 = [(PUAVKitMediaTimelineView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_whiteValue = 1.0;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    labelColor = v4->_labelColor;
    v4->_labelColor = labelColor;

    v7 = [objc_alloc(MEMORY[0x1E69585E0]) initWithSource:v4];
    timelineControl = v4->_timelineControl;
    v4->_timelineControl = v7;

    [(PUAVKitMediaTimelineView *)v4 bounds];
    [(AVMediaTimelineControl *)v4->_timelineControl setFrame:?];
    [(AVMediaTimelineControl *)v4->_timelineControl setDelegate:v4];
    [(AVMediaTimelineControl *)v4->_timelineControl setEnabled:1];
    [(AVMediaTimelineControl *)v4->_timelineControl setAutoresizingMask:18];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(AVMediaTimelineControl *)v4->_timelineControl layer];
    [layer setShadowColor:cGColor];

    layer2 = [(AVMediaTimelineControl *)v4->_timelineControl layer];
    LODWORD(v13) = 1050253722;
    [layer2 setShadowOpacity:v13];

    layer3 = [(AVMediaTimelineControl *)v4->_timelineControl layer];
    [layer3 setShadowRadius:5.0];

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

+ (id)_stringFromTimeInterval:(double)interval
{
  if (_stringFromTimeInterval__onceToken != -1)
  {
    dispatch_once(&_stringFromTimeInterval__onceToken, &__block_literal_global_25939);
  }

  v4 = &_stringFromTimeInterval__hourMinuteSecondFormatter;
  if (interval < 3600.0)
  {
    v4 = &_stringFromTimeInterval__minuteSecondFormatter;
  }

  v5 = *v4;

  return [v5 stringFromTimeInterval:interval];
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