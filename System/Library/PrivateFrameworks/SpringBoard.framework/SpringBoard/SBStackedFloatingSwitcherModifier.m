@interface SBStackedFloatingSwitcherModifier
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
@end

@implementation SBStackedFloatingSwitcherModifier

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = a4;
  v6 = [(SBStackedFloatingSwitcherModifier *)self appLayouts];
  v7 = [v6 indexOfObject:v5];

  result = dbl_21F8A7440[v7 == 1];
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  result = 0.0;
  if (!a4)
  {
    return 1.0;
  }

  return result;
}

@end