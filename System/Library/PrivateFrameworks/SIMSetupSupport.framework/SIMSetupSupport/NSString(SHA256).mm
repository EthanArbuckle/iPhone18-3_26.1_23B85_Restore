@interface NSString(SHA256)
- (id)sha256;
@end

@implementation NSString(SHA256)

- (id)sha256
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataUsingEncoding:4];
  CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 32; ++i)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x", md[i]];
    [v2 addObject:v4];
  }

  v5 = [v2 componentsJoinedByString:&stru_28753DF48];
  v6 = [v5 lowercaseString];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end