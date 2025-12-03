@interface PRUISSwitcherLayout
- (PRUISSwitcherLayout)initWithLayoutMode:(unint64_t)mode;
@end

@implementation PRUISSwitcherLayout

- (PRUISSwitcherLayout)initWithLayoutMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = PRUISSwitcherLayout;
  result = [(PRUISSwitcherLayout *)&v5 init];
  if (result)
  {
    result->_layoutMode = mode;
  }

  return result;
}

@end