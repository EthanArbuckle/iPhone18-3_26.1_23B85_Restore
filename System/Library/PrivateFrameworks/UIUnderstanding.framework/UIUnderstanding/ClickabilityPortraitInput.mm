@interface ClickabilityPortraitInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation ClickabilityPortraitInput

- (NSSet)featureNames
{
  sub_270286820(&unk_288035D60);
  sub_270256EBC(&unk_288035D80);
  v2 = sub_2702B424C();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  if (sub_2702B402C() == 0x6567616D69 && v4 == 0xE500000000000000)
  {

LABEL_5:
    v6 = *self->image;
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