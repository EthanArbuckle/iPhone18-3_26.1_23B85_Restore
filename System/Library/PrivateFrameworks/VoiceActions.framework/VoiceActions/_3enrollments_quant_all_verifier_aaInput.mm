@interface _3enrollments_quant_all_verifier_aaInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation _3enrollments_quant_all_verifier_aaInput

- (NSSet)featureNames
{

  sub_272291FE0(&unk_28818E268);
  swift_arrayDestroy();

  v2 = sub_272377D7C();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_27237782C();
  v5 = v4;

  v6 = sub_2722E2AF8(v3, v5);

  return v6;
}

@end