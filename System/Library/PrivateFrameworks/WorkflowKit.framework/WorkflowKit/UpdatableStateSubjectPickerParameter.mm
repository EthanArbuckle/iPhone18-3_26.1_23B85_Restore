@interface UpdatableStateSubjectPickerParameter
- (BOOL)preferParameterValuePicker;
- (NSArray)possibleStates;
- (id)localizedLabelForPossibleState:(id)a3;
@end

@implementation UpdatableStateSubjectPickerParameter

- (NSArray)possibleStates
{
  v2 = self;
  v3 = sub_1CA5CA4F4();

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

- (id)localizedLabelForPossibleState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA5CA898(v4);
  v7 = v6;

  if (v7)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)preferParameterValuePicker
{
  v2 = self;
  v3 = sub_1CA5CAB70();

  return v3 & 1;
}

@end