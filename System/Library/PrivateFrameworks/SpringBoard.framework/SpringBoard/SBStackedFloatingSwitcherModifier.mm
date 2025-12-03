@interface SBStackedFloatingSwitcherModifier
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
@end

@implementation SBStackedFloatingSwitcherModifier

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  appLayouts = [(SBStackedFloatingSwitcherModifier *)self appLayouts];
  v7 = [appLayouts indexOfObject:layoutCopy];

  result = dbl_21F8A7440[v7 == 1];
  if (!v7)
  {
    return 0.0;
  }

  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  result = 0.0;
  if (!index)
  {
    return 1.0;
  }

  return result;
}

@end