@interface SettingPickerParameter
- (BOOL)preferParameterValuePicker;
- (NSArray)possibleStates;
@end

@implementation SettingPickerParameter

- (BOOL)preferParameterValuePicker
{
  selfCopy = self;
  v3 = sub_1CA5675E4();

  return v3 & 1;
}

- (NSArray)possibleStates
{
  selfCopy = self;
  v3 = sub_1CA5676A0();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
    v4 = sub_1CA94C648();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end