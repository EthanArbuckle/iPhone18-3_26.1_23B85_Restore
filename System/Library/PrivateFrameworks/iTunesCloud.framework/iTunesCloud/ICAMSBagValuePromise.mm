@interface ICAMSBagValuePromise
- (ICAMSBagValuePromise)initWithBagKey:(id)key bagValueType:(unint64_t)type;
@end

@implementation ICAMSBagValuePromise

- (ICAMSBagValuePromise)initWithBagKey:(id)key bagValueType:(unint64_t)type
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = ICAMSBagValuePromise;
  v7 = [(ICAMSBagValuePromise *)&v11 init];
  if (v7)
  {
    v8 = [keyCopy copy];
    bagKey = v7->_bagKey;
    v7->_bagKey = v8;

    v7->_bagValueType = type;
  }

  return v7;
}

@end