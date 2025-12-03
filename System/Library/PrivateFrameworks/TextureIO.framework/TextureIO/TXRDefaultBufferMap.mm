@interface TXRDefaultBufferMap
- (id)initForBuffer:(id)buffer withBytes:(void *)bytes;
@end

@implementation TXRDefaultBufferMap

- (id)initForBuffer:(id)buffer withBytes:(void *)bytes
{
  bufferCopy = buffer;
  v11.receiver = self;
  v11.super_class = TXRDefaultBufferMap;
  v8 = [(TXRDefaultBufferMap *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buffer, buffer);
    v9->_bytes = bytes;
  }

  return v9;
}

@end