@interface REMultipeerHelper
+ (Address)makeAddressFromPeerID:(SEL)d;
@end

@implementation REMultipeerHelper

+ (Address)makeAddressFromPeerID:(SEL)d
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a4 requiringSecureCoding:0 error:0];
  v6 = [v5 base64EncodedStringWithOptions:0];
  uTF8String = [v6 UTF8String];
  re::DynamicString::DynamicString(retstr, &v9);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  return result;
}

@end