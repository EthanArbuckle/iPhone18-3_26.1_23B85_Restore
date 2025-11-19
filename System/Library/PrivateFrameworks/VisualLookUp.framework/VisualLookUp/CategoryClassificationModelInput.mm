@interface CategoryClassificationModelInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation CategoryClassificationModelInput

- (NSSet)featureNames
{
  sub_1D9C20A68(&unk_1F552AD20);
  sub_1D9B172F8(&unk_1F552AD40);
  v2 = sub_1D9C7E02C();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  if (sub_1D9C7DC7C() == 120 && v4 == 0xE100000000000000)
  {

LABEL_5:
    v6 = *self->x;
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 featureValueWithMultiArray_];

    goto LABEL_7;
  }

  v5 = sub_1D9C7E7DC();

  if (v5)
  {
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end