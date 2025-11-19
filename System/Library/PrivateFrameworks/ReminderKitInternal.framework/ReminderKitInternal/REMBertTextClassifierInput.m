@interface REMBertTextClassifierInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation REMBertTextClassifierInput

- (NSSet)featureNames
{
  sub_2302A38D0(&unk_2844EDE50);
  swift_arrayDestroy();
  v2 = sub_23030FF18();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v5 = v4;

  v6 = sub_2302A2BE0(v3, v5);

  return v6;
}

@end