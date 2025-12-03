@interface TSCHMultiDataChartRepElementIndex
+ (id)repElementIndexWithSeriesIndex:(unint64_t)index valueIndex:(unint64_t)valueIndex;
- (BOOL)isEqual:(id)equal;
- (TSCHMultiDataChartRepElementIndex)initWithSeriesIndex:(unint64_t)index valueIndex:(unint64_t)valueIndex;
- (id)description;
@end

@implementation TSCHMultiDataChartRepElementIndex

+ (id)repElementIndexWithSeriesIndex:(unint64_t)index valueIndex:(unint64_t)valueIndex
{
  v6 = [self alloc];
  v11 = objc_msgSend_initWithSeriesIndex_valueIndex_(v6, v7, v8, v9, v10, index, valueIndex);

  return v11;
}

- (TSCHMultiDataChartRepElementIndex)initWithSeriesIndex:(unint64_t)index valueIndex:(unint64_t)valueIndex
{
  v7.receiver = self;
  v7.super_class = TSCHMultiDataChartRepElementIndex;
  result = [(TSCHMultiDataChartRepElementIndex *)&v7 init];
  if (result)
  {
    result->_seriesIndex = index;
    result->_valueIndex = valueIndex;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUSpecificCast();

  v6 = v5 && self->_seriesIndex == v5[1] && self->_valueIndex == v5[2];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCHMultiDataChartRepElementIndex;
  v4 = [(TSCHMultiDataChartRepElementIndex *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(seriesIndex %lu valueIndex %lu)", v4, self->_seriesIndex, self->_valueIndex);

  return v9;
}

@end