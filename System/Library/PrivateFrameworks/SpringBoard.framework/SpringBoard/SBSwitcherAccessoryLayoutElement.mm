@interface SBSwitcherAccessoryLayoutElement
- (SBSwitcherAccessoryLayoutElement)initWithType:(unint64_t)type;
@end

@implementation SBSwitcherAccessoryLayoutElement

- (SBSwitcherAccessoryLayoutElement)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = SBSwitcherAccessoryLayoutElement;
  result = [(SBSwitcherAccessoryLayoutElement *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

@end