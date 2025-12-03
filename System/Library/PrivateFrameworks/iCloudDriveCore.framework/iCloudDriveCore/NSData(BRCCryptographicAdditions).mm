@interface NSData(BRCCryptographicAdditions)
+ (id)brc_generateBogusKey;
+ (id)brc_generateSaltingKey;
- (id)brc_truncatedSHA256;
- (uint64_t)brc_hexadecimalString;
@end

@implementation NSData(BRCCryptographicAdditions)

- (uint64_t)brc_hexadecimalString
{
  v2 = MEMORY[0x277CCACA8];
  bytes = [self bytes];
  v4 = [self length];

  return [v2 brc_hexadecimalStringWithBytes:bytes length:v4];
}

- (id)brc_truncatedSHA256
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  validationKeyTruncationLength = [v2 validationKeyTruncationLength];

  memset(v8, 0, sizeof(v8));
  CC_SHA256([self bytes], objc_msgSend(self, "length"), v8);
  if (validationKeyTruncationLength >= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = validationKeyTruncationLength;
  }

  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v4];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)brc_generateSaltingKey
{
  v0 = [MEMORY[0x277CBEB28] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, [v0 mutableBytes]))
  {
    v1 = *__error();
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, 0x90u))
    {
      +[(NSData(BRCCryptographicAdditions) *)v2];
    }

    v4 = 0;
    *__error() = v1;
  }

  else
  {
    v4 = v0;
  }

  return v4;
}

+ (id)brc_generateBogusKey
{
  if (brc_generateBogusKey_onceToken != -1)
  {
    +[NSData(BRCCryptographicAdditions) brc_generateBogusKey];
  }

  v1 = brc_generateBogusKey_key;

  return v1;
}

@end