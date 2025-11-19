@interface PKAutoFillHeroAnimationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKAutoFillHeroAnimationView)initWithCoder:(id)a3;
@end

@implementation PKAutoFillHeroAnimationView

- (PKAutoFillHeroAnimationView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR___PKAutoFillHeroAnimationView_layerColorConfigurationSets;
  *(&self->super.super.super.super.super.isa + v3) = sub_1BD93C878(self, a2);
  result = sub_1BE053994();
  __break(1u);
  return result;
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