@interface NSUUID
+ (id)hashedUUID:(id)d;
+ (id)vm_UUIDv5ForData:(id)data namespaceUUID:(id)d;
+ (id)vm_UUIDv5ForString:(id)string;
@end

@implementation NSUUID

+ (id)vm_UUIDv5ForString:(id)string
{
  if (string)
  {
    v4 = [string dataUsingEncoding:4];
    v5 = [[NSUUID alloc] initWithUUIDString:@"0702F1D1-3498-4A05-A546-B04037E868FF"];
    v6 = v5;
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [self vm_UUIDv5ForData:v4 namespaceUUID:v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)vm_UUIDv5ForData:(id)data namespaceUUID:(id)d
{
  v4 = 0;
  if (data && d)
  {
    data[0] = 0;
    data[1] = 0;
    dataCopy = data;
    [d getUUIDBytes:data];
    memset(&v10, 0, sizeof(v10));
    CC_SHA1_Init(&v10);
    CC_SHA1_Update(&v10, data, 0x10u);
    bytes = [dataCopy bytes];
    v8 = [dataCopy length];

    CC_SHA1_Update(&v10, bytes, v8);
    CC_SHA1_Final(md, &v10);
    v13 = *md;
    BYTE6(v13) = md[6] & 0xF | 0x50;
    BYTE8(v13) = md[8] & 0x3F | 0x80;
    v4 = [objc_alloc(objc_opt_class()) initWithUUIDBytes:&v13];
  }

  return v4;
}

+ (id)hashedUUID:(id)d
{
  v3 = [d dataUsingEncoding:4];
  v4 = [[NSUUID alloc] initWithUUIDString:@"0702F1D1-3498-4A05-A546-B04037E868FF"];
  data[0] = 0;
  data[1] = 0;
  [v4 getUUIDBytes:data];
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, data, 0x10u);
  CC_SHA1_Update(&v7, [v3 bytes], objc_msgSend(v3, "length"));
  CC_SHA1_Final(md, &v7);
  v9 = *md;
  BYTE6(v9) = md[6] & 0xF | 0x50;
  BYTE8(v9) = md[8] & 0x3F | 0x80;
  v5 = [[NSUUID alloc] initWithUUIDBytes:&v9];

  return v5;
}

@end