@interface NSUUID
+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 UUID:(id)a4;
+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 bytes:(const void *)a4 size:(unint64_t)a5;
+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 doubleValue:(double)a4;
+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 integerValue:(int64_t)a4;
+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 name:(id)a4;
+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 timeInterval:(double)a4;
+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 unsignedIntegerValue:(unint64_t)a4;
- (int64_t)tsu_compare:(id)a3;
@end

@implementation NSUUID

+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 name:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [a4 UTF8String];
  v10 = [a1 tsu_UUIDWithNamespaceUUID:v8 bytes:v9 size:strlen(v9)];

  return v10;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 UUID:(id)a4
{
  v9[0] = 0;
  v9[1] = 0;
  v6 = a3;
  [a4 getUUIDBytes:v9];
  v7 = [a1 tsu_UUIDWithNamespaceUUID:v6 bytes:v9 size:16];

  return v7;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 timeInterval:(double)a4
{
  v6 = a4;
  v4 = [a1 tsu_UUIDWithNamespaceUUID:a3 bytes:&v6 size:8];

  return v4;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 doubleValue:(double)a4
{
  v6 = a4;
  v4 = [a1 tsu_UUIDWithNamespaceUUID:a3 bytes:&v6 size:8];

  return v4;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 unsignedIntegerValue:(unint64_t)a4
{
  v6 = a4;
  v4 = [a1 tsu_UUIDWithNamespaceUUID:a3 bytes:&v6 size:8];

  return v4;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 integerValue:(int64_t)a4
{
  v6 = a4;
  v4 = [a1 tsu_UUIDWithNamespaceUUID:a3 bytes:&v6 size:8];

  return v4;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)a3 bytes:(const void *)a4 size:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  data = 0uLL;
  if (!v7)
  {
    v8 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C368();
    }

    v9 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015C390(v8, v9);
    }

    v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSUUID(NSUUID_TSUAdditions) tsu_UUIDWithNamespaceUUID:bytes:size:]");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSUUID_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:47 isFatal:0 description:"invalid nil value for '%{public}s'", "namespaceUUID"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v7 = objc_alloc_init(NSUUID);
  }

  [v7 getUUIDBytes:&data];
  CC_SHA1_Update(&c, &data, 0x10u);
  CC_SHA1_Update(&c, a4, v5);
  CC_SHA1_Final(md, &c);
  data = *md;
  BYTE6(data) = md[6] & 0xF | 0x50;
  BYTE8(data) = md[8] & 0x3F | 0x80;
  v12 = [[NSUUID alloc] initWithUUIDBytes:&data];

  return v12;
}

- (int64_t)tsu_compare:(id)a3
{
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v4 = a3;
  [(NSUUID *)self getUUIDBytes:&v14];
  [v4 getUUIDBytes:&v12];

  v5 = bswap64(v14);
  v6 = bswap64(v12);
  if (v5 == v6 && (v5 = bswap64(v15), v6 = bswap64(v13), v5 == v6))
  {
    v7 = 0;
  }

  else if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 == 0;
  v9 = v7 < 0;
  v10 = -1;
  if (!v9)
  {
    v10 = 1;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

@end