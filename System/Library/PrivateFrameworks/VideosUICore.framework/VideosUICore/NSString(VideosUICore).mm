@interface NSString(VideosUICore)
+ (id)tvs_hexStringWithBytes:()VideosUICore length:lowercase:;
- (id)vui_SHA256String;
- (id)vui_filenameSafeString;
@end

@implementation NSString(VideosUICore)

- (id)vui_filenameSafeString
{
  v2 = [MEMORY[0x277CCAB68] stringWithString:a1];
  v3 = [a1 length];
  [v2 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, v3}];
  [v2 replaceOccurrencesOfString:@":" withString:@"_" options:0 range:{0, v3}];
  v4 = [MEMORY[0x277CCACA8] stringWithString:v2];

  return v4;
}

- (id)vui_SHA256String
{
  v2 = [a1 length];
  if (v2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(a1 length:{"UTF8String"), v2}];
    v4 = [v3 vui_SHA256Digest];
    v5 = [v4 vui_lowercaseHexString];
  }

  return v5;
}

+ (id)tvs_hexStringWithBytes:()VideosUICore length:lowercase:
{
  v8 = 2 * a4;
  v9 = malloc_type_malloc((2 * a4) | 1, 0xBB30158DuLL);
  v10 = v9;
  v11 = &unk_270EA2C40;
  if (a5)
  {
    v11 = &unk_270EA2C50;
  }

  if (a4)
  {
    v12 = 1;
    v13 = 1;
    do
    {
      *(v9 + v12 - 1) = v11[*a3 >> 4];
      v14 = *a3++;
      *(v9 + v12) = v11[v14 & 0xF];
      v15 = v13++;
      v12 += 2;
    }

    while (v15 < a4);
  }

  *(v9 + v8) = 0;
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  free(v10);

  return v16;
}

@end