@interface ISLivePhotoPlaybackFilter
- (BOOL)isPlaybackDisabled;
- (ISLivePhotoPlaybackFilter)init;
- (void)_setState:(int64_t)state;
- (void)reset;
- (void)setHintProgress:(double)progress;
- (void)setPlaybackDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setState:(int64_t)state;
@end

@implementation ISLivePhotoPlaybackFilter

- (void)reset
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__ISLivePhotoPlaybackFilter_reset__block_invoke;
  v2[3] = &unk_279A2A488;
  v2[4] = self;
  [(ISObservable *)self performChanges:v2];
}

- (void)_setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(ISObservable *)self signalChange:1];
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != 2 || ![(ISLivePhotoPlaybackFilter *)self playIsSticky])
  {

    [(ISLivePhotoPlaybackFilter *)self _setState:state];
  }
}

- (void)setHintProgress:(double)progress
{
  if (self->_hintProgress != progress)
  {
    self->_hintProgress = progress;
    [(ISObservable *)self signalChange:2];
  }
}

- (BOOL)isPlaybackDisabled
{
  _playbackDisabledReasons = [(ISLivePhotoPlaybackFilter *)self _playbackDisabledReasons];
  v3 = [_playbackDisabledReasons count] != 0;

  return v3;
}

- (void)setPlaybackDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  _playbackDisabledReasons = [(ISLivePhotoPlaybackFilter *)self _playbackDisabledReasons];
  v8 = _playbackDisabledReasons;
  if (disabledCopy)
  {
    [_playbackDisabledReasons addObject:reasonCopy];
  }

  else
  {
    [_playbackDisabledReasons removeObject:reasonCopy];
  }
}

- (ISLivePhotoPlaybackFilter)init
{
  v6.receiver = self;
  v6.super_class = ISLivePhotoPlaybackFilter;
  v2 = [(ISObservable *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    playbackDisabledReasons = v2->__playbackDisabledReasons;
    v2->__playbackDisabledReasons = v3;
  }

  return v2;
}

@end