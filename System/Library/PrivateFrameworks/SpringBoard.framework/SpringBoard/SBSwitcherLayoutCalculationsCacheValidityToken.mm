@interface SBSwitcherLayoutCalculationsCacheValidityToken
- (BOOL)isEqual:(id)equal;
- (CGRect)containerViewBounds;
- (SBSwitcherLayoutCalculationsCacheValidityToken)initWithAppLayoutsGenCount:(unint64_t)count continuousExposeIdentifiersGenCount:(unint64_t)genCount switcherInterfaceOrientation:(int64_t)orientation containerViewBounds:(CGRect)bounds modifierEventGenCount:(unint64_t)eventGenCount;
@end

@implementation SBSwitcherLayoutCalculationsCacheValidityToken

- (SBSwitcherLayoutCalculationsCacheValidityToken)initWithAppLayoutsGenCount:(unint64_t)count continuousExposeIdentifiersGenCount:(unint64_t)genCount switcherInterfaceOrientation:(int64_t)orientation containerViewBounds:(CGRect)bounds modifierEventGenCount:(unint64_t)eventGenCount
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v16.receiver = self;
  v16.super_class = SBSwitcherLayoutCalculationsCacheValidityToken;
  result = [(SBSwitcherLayoutCalculationsCacheValidityToken *)&v16 init];
  if (result)
  {
    result->_appLayoutsGenCount = count;
    result->_continuousExposeIdentifiersGenCount = genCount;
    result->_containerViewBounds.origin.x = x;
    result->_containerViewBounds.origin.y = y;
    result->_containerViewBounds.size.width = width;
    result->_containerViewBounds.size.height = height;
    result->_switcherInterfaceOrientation = orientation;
    result->_modifierEventGenCount = eventGenCount;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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