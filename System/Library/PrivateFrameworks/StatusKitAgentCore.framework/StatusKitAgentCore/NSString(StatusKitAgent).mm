@interface NSString(StatusKitAgent)
+ (__CFString)descriptionFromSKUpdatePriority:()StatusKitAgent;
- (id)clientIDFromPresenceIdentifier;
- (id)ska_sha256Hash;
@end

@implementation NSString(StatusKitAgent)

- (id)ska_sha256Hash
{
  v9 = *MEMORY[0x277D85DE8];
  uTF8String = [self UTF8String];
  v2 = strlen(uTF8String);
  CC_SHA256(uTF8String, v2, md);
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  v5 = [v3 copy];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (__CFString)descriptionFromSKUpdatePriority:()StatusKitAgent
{
  v3 = @"Unknown Priority";
  if (a3 == 1)
  {
    v3 = @"SKUpdatePriorityMedium";
  }

  if (a3 == 2)
  {
    return @"SKUpdatePriorityHigh";
  }

  else
  {
    return v3;
  }
}

- (id)clientIDFromPresenceIdentifier
{
  v1 = [self componentsSeparatedByString:@"-"];
  firstObject = [v1 firstObject];

  return firstObject;
}

@end