@interface SBUISound
+ (id)soundWithFeedbackEventType:(int64_t)a3;
- (BOOL)isPlaying;
- (BOOL)playInEvironments:(int64_t)a3 completion:(id)a4;
- (SBUISound)initWithFeedbackEventType:(int64_t)a3;
- (SBUISound)initWithSystemSoundPath:(id)a3 behavior:(unint64_t)a4 vibrationPattern:(id)a5;
- (SBUISound)initWithToneAlert:(id)a3;
- (SBUISound)initWithToneAlert:(int64_t)a3 accountIdentifier:(id)a4 toneIdentifier:(id)a5 vibrationIdentifier:(id)a6;
- (SBUISound)initWithToneAlertConfiguration:(id)a3;
- (id)_completionBlock;
- (id)description;
- (void)_setCompletionBlock:(id)a3;
- (void)stop;
@end

@implementation SBUISound

- (SBUISound)initWithSystemSoundPath:(id)a3 behavior:(unint64_t)a4 vibrationPattern:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SBUISound;
  v10 = [(SBUISound *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SBUISound *)v10 setSoundType:0];
    [(SBUISound *)v11 setSongPath:v8];
    [(SBUISound *)v11 setSoundBehavior:a4];
    [(SBUISound *)v11 setVibrationPattern:v9];
  }

  return v11;
}

- (SBUISound)initWithToneAlert:(int64_t)a3 accountIdentifier:(id)a4 toneIdentifier:(id)a5 vibrationIdentifier:(id)a6
{
  v10 = MEMORY[0x277D71F58];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [[v10 alloc] initWithType:a3];
  [v14 setTopic:v13];

  [v14 setToneIdentifier:v12];
  [v14 setVibrationIdentifier:v11];

  v15 = [(SBUISound *)self initWithToneAlertConfiguration:v14];
  return v15;
}

- (SBUISound)initWithToneAlertConfiguration:(id)a3
{
  v4 = [MEMORY[0x277D71F50] alertWithConfiguration:a3];
  v5 = [(SBUISound *)self initWithToneAlert:v4];

  return v5;
}

- (SBUISound)initWithToneAlert:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBUISound;
  v5 = [(SBUISound *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBUISound *)v5 setSoundType:3];
    [(SBUISound *)v6 setToneAlert:v4];
  }

  return v6;
}

- (SBUISound)initWithFeedbackEventType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SBUISound;
  v4 = [(SBUISound *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SBUISound *)v4 setSoundType:5];
    [(SBUISound *)v5 setEventType:a3];
  }

  return v5;
}

+ (id)soundWithFeedbackEventType:(int64_t)a3
{
  v3 = [[SBUISound alloc] initWithFeedbackEventType:a3];

  return v3;
}

- (BOOL)isPlaying
{
  v3 = [NSClassFromString(&cfstr_Sbsoundcontrol.isa) sharedInstance];
  LOBYTE(self) = [v3 isPlaying:self];

  return self;
}

- (BOOL)playInEvironments:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [NSClassFromString(&cfstr_Sbsoundcontrol.isa) sharedInstance];
  LOBYTE(a3) = [v7 playSound:self environments:a3 completion:v6];

  return a3;
}

- (void)stop
{
  v3 = [NSClassFromString(&cfstr_Sbsoundcontrol.isa) sharedInstance];
  [v3 stopSound:self];
}

- (id)_completionBlock
{
  v2 = [self->_completionBlock copy];

  return v2;
}

- (void)_setCompletionBlock:(id)a3
{
  if (self->_completionBlock != a3)
  {
    v5 = [a3 copy];
    completionBlock = self->_completionBlock;
    self->_completionBlock = v5;

    MEMORY[0x2821F96F8](v5, completionBlock);
  }
}

- (id)description
{
  v3 = [(SBUISound *)self soundType];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v13 = MEMORY[0x277CCACA8];
        if (self->_completionBlock)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v15 = [(SBUISound *)self toneAlert];
        v6 = [v13 stringWithFormat:@"\n   hasCompletionBlock: %@\n    Tone Alert: %@\n", v14, v15];

        v5 = @"ToneAlert";
        break;
      case 4:
        v6 = 0;
        v5 = @"Song (deprecated)";
        break;
      case 5:
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n   eventType: %ld", self->_eventType];
        v5 = @"Feedback";
        break;
      default:
        v5 = 0;
        v6 = 0;
        break;
    }
  }

  else if (v3)
  {
    v4 = @"AVItem (deprecated)";
    if (v3 != 2)
    {
      v4 = 0;
    }

    if (v3 == 1)
    {
      v5 = @"Ringtone (deprecated)";
    }

    else
    {
      v5 = v4;
    }

    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    if (self->_completionBlock)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [(SBUISound *)self systemSoundID];
    v10 = [(SBUISound *)self songPath];
    v11 = [(SBUISound *)self soundBehavior];
    v12 = [(SBUISound *)self vibrationPattern];
    v6 = [v7 stringWithFormat:@"\n   hasCompletionBlock: %@\n   SoundID: %lu\n   Path: %@\n Behavior: %lu\n   Vibration Pattern: %@", v8, v9, v10, v11, v12];

    v5 = @"SystemSound";
  }

  v19.receiver = self;
  v19.super_class = SBUISound;
  v16 = [(SBUISound *)&v19 description];
  v17 = [v16 stringByAppendingFormat:@"\n{  SoundType: %@%@\n}", v5, v6];

  return v17;
}

@end