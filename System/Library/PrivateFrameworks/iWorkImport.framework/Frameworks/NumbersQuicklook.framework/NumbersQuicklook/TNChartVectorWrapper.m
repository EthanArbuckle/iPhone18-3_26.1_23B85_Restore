@interface TNChartVectorWrapper
- (TNChartVectorWrapper)initWithVector:(id)a3;
@end

@implementation TNChartVectorWrapper

- (TNChartVectorWrapper)initWithVector:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TNChartVectorWrapper;
  v7 = [(TNChartVectorWrapper *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    vector = v7->_vector;
    v7->_vector = v8;
  }

  return v7;
}

@end