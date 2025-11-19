@interface _PXVideoSessionPresentationState
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRange;
- (void)setAudioSessionCategory:(id)a3 mode:(id)a4 routeSharingPolicy:(unint64_t)a5 options:(unint64_t)a6;
- (void)setPlaybackStartTime:(id *)a3;
- (void)setPlaybackTimeRange:(id *)a3;
- (void)setVolume:(float)a3 withFade:(BOOL)a4;
@end

@implementation _PXVideoSessionPresentationState

- (void)setPlaybackStartTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_playbackStartTime.epoch = a3->var3;
  *&self->_playbackStartTime.value = v3;
}

- (void)setPlaybackTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_playbackTimeRange.duration.timescale = *&a3->var1.var1;
  *&self->_playbackTimeRange.start.epoch = v4;
  *&self->_playbackTimeRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRange
{
  v3 = *&self[2].var1.var0;
  *&retstr->var0.var0 = *&self[2].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var3;
  return self;
}

- (void)setAudioSessionCategory:(id)a3 mode:(id)a4 routeSharingPolicy:(unint64_t)a5 options:(unint64_t)a6
{
  v10 = a4;
  v11 = [a3 copy];
  audioSessionCategory = self->_audioSessionCategory;
  self->_audioSessionCategory = v11;

  self->_audioSessionCategoryOptions = a6;
  audioSessionMode = self->_audioSessionMode;
  self->_audioSessionMode = v10;

  self->_audioSessionRouteSharingPolicy = a5;
}

- (void)setVolume:(float)a3 withFade:(BOOL)a4
{
  if (self->_volume != a3 || self->_shouldFadeVolumeChange != a4)
  {
    self->_volume = a3;
    self->_shouldFadeVolumeChange = a4;
  }
}

@end