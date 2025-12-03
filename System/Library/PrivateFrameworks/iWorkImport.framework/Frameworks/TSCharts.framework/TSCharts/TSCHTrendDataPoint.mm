@interface TSCHTrendDataPoint
- (TSCHTrendDataPoint)initWithPointX:(double)x pointY:(double)y forValueIndex:(unint64_t)index;
- (int64_t)xValueCompare:(id)compare;
@end

@implementation TSCHTrendDataPoint

- (TSCHTrendDataPoint)initWithPointX:(double)x pointY:(double)y forValueIndex:(unint64_t)index
{
  v9.receiver = self;
  v9.super_class = TSCHTrendDataPoint;
  result = [(TSCHTrendDataPoint *)&v9 init];
  if (result)
  {
    result->_dataPointX = x;
    result->_dataPointY = y;
    result->_valueIndex = index;
  }

  return result;
}

- (int64_t)xValueCompare:(id)compare
{
  compareCopy = compare;
  v9 = compareCopy;
  if ((*&self->_dataPointX & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    objc_msgSend_dataPointX(compareCopy, v5, v6, v7, v8);
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v10 = 1;
      goto LABEL_7;
    }

    dataPointX = self->_dataPointX;
    objc_msgSend_dataPointX(v9, v11, v12, v13, v14);
    if (dataPointX >= v17)
    {
      v20 = self->_dataPointX;
      objc_msgSend_dataPointX(v9, v16, v17, v18, v19);
      v10 = v20 > v21;
      goto LABEL_7;
    }
  }

  v10 = -1;
LABEL_7:

  return v10;
}

@end