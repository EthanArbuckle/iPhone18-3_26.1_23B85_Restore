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
  v1 = [self dataUsingEncoding:4 allowLossyConversion:0];

  return [v1 md5Hash];
}

- (uint64_t)md5HashString
{
  md5Hash = [self md5Hash];

  return [md5Hash hexaStringRepresentation];
}

- (uint64_t)sha1HashData
{
  v1 = [self dataUsingEncoding:4 allowLossyConversion:0];

  return [v1 sha1Hash];
}

- (uint64_t)sha1HashString
{
  sha1HashData = [self sha1HashData];

  return [sha1HashData hexaStringRepresentation];
}

- (uint64_t)hmacSha1Hash:()OFNSStringCryptoExtensions
{
  v4 = [self dataUsingEncoding:4 allowLossyConversion:0];
  v5 = [a3 dataUsingEncoding:4 allowLossyConversion:0];

  return [v4 hmacSha1Hash:v5];
}

@end