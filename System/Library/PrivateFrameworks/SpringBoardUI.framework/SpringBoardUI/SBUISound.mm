@interface SBUISound
+ (id)soundWithFeedbackEventType:(int64_t)type;
- (BOOL)isPlaying;
- (BOOL)playInEvironments:(int64_t)evironments completion:(id)completion;
- (SBUISound)initWithFeedbackEventType:(int64_t)type;
- (SBUISound)initWithSystemSoundPath:(id)path behavior:(unint64_t)behavior vibrationPattern:(id)pattern;
- (SBUISound)initWithToneAlert:(id)alert;
- (SBUISound)initWithToneAlert:(int64_t)alert accountIdentifier:(id)identifier toneIdentifier:(id)toneIdentifier vibrationIdentifier:(id)vibrationIdentifier;
- (SBUISound)initWithToneAlertConfiguration:(id)configuration;
- (id)_completionBlock;
- (id)description;
- (void)_setCompletionBlock:(id)block;
- (void)stop;
@end

@implementation SBUISound

- (SBUISound)initWithSystemSoundPath:(id)path behavior:(unint64_t)behavior vibrationPattern:(id)pattern
{
  pathCopy = path;
  patternCopy = pattern;
  v13.receiver = self;
  v13.super_class = SBUISound;
  v10 = [(SBUISound *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SBUISound *)v10 setSoundType:0];
    [(SBUISound *)v11 setSongPath:pathCopy];
    [(SBUISound *)v11 setSoundBehavior:behavior];
    [(SBUISound *)v11 setVibrationPattern:patternCopy];
  }

  return v11;
}

- (SBUISound)initWithToneAlert:(int64_t)alert accountIdentifier:(id)identifier toneIdentifier:(id)toneIdentifier vibrationIdentifier:(id)vibrationIdentifier
{
  v10 = MEMORY[0x277D71F58];
  vibrationIdentifierCopy = vibrationIdentifier;
  toneIdentifierCopy = toneIdentifier;
  identifierCopy = identifier;
  v14 = [[v10 alloc] initWithType:alert];
  [v14 setTopic:identifierCopy];

  [v14 setToneIdentifier:toneIdentifierCopy];
  [v14 setVibrationIdentifier:vibrationIdentifierCopy];

  v15 = [(SBUISound *)self initWithToneAlertConfiguration:v14];
  return v15;
}

- (SBUISound)initWithToneAlertConfiguration:(id)configuration
{
  v4 = [MEMORY[0x277D71F50] alertWithConfiguration:configuration];
  v5 = [(SBUISound *)self initWithToneAlert:v4];

  return v5;
}

- (SBUISound)initWithToneAlert:(id)alert
{
  alertCopy = alert;
  v8.receiver = self;
  v8.super_class = SBUISound;
  v5 = [(SBUISound *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBUISound *)v5 setSoundType:3];
    [(SBUISound *)v6 setToneAlert:alertCopy];
  }

  return v6;
}

- (SBUISound)initWithFeedbackEventType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = SBUISound;
  v4 = [(SBUISound *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SBUISound *)v4 setSoundType:5];
    [(SBUISound *)v5 setEventType:type];
  }

  return v5;
}

+ (id)soundWithFeedbackEventType:(int64_t)type
{
  v3 = [[SBUISound alloc] initWithFeedbackEventType:type];

  return v3;
}

- (BOOL)isPlaying
{
  nSClassFromString(&cfstr_Sbsoundcontrol.isa) = [NSClassFromString(&cfstr_Sbsoundcontrol.isa) sharedInstance];
  LOBYTE(self) = [nSClassFromString(&cfstr_Sbsoundcontrol.isa) isPlaying:self];

  return self;
}

- (BOOL)playInEvironments:(int64_t)evironments completion:(id)completion
{
  completionCopy = completion;
  nSClassFromString(&cfstr_Sbsoundcontrol.isa) = [NSClassFromString(&cfstr_Sbsoundcontrol.isa) sharedInstance];
  LOBYTE(evironments) = [nSClassFromString(&cfstr_Sbsoundcontrol.isa) playSound:self environments:evironments completion:completionCopy];

  return evironments;
}

- (void)stop
{
  nSClassFromString(&cfstr_Sbsoundcontrol.isa) = [NSClassFromString(&cfstr_Sbsoundcontrol.isa) sharedInstance];
  [nSClassFromString(&cfstr_Sbsoundcontrol.isa) stopSound:self];
}

- (id)_completionBlock
{
  v2 = [self->_completionBlock copy];

  return v2;
}

- (void)_setCompletionBlock:(id)block
{
  if (self->_completionBlock != block)
  {
    v5 = [block copy];
    completionBlock = self->_completionBlock;
    self->_completionBlock = v5;

    MEMORY[0x2821F96F8](v5, completionBlock);
  }
}

- (id)description
{
  soundType = [(SBUISound *)self soundType];
  if (soundType > 2)
  {
    switch(soundType)
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

        toneAlert = [(SBUISound *)self toneAlert];
        v6 = [v13 stringWithFormat:@"\n   hasCompletionBlock: %@\n    Tone Alert: %@\n", v14, toneAlert];

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

  else if (soundType)
  {
    v4 = @"AVItem (deprecated)";
    if (soundType != 2)
    {
      v4 = 0;
    }

    if (soundType == 1)
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

    systemSoundID = [(SBUISound *)self systemSoundID];
    songPath = [(SBUISound *)self songPath];
    soundBehavior = [(SBUISound *)self soundBehavior];
    vibrationPattern = [(SBUISound *)self vibrationPattern];
    v6 = [v7 stringWithFormat:@"\n   hasCompletionBlock: %@\n   SoundID: %lu\n   Path: %@\n Behavior: %lu\n   Vibration Pattern: %@", v8, systemSoundID, songPath, soundBehavior, vibrationPattern];

    v5 = @"SystemSound";
  }

  v19.receiver = self;
  v19.super_class = SBUISound;
  v16 = [(SBUISound *)&v19 description];
  v17 = [v16 stringByAppendingFormat:@"\n{  SoundType: %@%@\n}", v5, v6];

  return v17;
}

@end