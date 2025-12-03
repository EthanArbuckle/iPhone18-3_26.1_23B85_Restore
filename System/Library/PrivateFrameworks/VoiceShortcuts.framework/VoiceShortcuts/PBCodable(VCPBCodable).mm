@interface PBCodable(VCPBCodable)
- (uint64_t)readFrom:()VCPBCodable error:;
- (uint64_t)writeTo:()VCPBCodable error:;
@end

@implementation PBCodable(VCPBCodable)

- (uint64_t)readFrom:()VCPBCodable error:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [self readFrom:v6];
  v8 = v7;
  if (a4 && (v7 & 1) == 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read protobuf message from %lu of %lu bytes", objc_msgSend(v6, "position"), objc_msgSend(v6, "length")];
    v10 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v10 errorWithDomain:@"PBRequesterErrorDomain" code:6005 userInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (uint64_t)writeTo:()VCPBCodable error:
{
  [self writeTo:?];
  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

@end