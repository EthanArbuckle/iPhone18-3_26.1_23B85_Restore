@interface SBSoundPreferences
+ (BOOL)vibrateWhenRinging;
+ (BOOL)vibrateWhenSilent;
+ (id)_soundDefaults;
+ (id)calendarAlarmPath;
+ (id)ringtoneIdentifier;
+ (id)ringtonePath;
@end

@implementation SBSoundPreferences

+ (id)_soundDefaults
{
  if (_soundDefaults___once != -1)
  {
    +[SBSoundPreferences _soundDefaults];
  }

  v3 = _soundDefaults___instance;

  return v3;
}

void __36__SBSoundPreferences__soundDefaults__block_invoke()
{
  v2 = +[SBDefaults localDefaults];
  v0 = [v2 soundDefaults];
  v1 = _soundDefaults___instance;
  _soundDefaults___instance = v0;
}

+ (id)calendarAlarmPath
{
  _soundDefaults = [self _soundDefaults];
  calendarAlarmPath = [_soundDefaults calendarAlarmPath];

  return calendarAlarmPath;
}

+ (id)ringtoneIdentifier
{
  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  v3 = [mEMORY[0x277D71F78] currentToneIdentifierForAlertType:1];

  return v3;
}

+ (id)ringtonePath
{
  v2 = +[SBSoundPreferences ringtoneIdentifier];
  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  v4 = [mEMORY[0x277D71F78] filePathForToneIdentifier:v2];

  return v4;
}

+ (BOOL)vibrateWhenRinging
{
  _soundDefaults = [self _soundDefaults];
  vibrateWhenRinging = [_soundDefaults vibrateWhenRinging];

  return vibrateWhenRinging;
}

+ (BOOL)vibrateWhenSilent
{
  _soundDefaults = [self _soundDefaults];
  vibrateWhenSilent = [_soundDefaults vibrateWhenSilent];

  return vibrateWhenSilent;
}

@end