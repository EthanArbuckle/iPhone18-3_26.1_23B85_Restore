@interface NSUUID
+ (id)csd_UUIDv5ForString:(id)string;
@end

@implementation NSUUID

+ (id)csd_UUIDv5ForString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [[NSUUID alloc] initWithUUIDString:@"A910C931-A590-41EF-A783-910BFBE500B3"];
    if (v5)
    {
      v6 = [self tu_UUIDv5ForString:stringCopy namespaceUUID:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end