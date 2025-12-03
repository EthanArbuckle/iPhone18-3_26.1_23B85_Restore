@interface NSString(TVPlaybackAdditions)
+ (id)tvp_hexStringWithBytes:()TVPlaybackAdditions length:lowercase:;
- (id)tvp_dataFromHexString;
- (id)tvp_languageCodeWithoutRegion;
@end

@implementation NSString(TVPlaybackAdditions)

- (id)tvp_languageCodeWithoutRegion
{
  selfCopy = self;
  v2 = [selfCopy rangeOfString:@"_"];
  v3 = [selfCopy rangeOfString:@"-"];
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v2;
  }

  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = selfCopy;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [selfCopy substringToIndex:?];
  }

  return v6;
}

- (id)tvp_dataFromHexString
{
  v1 = [self cStringUsingEncoding:1];
  v2 = strlen(v1);
  v3 = 0;
  if (v2 && (v2 & 1) == 0)
  {
    v4 = v2 >> 1;
    v5 = malloc_type_malloc(v2 >> 1, 0x100004077774924uLL);
    v6 = 0;
    v7 = v1 + 1;
    do
    {
      *__str = *(v7 - 1);
      v10 = 0;
      v5[v6++] = strtol(__str, 0, 16);
      v7 += 2;
    }

    while (v4 != v6);
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:v4];
    free(v5);
  }

  return v3;
}

+ (id)tvp_hexStringWithBytes:()TVPlaybackAdditions length:lowercase:
{
  v6 = a4;
  v8 = 2 * a4;
  v9 = malloc_type_malloc((2 * a4) | 1, 0xAF17D669uLL);
  v10 = v9;
  v11 = "0123456789ABCDEF0123456789abcdef";
  if (a5)
  {
    v11 = "0123456789abcdef";
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