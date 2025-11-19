@interface NSData(VTAddition)
- (id)MD5HashString;
@end

@implementation NSData(VTAddition)

- (id)MD5HashString
{
  v20 = *MEMORY[0x277D85DE8];
  CC_MD5([a1 bytes], objc_msgSend(a1, "length"), md);
  v1 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[0]];
  [v1 appendString:v2];

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[1]];
  [v1 appendString:v3];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[2]];
  [v1 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[3]];
  [v1 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[4]];
  [v1 appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[5]];
  [v1 appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[6]];
  [v1 appendString:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[7]];
  [v1 appendString:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[8]];
  [v1 appendString:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[9]];
  [v1 appendString:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[10]];
  [v1 appendString:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[11]];
  [v1 appendString:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[12]];
  [v1 appendString:v14];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[13]];
  [v1 appendString:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[14]];
  [v1 appendString:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X", md[15]];
  [v1 appendString:v17];

  return v1;
}

@end