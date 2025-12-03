@interface MBDecoder
+ (id)decoderWithData:(id)data;
- (MBDecoder)initWithData:(id)data;
- (char)decodeInt8;
- (double)decodeVersion;
- (id)decodeData;
- (id)decodeDate;
- (id)decodeString;
- (int)decodeInt32;
- (int64_t)decodeInt64;
- (signed)decodeInt16;
- (void)close;
- (void)decodeBytes:(void *)bytes length:(unint64_t)length;
- (void)reset;
- (void)setOffset:(unint64_t)offset;
@end

@implementation MBDecoder

+ (id)decoderWithData:(id)data
{
  dataCopy = data;
  v4 = [[MBDecoder alloc] initWithData:dataCopy];

  return v4;
}

- (MBDecoder)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = MBDecoder;
  v6 = [(MBDecoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    *&v7->_offset = xmmword_1000B7150;
  }

  return v7;
}

- (void)setOffset:(unint64_t)offset
{
  if ([(NSData *)self->_data length]< offset)
  {
    objc_exception_throw([[MBException alloc] initWithCode:12 format:{@"Offset out of range: offset=%lu, length=%lu", offset, -[NSData length](self->_data, "length")}]);
  }

  self->_offset = offset;
}

- (char)decodeInt8
{
  v3 = 0;
  [(MBDecoder *)self decodeBytes:&v3 length:1];
  return v3;
}

- (signed)decodeInt16
{
  v4 = 0;
  [(MBDecoder *)self decodeBytes:&v4 length:2];
  return bswap32(v4) >> 16;
}

- (int)decodeInt32
{
  v3 = 0;
  [(MBDecoder *)self decodeBytes:&v3 length:4];
  return bswap32(v3);
}

- (int64_t)decodeInt64
{
  v3 = 0;
  [(MBDecoder *)self decodeBytes:&v3 length:8];
  return bswap64(v3);
}

- (double)decodeVersion
{
  decodeInt8 = [(MBDecoder *)self decodeInt8];
  decodeInt82 = [(MBDecoder *)self decodeInt8];
  if (decodeInt8 <= 0)
  {
    v6 = [[MBException alloc] initWithCode:11 format:{@"Invalid major version: %d", decodeInt8}];
    goto LABEL_6;
  }

  if (decodeInt82 >= 0xA)
  {
    v6 = [[MBException alloc] initWithCode:11 format:{@"Invalid minor version: %d", decodeInt82}];
LABEL_6:
    objc_exception_throw(v6);
  }

  return decodeInt8 + decodeInt82 * 0.1;
}

- (id)decodeData
{
  decodeInt16 = [(MBDecoder *)self decodeInt16];
  if (decodeInt16 < 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = decodeInt16;
    v5 = malloc_type_malloc(decodeInt16, 0xA64561BCuLL);
    [(MBDecoder *)self decodeBytes:v5 length:v4];
    v6 = [[NSData alloc] initWithBytesNoCopy:v5 length:v4 freeWhenDone:1];
  }

  return v6;
}

- (id)decodeDate
{
  decodeInt32 = [(MBDecoder *)self decodeInt32];
  if ((decodeInt32 & 0x80000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:decodeInt32];
  }

  return v3;
}

- (id)decodeString
{
  decodeInt16 = [(MBDecoder *)self decodeInt16];
  if (decodeInt16 < 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = decodeInt16;
    v5 = malloc_type_malloc(decodeInt16, 0xC4DA71ABuLL);
    [(MBDecoder *)self decodeBytes:v5 length:v4];
    v6 = [[NSString alloc] initWithBytesNoCopy:v5 length:v4 encoding:4 freeWhenDone:1];
  }

  return v6;
}

- (void)decodeBytes:(void *)bytes length:(unint64_t)length
{
  v7 = self->_offset + length;
  if (v7 > [(NSData *)self->_data length])
  {
    objc_exception_throw([[MBException alloc] initWithCode:12 format:{@"Bytes out of range: bytes=%lu, offset=%lu, length=%lu", length, self->_offset, -[NSData length](self->_data, "length")}]);
  }

  [(NSData *)self->_data getBytes:bytes range:self->_offset, length];
  self->_offset += length;
}

- (void)reset
{
  mark = self->_mark;
  if ((mark & 0x8000000000000000) != 0)
  {
    sub_10009BE1C(a2, self, &self->_mark, &v4);
    mark = v4;
  }

  self->_offset = mark;
  self->_mark = -1;
}

- (void)close
{
  data = self->_data;
  self->_data = 0;
  _objc_release_x1();
}

@end