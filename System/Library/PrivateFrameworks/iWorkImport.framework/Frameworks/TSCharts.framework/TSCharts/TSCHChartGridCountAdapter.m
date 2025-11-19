@interface TSCHChartGridCountAdapter
- (TSCHChartGridCountAdapter)initWithCount:(unint64_t)a3;
- (id)valueAtIndex:(unint64_t)a3;
@end

@implementation TSCHChartGridCountAdapter

- (TSCHChartGridCountAdapter)initWithCount:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = TSCHChartGridCountAdapter;
  result = [(TSCHChartGridAdapter *)&v4 initWithChartGrid:0 index:a3];
  result->_indexFactor = 1;
  return result;
}

- (id)valueAtIndex:(unint64_t)a3
{
  if (self->super._index <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, a2, (self->_countFromOne + self->_indexFactor * a3), v4, v5);
  }

  return v6;
}

@end