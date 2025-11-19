@interface POConcatKDF
+ (id)concatKDFWithKey:(id)a3 algorithm:(id)a4 partyUInfo:(id)a5 partyVInfo:(id)a6;
@end

@implementation POConcatKDF

+ (id)concatKDFWithKey:(id)a3 algorithm:(id)a4 partyUInfo:(id)a5 partyVInfo:(id)a6
{
  v9 = MEMORY[0x277CBEB28];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v9);
  v21 = 0x1000000;
  [v14 appendBytes:&v21 length:4];
  [v14 appendData:v13];

  v20 = bswap32([v12 length]);
  [v14 appendBytes:&v20 length:4];
  [v14 appendData:v12];

  v19 = bswap32([v11 length]);
  [v14 appendBytes:&v19 length:4];
  [v14 appendData:v11];

  v18 = bswap32([v10 length]);
  [v14 appendBytes:&v18 length:4];
  [v14 appendData:v10];

  v17 = 0x10000;
  [v14 appendBytes:&v17 length:4];
  v15 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256([v14 bytes], objc_msgSend(v14, "length"), objc_msgSend(v15, "mutableBytes"));

  return v15;
}

@end