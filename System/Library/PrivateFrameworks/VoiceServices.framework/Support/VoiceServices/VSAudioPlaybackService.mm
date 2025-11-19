@interface VSAudioPlaybackService
+ (double)durationOfAudioDataLength:(unint64_t)a3 withAudioDescription:(AudioStreamBasicDescription *)a4;
+ (unint64_t)bytesOfDuration:(double)a3 withAudioDescription:(AudioStreamBasicDescription *)a4;
- (AudioStreamBasicDescription)asbd;
- (id)start;
- (void)flushAndStop;
- (void)setTimingObserver:(id)a3;
- (void)stop;
@end

@implementation VSAudioPlaybackService

- (void)setTimingObserver:(id)a3
{
  v4 = a3;
  [(VSAudioPlaybackServiceProtocol *)self->_implementation removeTimeObserver:self->_timingObserver];
  timingObserver = self->_timingObserver;
  self->_timingObserver = v4;
}

- (void)stop
{
  [(VSAudioPlaybackServiceProtocol *)self->_implementation stop];
  [(VSAudioPlaybackService *)self setTimingObserver:0];
  v3 = VSGetLogDefault();
  v4 = v3;
  playbackIntervalId = self->_playbackIntervalId;
  if (playbackIntervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_2727E4000, v4, OS_SIGNPOST_INTERVAL_END, playbackIntervalId, "AudioPlayback", &unk_272838DAB, v6, 2u);
  }
}

- (void)flushAndStop
{
  [(VSAudioPlaybackServiceProtocol *)self->_implementation flushAndStop];
  [(VSAudioPlaybackService *)self setTimingObserver:0];
  v3 = VSGetLogDefault();
  v4 = v3;
  playbackIntervalId = self->_playbackIntervalId;
  if (playbackIntervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_2727E4000, v4, OS_SIGNPOST_INTERVAL_END, playbackIntervalId, "AudioPlayback", &unk_272838DAB, v6, 2u);
  }
}

- (id)start
{
  v3 = VSGetLogDefault();
  v4 = v3;
  playbackIntervalId = self->_playbackIntervalId;
  if (playbackIntervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_2727E4000, v4, OS_SIGNPOST_INTERVAL_BEGIN, playbackIntervalId, "AudioPlayback", &unk_272838DAB, v8, 2u);
  }

  v6 = [(VSAudioPlaybackServiceProtocol *)self->_implementation start];

  return v6;
}

- (AudioStreamBasicDescription)asbd
{
  result = self->_implementation;
  if (result)
  {
    return [(AudioStreamBasicDescription *)result asbd];
  }

  *&retstr->mBitsPerChannel = 0;
  *&retstr->mSampleRate = 0u;
  *&retstr->mBytesPerPacket = 0u;
  return result;
}

+ (unint64_t)bytesOfDuration:(double)a3 withAudioDescription:(AudioStreamBasicDescription *)a4
{
  mSampleRate = a4->mSampleRate;
  LODWORD(mSampleRate) = a4->mBytesPerFrame;
  return (a4->mSampleRate * a3 * *&mSampleRate);
}

+ (double)durationOfAudioDataLength:(unint64_t)a3 withAudioDescription:(AudioStreamBasicDescription *)a4
{
  mBytesPerFrame = a4->mBytesPerFrame;
  result = 0.0;
  if (mBytesPerFrame)
  {
    if (a4->mSampleRate != 0.0)
    {
      return a3 / (a4->mSampleRate * mBytesPerFrame);
    }
  }

  return result;
}

@end