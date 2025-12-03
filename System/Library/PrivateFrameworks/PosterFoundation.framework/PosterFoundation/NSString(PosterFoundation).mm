@interface NSString(PosterFoundation)
+ (id)pf_bootInstanceIdentifier;
- (id)pf_sha256Hash;
@end

@implementation NSString(PosterFoundation)

- (id)pf_sha256Hash
{
  v9 = *MEMORY[0x1E69E9840];
  uTF8String = [self UTF8String];
  v2 = strlen(uTF8String);
  CC_SHA256(uTF8String, v2, md);
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)pf_bootInstanceIdentifier
{
  if (pf_bootInstanceIdentifier_onceToken != -1)
  {
    +[NSString(PosterFoundation) pf_bootInstanceIdentifier];
  }

  v1 = pf_bootInstanceIdentifier_uuid;

  return v1;
}

@end