@interface RMSDAAPEncoder
- (RMSDAAPEncoder)init;
- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forCode:(unsigned int)code;
- (void)encodeData:(id)data forCode:(unsigned int)code;
- (void)encodeString:(id)string forCode:(unsigned int)code;
@end

@implementation RMSDAAPEncoder

- (RMSDAAPEncoder)init
{
  v7.receiver = self;
  v7.super_class = RMSDAAPEncoder;
  v2 = [(RMSDAAPEncoder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    data = v2->_data;
    v2->_data = v3;

    v5 = v2;
  }

  return v2;
}

- (void)encodeString:(id)string forCode:(unsigned int)code
{
  v4 = *&code;
  stringCopy = string;
  if (stringCopy)
  {
    v9 = stringCopy;
    v7 = [stringCopy lengthOfBytesUsingEncoding:4];
    stringCopy = v9;
    if (!HIDWORD(v7))
    {
      v8 = v9;
      -[RMSDAAPEncoder encodeBytes:length:forCode:](self, "encodeBytes:length:forCode:", [v9 UTF8String], v7, v4);
      stringCopy = v9;
    }
  }
}

- (void)encodeData:(id)data forCode:(unsigned int)code
{
  if (data)
  {
    v4 = *&code;
    dataCopy = data;
    dataCopy2 = data;
    bytes = [dataCopy2 bytes];
    v10 = [dataCopy2 length];

    [(RMSDAAPEncoder *)self encodeBytes:bytes length:v10 forCode:v4];
  }
}

- (void)encodeBytes:(const char *)bytes length:(unint64_t)length forCode:(unsigned int)code
{
  if (length - 0x100000000 >= 0xFFFFFFFF00000001)
  {
    v12 = v5;
    v13 = v6;
    v11 = bswap32(code);
    [(NSMutableData *)self->_data appendBytes:&v11 length:4];
    v10 = bswap32(length);
    [(NSMutableData *)self->_data appendBytes:&v10 length:4];
    [(NSMutableData *)self->_data appendBytes:bytes length:length];
  }
}

@end