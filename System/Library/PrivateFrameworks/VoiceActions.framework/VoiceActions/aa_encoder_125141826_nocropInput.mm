@interface aa_encoder_125141826_nocropInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation aa_encoder_125141826_nocropInput

- (NSSet)featureNames
{
  sub_272291FE0(&unk_28818C878);
  sub_272203A70(&unk_28818C898);
  v2 = sub_272377D7C();

  return v2;
}

- (id)featureValueForName:(id)name
{
  if (sub_27237782C() == 0x61775F7475706E69 && v4 == 0xE900000000000076)
  {

LABEL_5:
    v7 = (*(self->super.isa + 11))(v5);
    featureValueWithMultiArray_ = [objc_opt_self() featureValueWithMultiArray_];

    goto LABEL_7;
  }

  v6 = sub_27237865C();

  if (v6)
  {
    goto LABEL_5;
  }

  featureValueWithMultiArray_ = 0;
LABEL_7:

  return featureValueWithMultiArray_;
}

@end