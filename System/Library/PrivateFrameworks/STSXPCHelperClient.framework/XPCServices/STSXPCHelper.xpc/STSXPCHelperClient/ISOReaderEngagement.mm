@interface ISOReaderEngagement
- (ISOReaderEngagement)initWithCoder:(id)coder;
- (ISOReaderEngagement)initWithData:(id)data type:(int64_t)type;
- (ISOReaderEngagement)initWithType:(int64_t)type;
- (id)encode;
@end

@implementation ISOReaderEngagement

- (ISOReaderEngagement)initWithData:(id)data type:(int64_t)type
{
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = ISOReaderEngagement;
  v7 = [(ISOReaderEngagement *)&v20 init];
  p_isa = &v7->super.isa;
  if (v7)
  {
    v7->_type = type;
    v9 = [CBOR decodeFromData:dataCopy];
    v10 = p_isa[3];
    p_isa[3] = v9;

    v13 = p_isa[3];
    if (!v13 || [v13 type] != 5)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOReaderEngagement initWithData:type:]", 43, p_isa, @"Invalid CBOR type", v11, v12, v17);
      v15 = 0;
      goto LABEL_7;
    }

    dictionary = [p_isa[3] dictionary];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001A898;
    v18[3] = &unk_100058EA8;
    v19 = p_isa;
    [dictionary enumerateKeysAndObjectsUsingBlock:v18];
  }

  v15 = p_isa;
LABEL_7:

  return v15;
}

- (ISOReaderEngagement)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ISOReaderEngagement;
  result = [(ISOReaderEngagement *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (id)encode
{
  cborObj = [(ISOReaderEngagement *)self cborObj];

  if (cborObj)
  {
    cborObj2 = [(ISOReaderEngagement *)self cborObj];
  }

  else
  {
    v5 = [CBOR cborWithUnsignedInteger:0];
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = [NSString stringWithFormat:@"%ld.%ld", 1, 0];
    v8 = [CBOR cborWithUTF8String:v7];
    [v6 setObject:v8 forKeyedSubscript:v5];

    v12 = v5;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v10 = [CBOR cborWithDictionary:v6 keyOrderList:v9];
    [(ISOReaderEngagement *)self setCborObj:v10];

    cborObj2 = [(ISOReaderEngagement *)self cborObj];
  }

  return cborObj2;
}

- (ISOReaderEngagement)initWithCoder:(id)coder
{
  v4 = objc_opt_new();

  return v4;
}

@end