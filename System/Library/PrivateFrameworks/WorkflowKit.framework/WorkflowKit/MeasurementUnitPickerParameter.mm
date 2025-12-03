@interface MeasurementUnitPickerParameter
- (NSArray)possibleStates;
- (id)localizedLabelForPossibleState:(id)state;
@end

@implementation MeasurementUnitPickerParameter

- (NSArray)possibleStates
{
  selfCopy = self;
  v3 = sub_1CA5C648C();

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

- (id)localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1CA5C65C4(stateCopy);
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

@end