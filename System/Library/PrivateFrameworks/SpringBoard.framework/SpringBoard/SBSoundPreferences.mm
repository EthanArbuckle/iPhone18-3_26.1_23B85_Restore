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
  v2 = [a1 _soundDefaults];
  v3 = [v2 calendarAlarmPath];

  return v3;
}

+ (id)ringtoneIdentifier
{
  v2 = [MEMORY[0x277D71F78] sharedToneManager];
  v3 = [v2 currentToneIdentifierForAlertType:1];

  return v3;
}

+ (id)ringtonePath
{
  v2 = +[SBSoundPreferences ringtoneIdentifier];
  v3 = [MEMORY[0x277D71F78] sharedToneManager];
  v4 = [v3 filePathForToneIdentifier:v2];

  return v4;
}

+ (BOOL)vibrateWhenRinging
{
  v2 = [a1 _soundDefaults];
  v3 = [v2 vibrateWhenRinging];

  return v3;
}

+ (BOOL)vibrateWhenSilent
{
  v2 = [a1 _soundDefaults];
  v3 = [v2 vibrateWhenSilent];

  return v3;
}

@end