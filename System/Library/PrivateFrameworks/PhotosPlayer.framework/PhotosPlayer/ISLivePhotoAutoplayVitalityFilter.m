@interface ISLivePhotoAutoplayVitalityFilter
- (void)_setState:(int64_t)a3;
- (void)setEstimatedScrollEndDate:(id)a3;
- (void)updateOutput;
@end

@implementation ISLivePhotoAutoplayVitalityFilter

- (void)_setState:(int64_t)a3
{
  state = self->__state;
  if (state != a3)
  {
    self->__state = a3;
    if (a3 >= 2)
    {
      if (a3 != 2 || state != 1)
      {
        return;
      }

      a3 = 2;
    }

    [(ISLivePhotoVitalityFilter *)self setState:a3];
  }
}

- (void)updateOutput
{
  v13.receiver = self;
  v13.super_class = ISLivePhotoAutoplayVitalityFilter;
  [(ISLivePhotoVitalityFilter *)&v13 updateOutput];
  v3 = [(ISLivePhotoAutoplayVitalityFilter *)self isScrolling];
  v4 = [(ISLivePhotoAutoplayVitalityFilter *)self isVisible];
  v5 = v4;
  if (!v3 && v4)
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

  v6 = [(ISLivePhotoAutoplayVitalityFilter *)self isDecelerating];
  if ([(ISLivePhotoAutoplayVitalityFilter *)self _state]== 1 && (!v3 || v6))
  {
    if (v6 && [(ISLivePhotoAutoplayVitalityFilter *)self hasTargetVisibilityOffset])
    {
      [(ISLivePhotoAutoplayVitalityFilter *)self targetVisibilityOffset];
    }

    else
    {
      [(ISLivePhotoAutoplayVitalityFilter *)self visibilityOffset];
    }

    v9 = fmin(fabs(v7), 1.0);
    v10 = [(ISLivePhotoVitalityFilter *)self settings];
    [v10 minimumVisibilityFactor];
    v12 = 1.0 - v11;

    if (v9 < v12)
    {
      [(ISLivePhotoAutoplayVitalityFilter *)self _setState:2];
    }
  }

  if ([(ISLivePhotoAutoplayVitalityFilter *)self _state]== 0 && !v3 && !v6 && (!v3 || v6))
  {
    v8 = 2;
    goto LABEL_16;
  }
}

- (void)setEstimatedScrollEndDate:(id)a3
{
  objc_storeStrong(&self->_estimatedScrollEndDate, a3);

  [(ISLivePhotoVitalityFilter *)self invalidateOutput];
}

@end