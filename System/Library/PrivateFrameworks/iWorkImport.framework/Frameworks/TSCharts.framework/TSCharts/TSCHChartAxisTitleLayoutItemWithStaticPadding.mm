@interface TSCHChartAxisTitleLayoutItemWithStaticPadding
- (TSCHChartAxisTitleLayoutItemWithStaticPadding)initWithParent:(id)parent padding:(double)padding;
@end

@implementation TSCHChartAxisTitleLayoutItemWithStaticPadding

- (TSCHChartAxisTitleLayoutItemWithStaticPadding)initWithParent:(id)parent padding:(double)padding
{
  v6.receiver = self;
  v6.super_class = TSCHChartAxisTitleLayoutItemWithStaticPadding;
  result = [(TSCHChartAxisTitleLayoutItem *)&v6 initWithParent:parent];
  if (result)
  {
    result->_titlePadding = padding;
  }

  return result;
}

@end