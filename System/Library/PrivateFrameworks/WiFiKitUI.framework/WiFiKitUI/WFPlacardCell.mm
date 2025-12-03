@interface WFPlacardCell
- (WFPlacardCell)initWithCoder:(id)coder;
- (WFPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation WFPlacardCell

- (WFPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_2740517D8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_2740197E0(v4, v5);
}

- (WFPlacardCell)initWithCoder:(id)coder
{
  result = sub_274051A88();
  __break(1u);
  return result;
}

@end