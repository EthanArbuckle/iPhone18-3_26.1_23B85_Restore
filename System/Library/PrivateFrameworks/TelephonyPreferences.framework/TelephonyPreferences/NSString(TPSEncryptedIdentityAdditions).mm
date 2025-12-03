@interface NSString(TPSEncryptedIdentityAdditions)
+ (id)tps_ctStringWithTPSEncryptedIdentityType:()TPSEncryptedIdentityAdditions;
+ (id)tps_stringWithTPSEncryptedIdentityType:()TPSEncryptedIdentityAdditions;
- (uint64_t)tps_encryptedIdentityType;
@end

@implementation NSString(TPSEncryptedIdentityAdditions)

+ (id)tps_ctStringWithTPSEncryptedIdentityType:()TPSEncryptedIdentityAdditions
{
  if (a3 == 1)
  {
    v4 = MEMORY[0x277CC3A00];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (a3 == 2)
  {
    v4 = MEMORY[0x277CC3A08];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

+ (id)tps_stringWithTPSEncryptedIdentityType:()TPSEncryptedIdentityAdditions
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:off_2782E3BB8[a3]];
  }

  return v4;
}

- (uint64_t)tps_encryptedIdentityType
{
  if ([self isEqualToString:*MEMORY[0x277CC3A00]])
  {
    return 1;
  }

  if ([self isEqualToString:*MEMORY[0x277CC3A08]])
  {
    return 2;
  }

  return 0;
}

@end