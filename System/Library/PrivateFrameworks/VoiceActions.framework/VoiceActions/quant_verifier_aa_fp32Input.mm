@interface quant_verifier_aa_fp32Input
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation quant_verifier_aa_fp32Input

- (NSSet)featureNames
{

  sub_272291FE0(&unk_28818FB38);
  swift_arrayDestroy();

  v2 = sub_272377D7C();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_27237782C();
  v5 = v4;

  v6 = sub_272343764(v3, v5);

  return v6;
}

@end