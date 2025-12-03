@interface WFDrawerActionCellTopHitView
- (void)didSelect:(id)select;
- (void)layoutSubviews;
@end

@implementation WFDrawerActionCellTopHitView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_27484A9C0();
}

- (void)didSelect:(id)select
{
  selectCopy = select;
  selfCopy = self;
  sub_27484AC38();
}

@end