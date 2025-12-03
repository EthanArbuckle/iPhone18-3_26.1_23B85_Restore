@interface ClickabilitySquareInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation ClickabilitySquareInput

- (NSSet)featureNames
{
  sub_270286820(&unk_288035D90);
  sub_270256EBC(&unk_288035DB0);
  v2 = sub_2702B424C();

  return v2;
}

- (id)featureValueForName:(id)name
{
  if (sub_2702B402C() == 0x6567616D69 && v4 == 0xE500000000000000)
  {

LABEL_5:
    v6 = *self->image;
    v7 = objc_opt_self();
    v8 = v6;
    featureValueWithPixelBuffer_ = [v7 featureValueWithPixelBuffer_];

    goto LABEL_7;
  }

  v5 = sub_2702B476C();

  if (v5)
  {
    goto LABEL_5;
  }

  featureValueWithPixelBuffer_ = 0;
LABEL_7:

  return featureValueWithPixelBuffer_;
}

@end