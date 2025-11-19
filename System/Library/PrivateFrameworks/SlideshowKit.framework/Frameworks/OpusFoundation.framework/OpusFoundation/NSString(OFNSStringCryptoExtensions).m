@interface NSString(OFNSStringCryptoExtensions)
- (uint64_t)hmacSha1Hash:()OFNSStringCryptoExtensions;
- (uint64_t)md5Hash;
- (uint64_t)md5HashString;
- (uint64_t)sha1HashData;
- (uint64_t)sha1HashString;
@end

@implementation NSString(OFNSStringCryptoExtensions)

- (uint64_t)md5Hash
{
  v1 = [a1 dataUsingEncoding:4 allowLossyConversion:0];

  return [v1 md5Hash];
}

- (uint64_t)md5HashString
{
  v1 = [a1 md5Hash];

  return [v1 hexaStringRepresentation];
}

- (uint64_t)sha1HashData
{
  v1 = [a1 dataUsingEncoding:4 allowLossyConversion:0];

  return [v1 sha1Hash];
}

- (uint64_t)sha1HashString
{
  v1 = [a1 sha1HashData];

  return [v1 hexaStringRepresentation];
}

- (uint64_t)hmacSha1Hash:()OFNSStringCryptoExtensions
{
  v4 = [a1 dataUsingEncoding:4 allowLossyConversion:0];
  v5 = [a3 dataUsingEncoding:4 allowLossyConversion:0];

  return [v4 hmacSha1Hash:v5];
}

@end