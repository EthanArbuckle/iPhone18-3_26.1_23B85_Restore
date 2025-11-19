@interface NSData(VKDataExtensions)
- (id)vk_md5;
- (id)vk_stringValue;
@end

@implementation NSData(VKDataExtensions)

- (id)vk_md5
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, [a1 bytes], objc_msgSend(a1, "length"));
  CC_MD5_Final(md, &c);
  v2 = [MEMORY[0x1E696AD60] string];
  for (i = 0; i != 16; ++i)
  {
    v4 = md[i];
    LODWORD(v5) = (v4 >> 4) + 87;
    if (v4 >= 0xA0)
    {
      v5 = v5;
    }

    else
    {
      v5 = (v4 >> 4) | 0x30;
    }

    v6 = v4 & 0xF;
    LODWORD(v7) = v6 + 87;
    if (v6 >= 0xA)
    {
      v7 = v7;
    }

    else
    {
      v7 = v6 | 0x30;
    }

    [v2 appendFormat:@"%c%c", v5, v7];
  }

  return v2;
}

- (id)vk_stringValue
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:a1 encoding:4];

  return v1;
}

@end