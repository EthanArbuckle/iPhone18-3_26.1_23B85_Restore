@interface NSString(TVMLKitAdditions)
+ (id)tvs_hexStringWithBytes:()TVMLKitAdditions length:lowercase:;
- (id)tv_MD5String;
- (id)tv_SHA256String;
- (id)tv_filenameSafeString;
@end

@implementation NSString(TVMLKitAdditions)

- (id)tv_filenameSafeString
{
  v2 = [MEMORY[0x277CCAB68] stringWithString:a1];
  v3 = [a1 length];
  [v2 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, v3}];
  [v2 replaceOccurrencesOfString:@":" withString:@"_" options:0 range:{0, v3}];
  v4 = [MEMORY[0x277CCACA8] stringWithString:v2];

  return v4;
}

- (id)tv_MD5String
{
  v2 = [a1 length];
  if (v2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(a1 length:{"UTF8String"), v2}];
    v4 = [v3 tv_MD5Digest];
    v5 = [v4 tv_lowercaseHexString];
  }

  return v5;
}

- (id)tv_SHA256String
{
  v2 = [a1 length];
  if (v2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(a1 length:{"UTF8String"), v2}];
    v4 = [v3 tv_SHA256Digest];
    v5 = [v4 tv_lowercaseHexString];
  }

  return v5;
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