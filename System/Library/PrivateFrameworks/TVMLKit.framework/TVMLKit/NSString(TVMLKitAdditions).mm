@interface NSString(TVMLKitAdditions)
+ (id)tvs_hexStringWithBytes:()TVMLKitAdditions length:lowercase:;
- (id)tv_MD5String;
- (id)tv_SHA256String;
- (id)tv_filenameSafeString;
@end

@implementation NSString(TVMLKitAdditions)

- (id)tv_filenameSafeString
{
  v2 = [MEMORY[0x277CCAB68] stringWithString:self];
  v3 = [self length];
  [v2 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, v3}];
  [v2 replaceOccurrencesOfString:@":" withString:@"_" options:0 range:{0, v3}];
  v4 = [MEMORY[0x277CCACA8] stringWithString:v2];

  return v4;
}

- (id)tv_MD5String
{
  v2 = [self length];
  if (v2 < 1)
  {
    tv_lowercaseHexString = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(self length:{"UTF8String"), v2}];
    tv_MD5Digest = [v3 tv_MD5Digest];
    tv_lowercaseHexString = [tv_MD5Digest tv_lowercaseHexString];
  }

  return tv_lowercaseHexString;
}

- (id)tv_SHA256String
{
  v2 = [self length];
  if (v2 < 1)
  {
    tv_lowercaseHexString = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(self length:{"UTF8String"), v2}];
    tv_SHA256Digest = [v3 tv_SHA256Digest];
    tv_lowercaseHexString = [tv_SHA256Digest tv_lowercaseHexString];
  }

  return tv_lowercaseHexString;
}

+ (id)tvs_hexStringWithBytes:()TVMLKitAdditions length:lowercase:
{
  v6 = a4;
  v8 = 2 * a4;
  v9 = malloc_type_malloc((2 * a4) | 1, 0xFA9A8081uLL);
  v10 = v9;
  v11 = &unk_26CE87F70;
  if (a5)
  {
    v11 = &unk_26CE87F80;
  }

  if (v6)
  {
    v12 = v9 + 1;
    do
    {
      *(v12 - 1) = v11[*a3 >> 4];
      v13 = *a3++;
      *v12 = v11[v13 & 0xF];
      v12 += 2;
      --v6;
    }

    while (v6);
  }

  v9[v8] = 0;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  free(v10);

  return v14;
}

@end