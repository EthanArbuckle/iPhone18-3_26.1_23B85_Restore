@interface IconClassificationInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation IconClassificationInput

- (NSSet)featureNames
{
  sub_270286820(&unk_288035D30);
  sub_270256EBC(&unk_288035D50);
  v2 = sub_2702B424C();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  if (sub_2702B402C() == 0xD000000000000011 && 0x80000002702B98C0 == v4)
  {

LABEL_5:
    v6 = *self->image_Placeholder;
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 featureValueWithPixelBuffer_];

    goto LABEL_7;
  }

  v5 = sub_2702B476C();

  if (v5)
  {
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end