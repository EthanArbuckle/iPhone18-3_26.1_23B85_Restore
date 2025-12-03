@interface NSData(WLSRPServer)
+ (id)wl_hmacSHA256DataForData:()WLSRPServer key:;
@end

@implementation NSData(WLSRPServer)

+ (id)wl_hmacSHA256DataForData:()WLSRPServer key:
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  bytes = [v5 bytes];
  v8 = [v5 length];

  bytes2 = [v6 bytes];
  v10 = [v6 length];

  CCHmac(2u, bytes, v8, bytes2, v10, macOut);
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:macOut length:32];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end