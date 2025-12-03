@interface NSString(PLKAdditions)
+ (id)plk_sha256Hash:()PLKAdditions;
+ (id)plk_sha256HashForObject:()PLKAdditions error:;
- (id)plk_sha256Hash;
@end

@implementation NSString(PLKAdditions)

- (id)plk_sha256Hash
{
  v1 = [self dataUsingEncoding:4];
  plk_sha256Hash = [v1 plk_sha256Hash];

  return plk_sha256Hash;
}

+ (id)plk_sha256Hash:()PLKAdditions
{
  v3 = [a3 componentsJoinedByString:{@", "}];
  plk_sha256Hash = [v3 plk_sha256Hash];

  return plk_sha256Hash;
}

+ (id)plk_sha256HashForObject:()PLKAdditions error:
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:a4];
  plk_sha256Hash = [v4 plk_sha256Hash];

  return plk_sha256Hash;
}

@end