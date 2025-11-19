@interface NSData(sha256)
- (id)sha256;
@end

@implementation NSData(sha256)

- (id)sha256
{
  if ([a1 bytes] && objc_msgSend(a1, "length"))
  {
    v2 = [MEMORY[0x277CBEB28] dataWithLength:32];
    CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), objc_msgSend(v2, "mutableBytes"));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end