@interface VUINowPlayingTimerFeatureInfo
- (NSTimer)oneTimeTimer;
- (NSTimer)repeatingTimer;
@end

@implementation VUINowPlayingTimerFeatureInfo

- (NSTimer)repeatingTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_repeatingTimer);

  return WeakRetained;
}

- (NSTimer)oneTimeTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_oneTimeTimer);

  return WeakRetained;
}

@end