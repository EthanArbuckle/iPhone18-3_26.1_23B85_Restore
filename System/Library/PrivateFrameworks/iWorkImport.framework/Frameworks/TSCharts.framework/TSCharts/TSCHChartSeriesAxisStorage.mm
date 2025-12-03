@interface TSCHChartSeriesAxisStorage
- (id)valueAtIndex:(unint64_t)index multiDataSetIndex:(unint64_t)setIndex;
- (unint64_t)numberOfValues;
- (void)setValue:(id)value atIndex:(unint64_t)index multiDataSetIndex:(unint64_t)setIndex;
@end

@implementation TSCHChartSeriesAxisStorage

- (unint64_t)numberOfValues
{
  v5 = objc_msgSend_adapter(self, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10;
}

- (id)valueAtIndex:(unint64_t)index multiDataSetIndex:(unint64_t)setIndex
{
  v9 = objc_msgSend_adapter(self, a2, v4, v5, v6);
  v14 = objc_msgSend_valueAtIndex_(v9, v10, v11, v12, v13, setIndex + index);

  return v14;
}

- (void)setValue:(id)value atIndex:(unint64_t)index multiDataSetIndex:(unint64_t)setIndex
{
  valueCopy = value;
  v17 = objc_msgSend_adapter(self, v9, v10, v11, v12);
  objc_msgSend_setValue_atIndex_(v17, v13, v14, v15, v16, valueCopy, setIndex + index);
}

@end