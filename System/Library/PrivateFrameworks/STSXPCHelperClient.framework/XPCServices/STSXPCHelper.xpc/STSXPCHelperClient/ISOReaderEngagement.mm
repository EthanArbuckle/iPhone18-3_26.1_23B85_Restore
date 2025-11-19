@interface ISOReaderEngagement
- (ISOReaderEngagement)initWithCoder:(id)a3;
- (ISOReaderEngagement)initWithData:(id)a3 type:(int64_t)a4;
- (ISOReaderEngagement)initWithType:(int64_t)a3;
- (id)encode;
@end

@implementation ISOReaderEngagement

- (ISOReaderEngagement)initWithData:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = ISOReaderEngagement;
  v7 = [(ISOReaderEngagement *)&v20 init];
  p_isa = &v7->super.isa;
  if (v7)
  {
    v7->_type = a4;
    v9 = [CBOR decodeFromData:v6];
    v10 = p_isa[3];
    p_isa[3] = v9;

    v13 = p_isa[3];
    if (!v13 || [v13 type] != 5)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOReaderEngagement initWithData:type:]", 43, p_isa, @"Invalid CBOR type", v11, v12, v17);
      v15 = 0;
      goto LABEL_7;
    }

    v14 = [p_isa[3] dictionary];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001A898;
    v18[3] = &unk_100058EA8;
    v19 = p_isa;
    [v14 enumerateKeysAndObjectsUsingBlock:v18];
  }

  v15 = p_isa;
LABEL_7:

  return v15;
}

- (ISOReaderEngagement)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ISOReaderEngagement;
  result = [(ISOReaderEngagement *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (id)encode
{
  v3 = [(ISOReaderEngagement *)self cborObj];

  if (v3)
  {
    v4 = [(ISOReaderEngagement *)self cborObj];
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

    v4 = [(ISOReaderEngagement *)self cborObj];
  }

  return v4;
}

- (ISOReaderEngagement)initWithCoder:(id)a3
{
  v4 = objc_opt_new();

  return v4;
}

@end