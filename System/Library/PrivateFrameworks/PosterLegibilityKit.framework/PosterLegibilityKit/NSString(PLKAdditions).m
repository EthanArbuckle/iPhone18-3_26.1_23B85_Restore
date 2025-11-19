@interface NSString(PLKAdditions)
+ (id)plk_sha256Hash:()PLKAdditions;
+ (id)plk_sha256HashForObject:()PLKAdditions error:;
- (id)plk_sha256Hash;
@end

@implementation NSString(PLKAdditions)

- (id)plk_sha256Hash
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = [v1 plk_sha256Hash];

  return v2;
}

+ (id)plk_sha256Hash:()PLKAdditions
{
  v3 = [a3 componentsJoinedByString:{@", "}];
  v4 = [v3 plk_sha256Hash];

  return v4;
}

+ (id)plk_sha256HashForObject:()PLKAdditions error:
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:a4];
  v5 = [v4 plk_sha256Hash];

  return v5;
}

@end