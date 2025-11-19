@interface NEMurmurHash3
+ (uint64_t)digest32BitX86:(unsigned int)a3 length:(int)a4 seed:;
+ (unsigned)hash:(id)a3 seed:(unsigned int)a4;
+ (unsigned)hashWithString:(const char *)a3 seed:(unsigned int)a4;
@end

@implementation NEMurmurHash3

+ (unsigned)hashWithString:(const char *)a3 seed:(unsigned int)a4
{
  v7 = strlen(a3);

  return [(NEMurmurHash3 *)a1 digest32BitX86:a3 length:v7 seed:a4];
}

+ (uint64_t)digest32BitX86:(unsigned int)a3 length:(int)a4 seed:
{
  objc_opt_self();
  v16 = a3;
  if ((a3 & 0xFFFFFFFC) != 0)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + v7);
      objc_opt_self();
      objc_opt_self();
      HIDWORD(v9) = (461845907 * ((380141568 * v8) | ((-862048943 * v8) >> 17))) ^ a4;
      LODWORD(v9) = HIDWORD(v9);
      a4 = 5 * (v9 >> 19) - 430675100;
      v7 += 4;
    }

    while (v7 < (a3 & 0xFFFFFFFC));
  }

  v10 = 0;
  if ((a3 & 3) > 1)
  {
    v11 = a3 & 0xFFFFFFFC;
    v12 = a2 + v11;
    if ((a3 & 3) != 2)
    {
      v10 = *(v12 + 2) << 16;
    }

    v10 |= *(v12 + 1) << 8;
  }

  else
  {
    v11 = a3 & 0xFFFFFFFC;
    if ((a3 & 3) == 0)
    {
      goto LABEL_11;
    }
  }

  v13 = v10 ^ *(a2 + v11);
  objc_opt_self();
  a4 ^= 461845907 * ((380141568 * v13) | ((-862048943 * v13) >> 17));
LABEL_11:
  objc_opt_self();
  v14 = -1028477387 * ((-2048144789 * (a4 ^ v16 ^ ((a4 ^ v16) >> 16))) ^ ((-2048144789 * (a4 ^ v16 ^ ((a4 ^ v16) >> 16))) >> 13));
  return v14 ^ HIWORD(v14);
}

+ (unsigned)hash:(id)a3 seed:(unsigned int)a4
{
  v6 = a3;
  v7 = +[NEMurmurHash3 digest32BitX86:length:seed:](a1, [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4), a4);

  return v7;
}

@end