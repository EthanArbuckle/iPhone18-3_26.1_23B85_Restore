@interface NSString(ThreeBars)
- (id)reformatBSSID;
@end

@implementation NSString(ThreeBars)

- (id)reformatBSSID
{
  selfCopy = self;
  if (selfCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [selfCopy UTF8String] && (v2 = ether_aton(objc_msgSend(selfCopy, "UTF8String"))) != 0)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v2->octet[0], v2->octet[1], v2->octet[2], v2->octet[3], v2->octet[4], v2->octet[5]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end