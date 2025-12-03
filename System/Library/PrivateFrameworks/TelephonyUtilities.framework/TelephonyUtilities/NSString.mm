@interface NSString
+ (id)csd_stringWithCSDVoIPApplicationMessageTransportType:(int64_t)type;
- (NSUUID)csd_UUIDv5;
@end

@implementation NSString

- (NSUUID)csd_UUIDv5
{
  v3 = [[NSUUID alloc] initWithUUIDString:self];
  if (!v3)
  {
    v3 = [NSUUID csd_UUIDv5ForString:self];
  }

  return v3;
}

+ (id)csd_stringWithCSDVoIPApplicationMessageTransportType:(int64_t)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return off_10061FF08[type];
  }
}

@end