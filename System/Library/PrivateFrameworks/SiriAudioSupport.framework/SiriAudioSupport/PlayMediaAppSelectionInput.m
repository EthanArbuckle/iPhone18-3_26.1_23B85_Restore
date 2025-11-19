@interface PlayMediaAppSelectionInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation PlayMediaAppSelectionInput

- (NSSet)featureNames
{

  sub_2662C3A68(&unk_2877E2EE0);
  swift_arrayDestroy();

  v2 = sub_2664E05F8();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_2664E02C8();
  v5 = v4;

  v6 = sub_2663503CC(v3, v5);

  return v6;
}

@end