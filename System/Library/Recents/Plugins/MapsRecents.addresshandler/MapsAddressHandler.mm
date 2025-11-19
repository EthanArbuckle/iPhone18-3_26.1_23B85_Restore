@interface MapsAddressHandler
- (id)syncKeyForAddress:(id)a3 kind:(id)a4;
@end

@implementation MapsAddressHandler

- (id)syncKeyForAddress:(id)a3 kind:(id)a4
{
  v4 = [a3 UTF8String];
  v5 = strlen(v4);
  CC_SHA1(v4, v5, md);
  v6 = +[NSMutableString string];
  for (i = 0; i != 20; ++i)
  {
    [v6 appendString:*(&off_4060 + md[i])];
  }

  return v6;
}

@end