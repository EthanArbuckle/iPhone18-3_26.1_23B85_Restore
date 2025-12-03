@interface ISLivePhotoAutoplayVitalityFilter
- (void)_setState:(int64_t)state;
- (void)setEstimatedScrollEndDate:(id)date;
- (void)updateOutput;
@end

@implementation ISLivePhotoAutoplayVitalityFilter

- (void)_setState:(int64_t)state
{
  state = self->__state;
  if (state != state)
  {
    self->__state = state;
    if (state >= 2)
    {
      if (state != 2 || state != 1)
      {
        return;
      }

      state = 2;
    }

    [(ISLivePhotoVitalityFilter *)self setState:state];
  }
}

- (void)updateOutput
{
  v13.receiver = self;
  v13.super_class = ISLivePhotoAutoplayVitalityFilter;
  [(ISLivePhotoVitalityFilter *)&v13 updateOutput];
  isScrolling = [(ISLivePhotoAutoplayVitalityFilter *)self isScrolling];
  isVisible = [(ISLivePhotoAutoplayVitalityFilter *)self isVisible];
  v5 = isVisible;
  if (!isScrolling && isVisible)
  {
    [(ISLivePhotoAutoplayVitalityFilter *)self _setState:0];
  }

  if (!v5)
  {
    v8 = 1;
LABEL_16:
    [(ISLivePhotoAutoplayVitalityFilter *)self _setState:v8];
    return;
  }

  isDecelerating = [(ISLivePhotoAutoplayVitalityFilter *)self isDecelerating];
  if ([(ISLivePhotoAutoplayVitalityFilter *)self _state]== 1 && (!isScrolling || isDecelerating))
  {
    if (isDecelerating && [(ISLivePhotoAutoplayVitalityFilter *)self hasTargetVisibilityOffset])
    {
      [(ISLivePhotoAutoplayVitalityFilter *)self targetVisibilityOffset];
    }

    else
    {
      [(ISLivePhotoAutoplayVitalityFilter *)self visibilityOffset];
    }

    v9 = fmin(fabs(v7), 1.0);
    settings = [(ISLivePhotoVitalityFilter *)self settings];
    [settings minimumVisibilityFactor];
    v12 = 1.0 - v11;

    if (v9 < v12)
    {
      [(ISLivePhotoAutoplayVitalityFilter *)self _setState:2];
    }
  }

  if ([(ISLivePhotoAutoplayVitalityFilter *)self _state]== 0 && !isScrolling && !isDecelerating && (!isScrolling || isDecelerating))
  {
    v8 = 2;
    goto LABEL_16;
  }
}

- (void)setEstimatedScrollEndDate:(id)date
{
  objc_storeStrong(&self->_estimatedScrollEndDate, date);

  [(ISLivePhotoVitalityFilter *)self invalidateOutput];
}

@end