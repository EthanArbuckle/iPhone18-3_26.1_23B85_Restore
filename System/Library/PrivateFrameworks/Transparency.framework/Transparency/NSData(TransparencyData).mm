@interface NSData(TransparencyData)
+ (id)kt_dataWithHexString:()TransparencyData;
+ (id)kt_dataWithUint64:()TransparencyData length:;
+ (id)kt_random;
- (__CFString)kt_hexString;
- (id)kt_sha256;
- (id)kt_sha256WithSalt:()TransparencyData;
@end

@implementation NSData(TransparencyData)

+ (id)kt_dataWithHexString:()TransparencyData
{
  if (__s)
  {
    v13 = 0;
    *__str = 0;
    v4 = strlen(__s);
    v5 = malloc_type_malloc(v4 >> 1, 0x481C8BDFuLL);
    v6 = v5;
    if (v4)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        *__str = *&__s[v7];
        v11 = 0;
        *v8++ = strtol(__str, &v11, 16);
        v7 += 2;
      }

      while (v7 < v4);
    }

    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:v4 >> 1];
    free(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (__CFString)kt_hexString
{
  if ([self length])
  {
    v2 = [MEMORY[0x1E696AD60] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
    if ([self length])
    {
      v3 = 0;
      do
      {
        -[__CFString appendFormat:](v2, "appendFormat:", @"%02X", *([self bytes] + v3++));
      }

      while (v3 < [self length]);
    }
  }

  else
  {
    v2 = &stru_1F5BF95A8;
  }

  return v2;
}

- (id)kt_sha256
{
  v6 = *MEMORY[0x1E69E9840];
  ccsha256_di();
  [self length];
  [self bytes];
  ccdigest();
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:32];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)kt_sha256WithSalt:()TransparencyData
{
  v4 = a3;
  if (v4)
  {
    data = [MEMORY[0x1E695DF88] data];
    v6 = [MEMORY[0x1E695DEF0] kt_dataWithUint64:objc_msgSend(v4 length:{"length"), 8}];
    [data appendData:v6];

    [data appendData:v4];
    v7 = [MEMORY[0x1E695DEF0] kt_dataWithUint64:objc_msgSend(self length:{"length"), 8}];
    [data appendData:v7];

    [data appendData:self];
    kt_sha256 = [data kt_sha256];
  }

  else
  {
    kt_sha256 = [self kt_sha256];
  }

  return kt_sha256;
}

+ (id)kt_random
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, v3);
  v0 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v3 length:32];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

+ (id)kt_dataWithUint64:()TransparencyData length:
{
  v6 = [MEMORY[0x1E695DF88] dataWithLength:a4];
  v7 = 8;
  if (a4 < 8)
  {
    v7 = a4;
  }

  if (a4)
  {
    v8 = 0;
    v9 = 8 * v7;
    v10 = a4 - 1;
    do
    {
      v12 = a3 >> v8;
      [v6 replaceBytesInRange:v10 withBytes:{1, &v12}];
      v8 += 8;
      --v10;
    }

    while (v9 != v8);
  }

  return v6;
}

@end