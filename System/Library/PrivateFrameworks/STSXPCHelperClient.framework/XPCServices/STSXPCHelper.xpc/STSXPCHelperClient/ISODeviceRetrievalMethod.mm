@interface ISODeviceRetrievalMethod
- (ISODeviceRetrievalMethod)initWithType:(int64_t)type version:(int64_t)version;
- (id)encode;
@end

@implementation ISODeviceRetrievalMethod

- (ISODeviceRetrievalMethod)initWithType:(int64_t)type version:(int64_t)version
{
  v7.receiver = self;
  v7.super_class = ISODeviceRetrievalMethod;
  result = [(ISODeviceRetrievalMethod *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_version = version;
  }

  return result;
}

- (id)encode
{
  encodeOptions = [(ISODeviceRetrievalMethod *)self encodeOptions];

  v4 = [CBOR cborWithUnsignedInteger:self->_type];
  v5 = v4;
  if (encodeOptions)
  {
    v12[0] = v4;
    v6 = [CBOR cborWithUnsignedInteger:self->_version];
    v12[1] = v6;
    encodeOptions2 = [(ISODeviceRetrievalMethod *)self encodeOptions];
    v12[2] = encodeOptions2;
    v8 = [NSArray arrayWithObjects:v12 count:3];
    v9 = [CBOR cborWithArray:v8];
  }

  else
  {
    v6 = [CBOR cborWithUnsignedInteger:self->_version, v4];
    v11[1] = v6;
    encodeOptions2 = [NSArray arrayWithObjects:v11 count:2];
    v9 = [CBOR cborWithArray:encodeOptions2];
  }

  return v9;
}

@end