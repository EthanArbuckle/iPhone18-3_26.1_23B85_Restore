@interface PRUISSwitcherLayout
- (PRUISSwitcherLayout)initWithLayoutMode:(unint64_t)a3;
@end

@implementation PRUISSwitcherLayout

- (PRUISSwitcherLayout)initWithLayoutMode:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PRUISSwitcherLayout;
  result = [(PRUISSwitcherLayout *)&v5 init];
  if (result)
  {
    result->_layoutMode = a3;
  }

  return result;
}

@end