@interface TSCHTrendDataPoint
- (TSCHTrendDataPoint)initWithPointX:(double)a3 pointY:(double)a4 forValueIndex:(unint64_t)a5;
- (int64_t)xValueCompare:(id)a3;
@end

@implementation TSCHTrendDataPoint

- (TSCHTrendDataPoint)initWithPointX:(double)a3 pointY:(double)a4 forValueIndex:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = TSCHTrendDataPoint;
  result = [(TSCHTrendDataPoint *)&v9 init];
  if (result)
  {
    result->_dataPointX = a3;
    result->_dataPointY = a4;
    result->_valueIndex = a5;
  }

  return result;
}

- (int64_t)xValueCompare:(id)a3
{
  v4 = a3;
  v9 = v4;
  if ((*&self->_dataPointX & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    objc_msgSend_dataPointX(v4, v5, v6, v7, v8);
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