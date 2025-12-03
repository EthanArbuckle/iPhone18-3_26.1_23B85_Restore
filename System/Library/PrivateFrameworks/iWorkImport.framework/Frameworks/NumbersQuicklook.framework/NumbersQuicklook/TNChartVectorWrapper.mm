@interface TNChartVectorWrapper
- (TNChartVectorWrapper)initWithVector:(id)vector;
@end

@implementation TNChartVectorWrapper

- (TNChartVectorWrapper)initWithVector:(id)vector
{
  vectorCopy = vector;
  v11.receiver = self;
  v11.super_class = TNChartVectorWrapper;
  v7 = [(TNChartVectorWrapper *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(vectorCopy, v5, v6);
    vector = v7->_vector;
    v7->_vector = v8;
  }

  return v7;
}

@end