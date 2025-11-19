@interface REMultipeerHelper
+ (Address)makeAddressFromPeerID:(SEL)a3;
@end

@implementation REMultipeerHelper

+ (Address)makeAddressFromPeerID:(SEL)a3
{
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a4 requiringSecureCoding:0 error:0];
  v6 = [v5 base64EncodedStringWithOptions:0];
  v7 = [v6 UTF8String];
  re::DynamicString::DynamicString(retstr, &v9);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  return result;
}

@end