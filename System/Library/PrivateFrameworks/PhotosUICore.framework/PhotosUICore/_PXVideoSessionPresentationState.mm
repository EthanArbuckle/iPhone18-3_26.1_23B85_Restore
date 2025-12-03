@interface _PXVideoSessionPresentationState
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)playbackTimeRange;
- (void)setAudioSessionCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options;
- (void)setPlaybackStartTime:(id *)time;
- (void)setPlaybackTimeRange:(id *)range;
- (void)setVolume:(float)volume withFade:(BOOL)fade;
@end

@implementation _PXVideoSessionPresentationState

- (void)setPlaybackStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_playbackStartTime.epoch = time->var3;
  *&self->_playbackStartTime.value = v3;
}

- (void)setPlaybackTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_playbackTimeRange.duration.timescale = *&range->var1.var1;
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

- (void)setAudioSessionCategory:(id)category mode:(id)mode routeSharingPolicy:(unint64_t)policy options:(unint64_t)options
{
  modeCopy = mode;
  v11 = [category copy];
  audioSessionCategory = self->_audioSessionCategory;
  self->_audioSessionCategory = v11;

  self->_audioSessionCategoryOptions = options;
  audioSessionMode = self->_audioSessionMode;
  self->_audioSessionMode = modeCopy;

  self->_audioSessionRouteSharingPolicy = policy;
}

- (void)setVolume:(float)volume withFade:(BOOL)fade
{
  if (self->_volume != volume || self->_shouldFadeVolumeChange != fade)
  {
    self->_volume = volume;
    self->_shouldFadeVolumeChange = fade;
  }
}

@end