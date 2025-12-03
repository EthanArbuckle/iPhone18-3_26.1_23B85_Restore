@interface POConcatKDF
+ (id)concatKDFWithKey:(id)key algorithm:(id)algorithm partyUInfo:(id)info partyVInfo:(id)vInfo;
@end

@implementation POConcatKDF

+ (id)concatKDFWithKey:(id)key algorithm:(id)algorithm partyUInfo:(id)info partyVInfo:(id)vInfo
{
  v9 = MEMORY[0x277CBEB28];
  vInfoCopy = vInfo;
  infoCopy = info;
  algorithmCopy = algorithm;
  keyCopy = key;
  v14 = objc_alloc_init(v9);
  v21 = 0x1000000;
  [v14 appendBytes:&v21 length:4];
  [v14 appendData:keyCopy];

  v20 = bswap32([algorithmCopy length]);
  [v14 appendBytes:&v20 length:4];
  [v14 appendData:algorithmCopy];

  v19 = bswap32([infoCopy length]);
  [v14 appendBytes:&v19 length:4];
  [v14 appendData:infoCopy];

  v18 = bswap32([vInfoCopy length]);
  [v14 appendBytes:&v18 length:4];
  [v14 appendData:vInfoCopy];

  v17 = 0x10000;
  [v14 appendBytes:&v17 length:4];
  v15 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256([v14 bytes], objc_msgSend(v14, "length"), objc_msgSend(v15, "mutableBytes"));

  return v15;
}

@end