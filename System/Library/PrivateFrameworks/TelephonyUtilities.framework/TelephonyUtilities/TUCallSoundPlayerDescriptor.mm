@interface TUCallSoundPlayerDescriptor
- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type call:(id)call;
- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type sound:(id)sound iterations:(unint64_t)iterations pauseDuration:(double)duration audioPlayingWarmupNeeded:(BOOL)needed;
- (id)description;
@end

@implementation TUCallSoundPlayerDescriptor

- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type sound:(id)sound iterations:(unint64_t)iterations pauseDuration:(double)duration audioPlayingWarmupNeeded:(BOOL)needed
{
  soundCopy = sound;
  v17.receiver = self;
  v17.super_class = TUCallSoundPlayerDescriptor;
  v14 = [(TUCallSoundPlayerDescriptor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_soundType = type;
    objc_storeStrong(&v14->_sound, sound);
    v15->_iterations = iterations;
    v15->_pauseDuration = duration;
    v15->_audioPlayingWarmupNeeded = needed;
  }

  return v15;
}

- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type call:(id)call
{
  callCopy = call;
  provider = [callCopy provider];
  isVideo = [callCopy isVideo];
  soundRegion = [callCopy soundRegion];

  v10 = [(TUCallSoundPlayerDescriptor *)self initWithSoundType:type provider:provider video:isVideo region:soundRegion audioPlayingWarmupNeeded:0];
  return v10;
}

- (id)description
{
  if ([(TUCallSoundPlayerDescriptor *)self iterations]== -1)
  {
    v3 = @"Infinite";
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[TUCallSoundPlayerDescriptor iterations](self, "iterations")];
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  soundType = [(TUCallSoundPlayerDescriptor *)self soundType];
  sound = [(TUCallSoundPlayerDescriptor *)self sound];
  [(TUCallSoundPlayerDescriptor *)self pauseDuration];
  v9 = [v4 stringWithFormat:@"<%@ %p soundType=%lu sound=%@ iterations=%@ pauseDuration=%f>", v5, self, soundType, sound, v3, v8];

  return v9;
}

@end