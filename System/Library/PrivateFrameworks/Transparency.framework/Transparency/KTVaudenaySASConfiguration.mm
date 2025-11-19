@interface KTVaudenaySASConfiguration
+ (id)sha256Transparency;
@end

@implementation KTVaudenaySASConfiguration

+ (id)sha256Transparency
{
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:"sha256Transparency" length:18];
  if (v2)
  {
    v3 = [[KTVaudenaySASConfiguration alloc] initWithName:@"sha256Transparency" digestPrefix:v2 shortCodeLength:8 digest:ccsha256_di()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end