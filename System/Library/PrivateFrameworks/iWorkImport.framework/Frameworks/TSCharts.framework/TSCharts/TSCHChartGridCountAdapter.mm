@interface TSCHChartGridCountAdapter
- (TSCHChartGridCountAdapter)initWithCount:(unint64_t)count;
- (id)valueAtIndex:(unint64_t)index;
@end

@implementation TSCHChartGridCountAdapter

- (TSCHChartGridCountAdapter)initWithCount:(unint64_t)count
{
  v4.receiver = self;
  v4.super_class = TSCHChartGridCountAdapter;
  result = [(TSCHChartGridAdapter *)&v4 initWithChartGrid:0 index:count];
  result->_indexFactor = 1;
  return result;
}

- (id)valueAtIndex:(unint64_t)index
{
  if (self->super._index <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, a2, (self->_countFromOne + self->_indexFactor * index), v4, v5);
  }

  return v6;
}

@end