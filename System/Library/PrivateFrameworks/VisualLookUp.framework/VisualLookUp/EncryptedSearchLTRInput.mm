@interface EncryptedSearchLTRInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation EncryptedSearchLTRInput

- (NSSet)featureNames
{

  sub_1D9C20A68(&unk_1F552AC70);
  swift_arrayDestroy();

  v2 = sub_1D9C7E02C();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_1D9C7DC7C();
  v5 = v4;

  v6 = sub_1D9C1EB3C(v3, v5);

  return v6;
}

@end