@interface NSData(StatusKitAgent)
- (id)ska_hexString;
- (id)ska_sha256;
@end

@implementation NSData(StatusKitAgent)

- (id)ska_hexString
{
  v2 = [self length];
  bytes = [self bytes];
  for (i = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * v2]; v2; --v2)
  {
    v5 = *bytes++;
    [i appendFormat:@"%02lx", v5];
  }

  v6 = [i copy];

  return v6;
}

- (id)ska_sha256
{
  v1 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:self];
  v2 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), objc_msgSend(v2, "mutableBytes"));
  v3 = [v2 copy];

  return v3;
}

@end