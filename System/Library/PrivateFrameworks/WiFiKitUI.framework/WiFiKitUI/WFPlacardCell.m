@interface WFPlacardCell
- (WFPlacardCell)initWithCoder:(id)a3;
- (WFPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation WFPlacardCell

- (WFPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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

- (WFPlacardCell)initWithCoder:(id)a3
{
  result = sub_274051A88();
  __break(1u);
  return result;
}

@end