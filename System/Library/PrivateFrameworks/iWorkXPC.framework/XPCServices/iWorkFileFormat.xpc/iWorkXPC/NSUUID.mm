@interface NSUUID
+ (id)tsu_UUIDWithNamespaceUUID:(id)d UUID:(id)iD;
+ (id)tsu_UUIDWithNamespaceUUID:(id)d bytes:(const void *)bytes size:(unint64_t)size;
+ (id)tsu_UUIDWithNamespaceUUID:(id)d doubleValue:(double)value;
+ (id)tsu_UUIDWithNamespaceUUID:(id)d integerValue:(int64_t)value;
+ (id)tsu_UUIDWithNamespaceUUID:(id)d name:(id)name;
+ (id)tsu_UUIDWithNamespaceUUID:(id)d timeInterval:(double)interval;
+ (id)tsu_UUIDWithNamespaceUUID:(id)d unsignedIntegerValue:(unint64_t)value;
- (int64_t)tsu_compare:(id)tsu_compare;
@end

@implementation NSUUID

+ (id)tsu_UUIDWithNamespaceUUID:(id)d name:(id)name
{
  nameCopy = name;
  dCopy = d;
  uTF8String = [name UTF8String];
  v10 = [self tsu_UUIDWithNamespaceUUID:dCopy bytes:uTF8String size:strlen(uTF8String)];

  return v10;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)d UUID:(id)iD
{
  v9[0] = 0;
  v9[1] = 0;
  dCopy = d;
  [iD getUUIDBytes:v9];
  v7 = [self tsu_UUIDWithNamespaceUUID:dCopy bytes:v9 size:16];

  return v7;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)d timeInterval:(double)interval
{
  intervalCopy = interval;
  v4 = [self tsu_UUIDWithNamespaceUUID:d bytes:&intervalCopy size:8];

  return v4;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)d doubleValue:(double)value
{
  valueCopy = value;
  v4 = [self tsu_UUIDWithNamespaceUUID:d bytes:&valueCopy size:8];

  return v4;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)d unsignedIntegerValue:(unint64_t)value
{
  valueCopy = value;
  v4 = [self tsu_UUIDWithNamespaceUUID:d bytes:&valueCopy size:8];

  return v4;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)d integerValue:(int64_t)value
{
  valueCopy = value;
  v4 = [self tsu_UUIDWithNamespaceUUID:d bytes:&valueCopy size:8];

  return v4;
}

+ (id)tsu_UUIDWithNamespaceUUID:(id)d bytes:(const void *)bytes size:(unint64_t)size
{
  sizeCopy = size;
  dCopy = d;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  data = 0uLL;
  if (!dCopy)
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
    dCopy = objc_alloc_init(NSUUID);
  }

  [dCopy getUUIDBytes:&data];
  CC_SHA1_Update(&c, &data, 0x10u);
  CC_SHA1_Update(&c, bytes, sizeCopy);
  CC_SHA1_Final(md, &c);
  data = *md;
  BYTE6(data) = md[6] & 0xF | 0x50;
  BYTE8(data) = md[8] & 0x3F | 0x80;
  v12 = [[NSUUID alloc] initWithUUIDBytes:&data];

  return v12;
}

- (int64_t)tsu_compare:(id)tsu_compare
{
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  tsu_compareCopy = tsu_compare;
  [(NSUUID *)self getUUIDBytes:&v14];
  [tsu_compareCopy getUUIDBytes:&v12];

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