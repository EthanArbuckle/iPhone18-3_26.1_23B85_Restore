@interface RMSDAAPEncoder
- (RMSDAAPEncoder)init;
- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forCode:(unsigned int)a5;
- (void)encodeData:(id)a3 forCode:(unsigned int)a4;
- (void)encodeString:(id)a3 forCode:(unsigned int)a4;
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

- (void)encodeString:(id)a3 forCode:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  if (v6)
  {
    v9 = v6;
    v7 = [v6 lengthOfBytesUsingEncoding:4];
    v6 = v9;
    if (!HIDWORD(v7))
    {
      v8 = v9;
      -[RMSDAAPEncoder encodeBytes:length:forCode:](self, "encodeBytes:length:forCode:", [v9 UTF8String], v7, v4);
      v6 = v9;
    }
  }
}

- (void)encodeData:(id)a3 forCode:(unsigned int)a4
{
  if (a3)
  {
    v4 = *&a4;
    v7 = a3;
    v8 = a3;
    v9 = [v8 bytes];
    v10 = [v8 length];

    [(RMSDAAPEncoder *)self encodeBytes:v9 length:v10 forCode:v4];
  }
}

- (void)encodeBytes:(const char *)a3 length:(unint64_t)a4 forCode:(unsigned int)a5
{
  if (a4 - 0x100000000 >= 0xFFFFFFFF00000001)
  {
    v12 = v5;
    v13 = v6;
    v11 = bswap32(a5);
    [(NSMutableData *)self->_data appendBytes:&v11 length:4];
    v10 = bswap32(a4);
    [(NSMutableData *)self->_data appendBytes:&v10 length:4];
    [(NSMutableData *)self->_data appendBytes:a3 length:a4];
  }
}

@end