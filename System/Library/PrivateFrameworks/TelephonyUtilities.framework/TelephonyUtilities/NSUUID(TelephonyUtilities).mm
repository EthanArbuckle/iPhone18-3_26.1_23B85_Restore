@interface NSUUID(TelephonyUtilities)
+ (id)tu_UUIDv5ForData:()TelephonyUtilities namespaceUUID:;
+ (id)tu_UUIDv5ForString:()TelephonyUtilities namespaceUUID:;
@end

@implementation NSUUID(TelephonyUtilities)

+ (id)tu_UUIDv5ForString:()TelephonyUtilities namespaceUUID:
{
  v6 = a4;
  if (a3)
  {
    v7 = [a3 dataUsingEncoding:4];
    v8 = v7;
    a3 = 0;
    if (v6 && v7)
    {
      a3 = [self tu_UUIDv5ForData:v7 namespaceUUID:v6];
    }
  }

  return a3;
}

+ (id)tu_UUIDv5ForData:()TelephonyUtilities namespaceUUID:
{
  v4 = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    data[0] = 0;
    data[1] = 0;
    v6 = a3;
    [a4 getUUIDBytes:data];
    memset(&v11, 0, sizeof(v11));
    CC_SHA1_Init(&v11);
    CC_SHA1_Update(&v11, data, 0x10u);
    bytes = [v6 bytes];
    v8 = [v6 length];

    CC_SHA1_Update(&v11, bytes, v8);
    CC_SHA1_Final(md, &v11);
    v14 = *md;
    BYTE6(v14) = md[6] & 0xF | 0x50;
    BYTE8(v14) = md[8] & 0x3F | 0x80;
    v4 = [objc_alloc(objc_opt_class()) initWithUUIDBytes:&v14];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

@end