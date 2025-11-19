@interface NSUUID
+ (id)csd_UUIDv5ForString:(id)a3;
@end

@implementation NSUUID

+ (id)csd_UUIDv5ForString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[NSUUID alloc] initWithUUIDString:@"A910C931-A590-41EF-A783-910BFBE500B3"];
    if (v5)
    {
      v6 = [a1 tu_UUIDv5ForString:v4 namespaceUUID:v5];
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