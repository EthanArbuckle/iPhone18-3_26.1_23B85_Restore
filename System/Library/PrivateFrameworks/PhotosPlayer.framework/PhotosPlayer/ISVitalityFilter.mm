@interface ISVitalityFilter
- (ISVitalityFilter)initWithSettings:(id)settings;
- (void)performInputChanges:(id)changes;
- (void)performOutputChanges:(id)changes;
- (void)setDecelerating:(BOOL)decelerating;
- (void)setEstimatedScrollEndDate:(id)date;
- (void)setHasTargetVisibilityOffset:(BOOL)offset;
- (void)setPlayRate:(double)rate;
- (void)setScrolling:(BOOL)scrolling;
- (void)setScrubOffset:(double)offset;
- (void)setScrubbing:(BOOL)scrubbing;
- (void)setTargetVisibilityOffset:(double)offset;
- (void)setVisibilityOffset:(double)offset;
- (void)setVisible:(BOOL)visible;
@end

@implementation ISVitalityFilter

- (void)setPlayRate:(double)rate
{
  if (self->_playRate != rate)
  {
    self->_playRate = rate;
    [(ISVitalityFilter *)self _invalidateOutput];
  }
}

- (void)setScrubOffset:(double)offset
{
  if (self->_scrubOffset != offset)
  {
    self->_scrubOffset = offset;
    [(ISVitalityFilter *)self _invalidateOutput];
  }
}

- (void)setScrubbing:(BOOL)scrubbing
{
  if (self->_scrubbing != scrubbing)
  {
    self->_scrubbing = scrubbing;
    [(ISVitalityFilter *)self _invalidateOutput];
  }
}

- (void)setDecelerating:(BOOL)decelerating
{
  if (self->_isDecelerating != decelerating)
  {
    self->_isDecelerating = decelerating;
  }
}

- (void)setScrolling:(BOOL)scrolling
{
  if (self->_isScrolling != scrolling)
  {
    self->_isScrolling = scrolling;
  }
}

- (void)setEstimatedScrollEndDate:(id)date
{
  dateCopy = date;
  estimatedScrollEndDate = self->_estimatedScrollEndDate;
  p_estimatedScrollEndDate = &self->_estimatedScrollEndDate;
  if (estimatedScrollEndDate != dateCopy)
  {
    v8 = dateCopy;
    objc_storeStrong(p_estimatedScrollEndDate, date);
    dateCopy = v8;
  }
}

- (void)setTargetVisibilityOffset:(double)offset
{
  if (self->_targetVisibilityOffset != offset)
  {
    self->_targetVisibilityOffset = offset;
  }
}

- (void)setHasTargetVisibilityOffset:(BOOL)offset
{
  if (self->_hasTargetVisibilityOffset != offset)
  {
    self->_hasTargetVisibilityOffset = offset;
  }
}

- (void)setVisibilityOffset:(double)offset
{
  if (self->_visibilityOffset != offset)
  {
    self->_visibilityOffset = offset;
  }
}

- (void)setVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    self->_isVisible = visible;
  }
}

- (void)performOutputChanges:(id)changes
{
  changesCopy = changes;
  _isPerformingOutputChanges = [(ISVitalityFilter *)self _isPerformingOutputChanges];
  [(ISVitalityFilter *)self _setPerformingOutputChanges:1];
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
  }

  [(ISVitalityFilter *)self _setPerformingOutputChanges:_isPerformingOutputChanges];
  if (!_isPerformingOutputChanges && [(ISVitalityFilter *)self _outputDidChange])
  {
    [(ISVitalityFilter *)self _setOutputDidChange:0];
    outputChangeHandler = [(ISVitalityFilter *)self outputChangeHandler];
    v6 = outputChangeHandler;
    if (outputChangeHandler)
    {
      (*(outputChangeHandler + 16))(outputChangeHandler, self);
    }
  }
}

- (void)performInputChanges:(id)changes
{
  changesCopy = changes;
  _isPerformingInputChanges = [(ISVitalityFilter *)self _isPerformingInputChanges];
  [(ISVitalityFilter *)self _setPerformingInputChanges:1];
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
  }

  [(ISVitalityFilter *)self _setPerformingInputChanges:_isPerformingInputChanges];
  if (!_isPerformingInputChanges)
  {
    [(ISVitalityFilter *)self inputDidChange];
  }
}

- (ISVitalityFilter)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = ISVitalityFilter;
  v6 = [(ISVitalityFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

@end