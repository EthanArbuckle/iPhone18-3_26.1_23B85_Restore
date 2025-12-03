@interface NSString(PBFUtilities)
+ (id)pbf_bootInstanceIdentifier;
- (id)pbf_sha256Hash;
@end

@implementation NSString(PBFUtilities)

+ (id)pbf_bootInstanceIdentifier
{
  if (pbf_bootInstanceIdentifier_onceToken != -1)
  {
    +[NSString(PBFUtilities) pbf_bootInstanceIdentifier];
  }

  v1 = pbf_bootInstanceIdentifier_uuid;

  return v1;
}

- (id)pbf_sha256Hash
{
  v9 = *MEMORY[0x277D85DE8];
  if ([self length])
  {
    uTF8String = [self UTF8String];
    v3 = strlen(uTF8String);
    CC_SHA256(uTF8String, v3, md);
    v4 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v4 appendFormat:@"%02x", md[i]];
    }

    v6 = [MEMORY[0x277CCACA8] stringWithString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end