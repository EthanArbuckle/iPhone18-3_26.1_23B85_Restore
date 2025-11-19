@interface RowTemplateOperatorPickerParameter
- (BOOL)parameterStateIsValid:(id)a3;
- (NSArray)possibleStates;
- (id)localizedLabelForPossibleState:(id)a3;
@end

@implementation RowTemplateOperatorPickerParameter

- (NSArray)possibleStates
{
  v2 = self;
  v3 = sub_1CA3E7DD8();

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
  sub_1CA3E803C(v4);
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

- (BOOL)parameterStateIsValid:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1CA3E84E0(v4);

  return self & 1;
}

@end