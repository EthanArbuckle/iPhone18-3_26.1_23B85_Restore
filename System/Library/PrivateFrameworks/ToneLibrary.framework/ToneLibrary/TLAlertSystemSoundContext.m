@interface TLAlertSystemSoundContext
- (TLAlertPlaybackObserver)playbackObserver;
- (id)description;
@end

@implementation TLAlertSystemSoundContext

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; sound = %@", self->_sound];
  [v6 appendFormat:@"; vibrationIdentifier = %@", self->_vibrationIdentifier];
  [v6 appendFormat:@"; playbackCompletionContext = %@", self->_playbackCompletionContext];
  WeakRetained = objc_loadWeakRetained(&self->_playbackObserver);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [v6 appendFormat:@"; playbackObserver = %@", WeakRetained];
  }

  if (self->_requiringBacklightObservation)
  {
    [v6 appendString:@"; isRequiringBacklightObservation = YES"];
  }

  if (self->_loadingSound)
  {
    [v6 appendString:@"; isLoadingSound = YES"];
  }

  if (self->_hasPlaybackStarted)
  {
    [v6 appendString:@"; hasPlaybackStarted = YES"];
  }

  if (self->_beingInterrupted)
  {
    [v6 appendString:@"; isBeingInterrupted = YES"];
  }

  v9 = self->_toneIdentifierForDeemphasizingAlert;
  v10 = v9;
  if (v9)
  {
    [v6 appendFormat:@"; toneIdentifierForDeemphasizingAlert = %@", v9];
  }

  v11 = self->_vibrationIdentifierForDeemphasizingAlert;
  v12 = v11;
  if (v11)
  {
    [v6 appendFormat:@"; vibrationIdentifierForDeemphasizingAlert = %@", v11];
  }

  if (self->_beingDeemphasized)
  {
    [v6 appendString:@"; isBeingDeemphasized = YES"];
  }

  if (self->_deemphasized)
  {
    [v6 appendString:@"; isDeemphasized = YES"];
  }

  if (self->_hasDeemphasizedPlaybackStarted)
  {
    [v6 appendString:@"; hasDeemphasizedPlaybackStarted = YES"];
  }

  if (self->_shouldBeInterruptedAfterDeemphasizedPlaybackStarts)
  {
    [v6 appendString:@"; shouldBeInterruptedAfterDeemphasizedPlaybackStarts = YES"];
  }

  if (self->_stoppingOptionsForDeferredInterruption)
  {
    [v6 appendFormat:@"; stoppingOptionsForDeferredInterruption = %@", self->_stoppingOptionsForDeferredInterruption];
  }

  [v6 appendString:@">"];

  return v6;
}

- (TLAlertPlaybackObserver)playbackObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackObserver);

  return WeakRetained;
}

@end