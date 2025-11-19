@interface ISLivePhotoVitalityFilter
- (ISLivePhotoVitalityFilter)initWithSettings:(id)a3;
- (void)performInputChanges:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation ISLivePhotoVitalityFilter

- (void)performInputChanges:(id)a3
{
  v5 = a3;
  v4 = [(ISLivePhotoVitalityFilter *)self isPerformingInputChanges];
  [(ISLivePhotoVitalityFilter *)self _setPerformingInputChanges:1];
  if (v5)
  {
    v5[2](v5);
  }

  [(ISLivePhotoVitalityFilter *)self _setPerformingInputChanges:v4];
  if (!v4)
  {
    [(ISLivePhotoVitalityFilter *)self updateOutput];
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v4 = [(ISLivePhotoVitalityFilter *)self outputChangeHandler];

    if (v4)
    {
      v5 = [(ISLivePhotoVitalityFilter *)self outputChangeHandler];
      v5[2](v5, self);
    }
  }
}

- (ISLivePhotoVitalityFilter)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISLivePhotoVitalityFilter;
  v6 = [(ISLivePhotoVitalityFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  return v7;
}

@end