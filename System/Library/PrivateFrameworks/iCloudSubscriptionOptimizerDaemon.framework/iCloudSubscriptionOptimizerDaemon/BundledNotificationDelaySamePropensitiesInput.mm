@interface BundledNotificationDelaySamePropensitiesInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation BundledNotificationDelaySamePropensitiesInput

- (NSSet)featureNames
{
  sub_275B79220(&unk_2884A8B58);
  sub_275B79388(&unk_2884A8B78);
  v2 = sub_275B7AF1C();

  return v2;
}

- (id)featureValueForName:(id)name
{
  if (sub_275B7AD0C() == 0x694D74657366666FLL && v4 == 0xEA0000000000736ELL)
  {

LABEL_5:
    featureValueWithDouble_ = [objc_opt_self() featureValueWithDouble_];
    goto LABEL_7;
  }

  v5 = sub_275B7B1BC();

  if (v5)
  {
    goto LABEL_5;
  }

  featureValueWithDouble_ = 0;
LABEL_7:

  return featureValueWithDouble_;
}

@end