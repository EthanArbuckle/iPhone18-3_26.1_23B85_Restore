@interface TXRDefaultBuffer
- (TXRDefaultBuffer)initWithBytes:(void *)bytes length:(unint64_t)length;
- (TXRDefaultBuffer)initWithData:(id)data zone:(_NSZone *)zone;
- (TXRDefaultBuffer)initWithLength:(unint64_t)length;
- (id)copyWithZone:(_NSZone *)zone;
- (id)map;
- (void)dealloc;
@end

@implementation TXRDefaultBuffer

- (TXRDefaultBuffer)initWithData:(id)data zone:(_NSZone *)zone
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = TXRDefaultBuffer;
  v7 = [(TXRDefaultBuffer *)&v11 init];
  if (v7)
  {
    v8 = [dataCopy copyWithZone:zone];
    data = v7->_data;
    v7->_data = v8;
  }

  return v7;
}

- (TXRDefaultBuffer)initWithBytes:(void *)bytes length:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = TXRDefaultBuffer;
  v6 = [(TXRDefaultBuffer *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:bytes length:length];
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TXRDefaultBuffer;
  [(TXRDefaultBuffer *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [TXRDefaultBuffer alloc];
  data = self->_data;

  return [(TXRDefaultBuffer *)v5 initWithData:data zone:zone];
}

- (TXRDefaultBuffer)initWithLength:(unint64_t)length
{
  v8.receiver = self;
  v8.super_class = TXRDefaultBuffer;
  v4 = [(TXRDefaultBuffer *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:length];
    data = v4->_data;
    v4->_data = v5;
  }

  return v4;
}

- (id)map
{
  v2 = [[TXRDefaultBufferMap alloc] initForBuffer:self withBytes:[(NSMutableData *)self->_data mutableBytes]];

  return v2;
}

@end