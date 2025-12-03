@interface SelfSizingTableCell.LayoutHost
- (void)_layoutMetricsInvalidatedForHostedView;
@end

@implementation SelfSizingTableCell.LayoutHost

- (void)_layoutMetricsInvalidatedForHostedView
{
  selfCopy = self;
  sub_2744D3A18();
}

@end