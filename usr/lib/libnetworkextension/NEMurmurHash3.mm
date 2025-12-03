@interface NEMurmurHash3
+ (uint64_t)digest32BitX86:(unsigned int)x86 length:(int)length seed:;
+ (unsigned)hash:(id)hash seed:(unsigned int)seed;
+ (unsigned)hashWithString:(const char *)string seed:(unsigned int)seed;
@end

@implementation NEMurmurHash3

+ (unsigned)hashWithString:(const char *)string seed:(unsigned int)seed
{
  v7 = strlen(string);

  return [(NEMurmurHash3 *)self digest32BitX86:string length:v7 seed:seed];
}

+ (uint64_t)digest32BitX86:(unsigned int)x86 length:(int)length seed:
{
  objc_opt_self();
  x86Copy = x86;
  if ((x86 & 0xFFFFFFFC) != 0)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + v7);
      objc_opt_self();
      objc_opt_self();
      HIDWORD(v9) = (461845907 * ((380141568 * v8) | ((-862048943 * v8) >> 17))) ^ length;
      LODWORD(v9) = HIDWORD(v9);
      length = 5 * (v9 >> 19) - 430675100;
      v7 += 4;
    }

    while (v7 < (x86 & 0xFFFFFFFC));
  }

  v10 = 0;
  if ((x86 & 3) > 1)
  {
    v11 = x86 & 0xFFFFFFFC;
    v12 = a2 + v11;
    if ((x86 & 3) != 2)
    {
      v10 = *(v12 + 2) << 16;
    }

    v10 |= *(v12 + 1) << 8;
  }

  else
  {
    v11 = x86 & 0xFFFFFFFC;
    if ((x86 & 3) == 0)
    {
      goto LABEL_11;
    }
  }

  v13 = v10 ^ *(a2 + v11);
  objc_opt_self();
  length ^= 461845907 * ((380141568 * v13) | ((-862048943 * v13) >> 17));
LABEL_11:
  objc_opt_self();
  v14 = -1028477387 * ((-2048144789 * (length ^ x86Copy ^ ((length ^ x86Copy) >> 16))) ^ ((-2048144789 * (length ^ x86Copy ^ ((length ^ x86Copy) >> 16))) >> 13));
  return v14 ^ HIWORD(v14);
}

+ (unsigned)hash:(id)hash seed:(unsigned int)seed
{
  hashCopy = hash;
  v7 = +[NEMurmurHash3 digest32BitX86:length:seed:](self, [hashCopy UTF8String], objc_msgSend(hashCopy, "lengthOfBytesUsingEncoding:", 4), seed);

  return v7;
}

@end