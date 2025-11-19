@interface ISVitalityFilter
- (ISVitalityFilter)initWithSettings:(id)a3;
- (void)performInputChanges:(id)a3;
- (void)performOutputChanges:(id)a3;
- (void)setDecelerating:(BOOL)a3;
- (void)setEstimatedScrollEndDate:(id)a3;
- (void)setHasTargetVisibilityOffset:(BOOL)a3;
- (void)setPlayRate:(double)a3;
- (void)setScrolling:(BOOL)a3;
- (void)setScrubOffset:(double)a3;
- (void)setScrubbing:(BOOL)a3;
- (void)setTargetVisibilityOffset:(double)a3;
- (void)setVisibilityOffset:(double)a3;
- (void)setVisible:(BOOL)a3;
@end

@implementation ISVitalityFilter

- (void)setPlayRate:(double)a3
{
  if (self->_playRate != a3)
  {
    self->_playRate = a3;
    [(ISVitalityFilter *)self _invalidateOutput];
  }
}

- (void)setScrubOffset:(double)a3
{
  if (self->_scrubOffset != a3)
  {
    self->_scrubOffset = a3;
    [(ISVitalityFilter *)self _invalidateOutput];
  }
}

- (void)setScrubbing:(BOOL)a3
{
  if (self->_scrubbing != a3)
  {
    self->_scrubbing = a3;
    [(ISVitalityFilter *)self _invalidateOutput];
  }
}

- (void)setDecelerating:(BOOL)a3
{
  if (self->_isDecelerating != a3)
  {
    self->_isDecelerating = a3;
  }
}

- (void)setScrolling:(BOOL)a3
{
  if (self->_isScrolling != a3)
  {
    self->_isScrolling = a3;
  }
}

- (void)setEstimatedScrollEndDate:(id)a3
{
  v5 = a3;
  estimatedScrollEndDate = self->_estimatedScrollEndDate;
  p_estimatedScrollEndDate = &self->_estimatedScrollEndDate;
  if (estimatedScrollEndDate != v5)
  {
    v8 = v5;
    objc_storeStrong(p_estimatedScrollEndDate, a3);
    v5 = v8;
  }
}

- (void)setTargetVisibilityOffset:(double)a3
{
  if (self->_targetVisibilityOffset != a3)
  {
    self->_targetVisibilityOffset = a3;
  }
}

- (void)setHasTargetVisibilityOffset:(BOOL)a3
{
  if (self->_hasTargetVisibilityOffset != a3)
  {
    self->_hasTargetVisibilityOffset = a3;
  }
}

- (void)setVisibilityOffset:(double)a3
{
  if (self->_visibilityOffset != a3)
  {
    self->_visibilityOffset = a3;
  }
}

- (void)setVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
  }
}

- (void)performOutputChanges:(id)a3
{
  v7 = a3;
  v4 = [(ISVitalityFilter *)self _isPerformingOutputChanges];
  [(ISVitalityFilter *)self _setPerformingOutputChanges:1];
  if (v7)
  {
    v7[2](v7);
  }

  [(ISVitalityFilter *)self _setPerformingOutputChanges:v4];
  if (!v4 && [(ISVitalityFilter *)self _outputDidChange])
  {
    [(ISVitalityFilter *)self _setOutputDidChange:0];
    v5 = [(ISVitalityFilter *)self outputChangeHandler];
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, self);
    }
  }
}

- (void)performInputChanges:(id)a3
{
  v5 = a3;
  v4 = [(ISVitalityFilter *)self _isPerformingInputChanges];
  [(ISVitalityFilter *)self _setPerformingInputChanges:1];
  if (v5)
  {
    v5[2](v5);
  }

  [(ISVitalityFilter *)self _setPerformingInputChanges:v4];
  if (!v4)
  {
    [(ISVitalityFilter *)self inputDidChange];
  }
}

- (ISVitalityFilter)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISVitalityFilter;
  v6 = [(ISVitalityFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  return v7;
}

@end