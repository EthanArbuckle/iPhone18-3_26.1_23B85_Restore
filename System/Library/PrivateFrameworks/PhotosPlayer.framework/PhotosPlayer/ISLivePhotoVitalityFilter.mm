@interface ISLivePhotoVitalityFilter
- (ISLivePhotoVitalityFilter)initWithSettings:(id)settings;
- (void)performInputChanges:(id)changes;
- (void)setState:(int64_t)state;
@end

@implementation ISLivePhotoVitalityFilter

- (void)performInputChanges:(id)changes
{
  changesCopy = changes;
  isPerformingInputChanges = [(ISLivePhotoVitalityFilter *)self isPerformingInputChanges];
  [(ISLivePhotoVitalityFilter *)self _setPerformingInputChanges:1];
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
  }

  [(ISLivePhotoVitalityFilter *)self _setPerformingInputChanges:isPerformingInputChanges];
  if (!isPerformingInputChanges)
  {
    [(ISLivePhotoVitalityFilter *)self updateOutput];
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    outputChangeHandler = [(ISLivePhotoVitalityFilter *)self outputChangeHandler];

    if (outputChangeHandler)
    {
      outputChangeHandler2 = [(ISLivePhotoVitalityFilter *)self outputChangeHandler];
      outputChangeHandler2[2](outputChangeHandler2, self);
    }
  }
}

- (ISLivePhotoVitalityFilter)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = ISLivePhotoVitalityFilter;
  v6 = [(ISLivePhotoVitalityFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

@end