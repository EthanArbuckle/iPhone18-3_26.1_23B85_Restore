@interface PKApplePayUserEducationDemoAnimationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKApplePayUserEducationDemoAnimationView)initWithCoder:(id)a3;
- (void)dealloc;
@end

@implementation PKApplePayUserEducationDemoAnimationView

- (PKApplePayUserEducationDemoAnimationView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_minuteMonitor) = 0;
  v3 = OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_layerColorConfigurationSets;
  *(&self->super.super.super.super.super.isa + v3) = sub_1BD2844B4(self, a2);
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR___PKApplePayUserEducationDemoAnimationView_minuteMonitor))
  {
    v4 = self;
    sub_1BE048964();
    sub_1BD284158();
  }

  else
  {
    v5 = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(PKApplePayUserEducationDemoAnimationView *)&v6 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  CGRectGetHeight(v17);
  PKFloatRoundToPixel();
  v14 = v13;
  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

@end