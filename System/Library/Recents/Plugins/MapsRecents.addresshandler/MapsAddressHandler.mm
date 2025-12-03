@interface MapsAddressHandler
- (id)syncKeyForAddress:(id)address kind:(id)kind;
@end

@implementation MapsAddressHandler

- (id)syncKeyForAddress:(id)address kind:(id)kind
{
  uTF8String = [address UTF8String];
  v5 = strlen(uTF8String);
  CC_SHA1(uTF8String, v5, md);
  v6 = +[NSMutableString string];
  for (i = 0; i != 20; ++i)
  {
    [v6 appendString:*(&off_4060 + md[i])];
  }

  return v6;
}

@end