@interface TXRDefaultBufferMap
- (id)initForBuffer:(id)a3 withBytes:(void *)a4;
@end

@implementation TXRDefaultBufferMap

- (id)initForBuffer:(id)a3 withBytes:(void *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TXRDefaultBufferMap;
  v8 = [(TXRDefaultBufferMap *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buffer, a3);
    v9->_bytes = a4;
  }

  return v9;
}

@end