@interface TUCallSoundPlayerDescriptor
- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)a3 call:(id)a4;
- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)a3 sound:(id)a4 iterations:(unint64_t)a5 pauseDuration:(double)a6 audioPlayingWarmupNeeded:(BOOL)a7;
- (id)description;
@end

@implementation TUCallSoundPlayerDescriptor

- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)a3 sound:(id)a4 iterations:(unint64_t)a5 pauseDuration:(double)a6 audioPlayingWarmupNeeded:(BOOL)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = TUCallSoundPlayerDescriptor;
  v14 = [(TUCallSoundPlayerDescriptor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_soundType = a3;
    objc_storeStrong(&v14->_sound, a4);
    v15->_iterations = a5;
    v15->_pauseDuration = a6;
    v15->_audioPlayingWarmupNeeded = a7;
  }

  return v15;
}

- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)a3 call:(id)a4
{
  v6 = a4;
  v7 = [v6 provider];
  v8 = [v6 isVideo];
  v9 = [v6 soundRegion];

  v10 = [(TUCallSoundPlayerDescriptor *)self initWithSoundType:a3 provider:v7 video:v8 region:v9 audioPlayingWarmupNeeded:0];
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
  v6 = [(TUCallSoundPlayerDescriptor *)self soundType];
  v7 = [(TUCallSoundPlayerDescriptor *)self sound];
  [(TUCallSoundPlayerDescriptor *)self pauseDuration];
  v9 = [v4 stringWithFormat:@"<%@ %p soundType=%lu sound=%@ iterations=%@ pauseDuration=%f>", v5, self, v6, v7, v3, v8];

  return v9;
}

@end