@interface ICAMSBagValuePromise
- (ICAMSBagValuePromise)initWithBagKey:(id)a3 bagValueType:(unint64_t)a4;
@end

@implementation ICAMSBagValuePromise

- (ICAMSBagValuePromise)initWithBagKey:(id)a3 bagValueType:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ICAMSBagValuePromise;
  v7 = [(ICAMSBagValuePromise *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    bagKey = v7->_bagKey;
    v7->_bagKey = v8;

    v7->_bagValueType = a4;
  }

  return v7;
}

@end