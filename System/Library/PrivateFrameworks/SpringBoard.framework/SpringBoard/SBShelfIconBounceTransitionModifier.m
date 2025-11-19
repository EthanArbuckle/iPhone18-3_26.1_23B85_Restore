@interface SBShelfIconBounceTransitionModifier
- (CGRect)bounceIconInitialFrame;
- (SBShelfIconBounceTransitionModifier)initWithTransitionID:(id)a3 shelf:(id)a4;
- (unint64_t)bounceIconGenerationCountForCurrentCount:(unint64_t)a3;
@end

@implementation SBShelfIconBounceTransitionModifier

- (SBShelfIconBounceTransitionModifier)initWithTransitionID:(id)a3 shelf:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBShelfIconBounceTransitionModifier;
  v8 = [(SBTransitionSwitcherModifier *)&v11 initWithTransitionID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_shelf, a4);
  }

  return v9;
}

- (unint64_t)bounceIconGenerationCountForCurrentCount:(unint64_t)a3
{
  [(SBShelfIconBounceTransitionModifier *)self presentationAttributesForShelf:self->_shelf];
  v5 = v8;
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1 && v5 == 1)
  {
    return a3 + 1;
  }

  else
  {
    return a3;
  }
}

- (CGRect)bounceIconInitialFrame
{
  [(SBShelfIconBounceTransitionModifier *)self presentationAttributesForShelf:self->_shelf];
  v2 = v6;
  v3 = v7;
  v4 = v8;
  v5 = v9;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end