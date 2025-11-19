@interface at_verifier_rdr_125141826Input
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation at_verifier_rdr_125141826Input

- (NSSet)featureNames
{
  sub_272291FE0(&unk_28818C900);
  swift_arrayDestroy();
  v2 = sub_272377D7C();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_27237782C();
  v5 = v4;

  v6 = sub_2722B3FBC(v3, v5);

  return v6;
}

@end