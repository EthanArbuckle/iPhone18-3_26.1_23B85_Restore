@interface SBSwitcherLayoutCalculationsCacheValidityToken
- (BOOL)isEqual:(id)a3;
- (CGRect)containerViewBounds;
- (SBSwitcherLayoutCalculationsCacheValidityToken)initWithAppLayoutsGenCount:(unint64_t)a3 continuousExposeIdentifiersGenCount:(unint64_t)a4 switcherInterfaceOrientation:(int64_t)a5 containerViewBounds:(CGRect)a6 modifierEventGenCount:(unint64_t)a7;
@end

@implementation SBSwitcherLayoutCalculationsCacheValidityToken

- (SBSwitcherLayoutCalculationsCacheValidityToken)initWithAppLayoutsGenCount:(unint64_t)a3 continuousExposeIdentifiersGenCount:(unint64_t)a4 switcherInterfaceOrientation:(int64_t)a5 containerViewBounds:(CGRect)a6 modifierEventGenCount:(unint64_t)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16.receiver = self;
  v16.super_class = SBSwitcherLayoutCalculationsCacheValidityToken;
  result = [(SBSwitcherLayoutCalculationsCacheValidityToken *)&v16 init];
  if (result)
  {
    result->_appLayoutsGenCount = a3;
    result->_continuousExposeIdentifiersGenCount = a4;
    result->_containerViewBounds.origin.x = x;
    result->_containerViewBounds.origin.y = y;
    result->_containerViewBounds.size.width = width;
    result->_containerViewBounds.size.height = height;
    result->_switcherInterfaceOrientation = a5;
    result->_modifierEventGenCount = a7;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      v7 = self->_appLayoutsGenCount == v5->_appLayoutsGenCount && self->_continuousExposeIdentifiersGenCount == v5->_continuousExposeIdentifiersGenCount && self->_switcherInterfaceOrientation == v5->_switcherInterfaceOrientation && CGRectEqualToRect(self->_containerViewBounds, v5->_containerViewBounds) && self->_modifierEventGenCount == v6->_modifierEventGenCount;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CGRect)containerViewBounds
{
  x = self->_containerViewBounds.origin.x;
  y = self->_containerViewBounds.origin.y;
  width = self->_containerViewBounds.size.width;
  height = self->_containerViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end