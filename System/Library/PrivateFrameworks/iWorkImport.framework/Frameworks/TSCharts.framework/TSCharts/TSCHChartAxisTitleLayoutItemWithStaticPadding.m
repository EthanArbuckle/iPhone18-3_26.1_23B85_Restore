@interface TSCHChartAxisTitleLayoutItemWithStaticPadding
- (TSCHChartAxisTitleLayoutItemWithStaticPadding)initWithParent:(id)a3 padding:(double)a4;
@end

@implementation TSCHChartAxisTitleLayoutItemWithStaticPadding

- (TSCHChartAxisTitleLayoutItemWithStaticPadding)initWithParent:(id)a3 padding:(double)a4
{
  v6.receiver = self;
  v6.super_class = TSCHChartAxisTitleLayoutItemWithStaticPadding;
  result = [(TSCHChartAxisTitleLayoutItem *)&v6 initWithParent:a3];
  if (result)
  {
    result->_titlePadding = a4;
  }

  return result;
}

@end