@interface NSData(Digest)
- (id)ses_sha1;
- (id)ses_sha256;
- (id)ses_sha384;
@end

@implementation NSData(Digest)

- (id)ses_sha1
{
  v2 = [MEMORY[0x1E695DF88] dataWithLength:20];
  CC_SHA1([a1 bytes], objc_msgSend(a1, "length"), objc_msgSend(v2, "mutableBytes"));

  return v2;
}

- (id)ses_sha256
{
  v2 = [MEMORY[0x1E695DF88] dataWithLength:32];
  CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), objc_msgSend(v2, "mutableBytes"));

  return v2;
}

- (id)ses_sha384
{
  v2 = [MEMORY[0x1E695DF88] dataWithLength:48];
  CC_SHA384([a1 bytes], objc_msgSend(a1, "length"), objc_msgSend(v2, "mutableBytes"));

  return v2;
}

@end