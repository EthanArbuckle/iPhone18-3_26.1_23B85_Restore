@interface ISLivePhotoPlaybackFilter
- (BOOL)isPlaybackDisabled;
- (ISLivePhotoPlaybackFilter)init;
- (void)_setState:(int64_t)a3;
- (void)reset;
- (void)setHintProgress:(double)a3;
- (void)setPlaybackDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setState:(int64_t)a3;
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

- (void)_setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(ISObservable *)self signalChange:1];
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != 2 || ![(ISLivePhotoPlaybackFilter *)self playIsSticky])
  {

    [(ISLivePhotoPlaybackFilter *)self _setState:a3];
  }
}

- (void)setHintProgress:(double)a3
{
  if (self->_hintProgress != a3)
  {
    self->_hintProgress = a3;
    [(ISObservable *)self signalChange:2];
  }
}

- (BOOL)isPlaybackDisabled
{
  v2 = [(ISLivePhotoPlaybackFilter *)self _playbackDisabledReasons];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setPlaybackDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(ISLivePhotoPlaybackFilter *)self _playbackDisabledReasons];
  v8 = v7;
  if (v4)
  {
    [v7 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
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