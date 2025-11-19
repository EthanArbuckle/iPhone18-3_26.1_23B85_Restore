@interface SBSwitcherAccessoryLayoutElement
- (SBSwitcherAccessoryLayoutElement)initWithType:(unint64_t)a3;
@end

@implementation SBSwitcherAccessoryLayoutElement

- (SBSwitcherAccessoryLayoutElement)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBSwitcherAccessoryLayoutElement;
  result = [(SBSwitcherAccessoryLayoutElement *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

@end