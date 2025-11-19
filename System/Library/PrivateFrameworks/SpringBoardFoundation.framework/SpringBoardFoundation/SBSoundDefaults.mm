@interface SBSoundDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBSoundDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ringerMuted"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBRingerMuted" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"calendarAlarmPath"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"calendar-alarm" toDefaultValue:@"/Applications/MobileCal.app/alarm.aiff" options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vibrateWhenSilent"];
  v7 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"silent-vibrate" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"vibrateWhenRinging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"ring-vibrate" toDefaultValue:v7 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"playSoundOnDeviceWake"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBPlaySoundOnDeviceWake" toDefaultValue:v4 options:1];
}

@end