@interface NSData(vCardAdditions)
- (id)_cn_encodeVCardBase64DataWithInitialLength:()vCardAdditions;
@end

@implementation NSData(vCardAdditions)

- (id)_cn_encodeVCardBase64DataWithInitialLength:()vCardAdditions
{
  v5 = 4 * [self length] / 3uLL;
  v6 = NSZoneMalloc(0, 0x18uLL);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v7 = NSZoneMalloc(0, v5);
  v6[1] = 0;
  v6[2] = v5;
  *v6 = v7;
  bytes = [self bytes];
  v9 = [self length];
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = 0;
    v12 = v9;
    do
    {
      if (v11 % 3 == 2)
      {
        a3 = appendToBufferWithLineFolding(v6, Encode64Table[((*bytes | (*(bytes - 1) << 8)) >> 6) & 0x3F], a3);
        v13 = *bytes & 0x3F;
      }

      else if (v11 % 3 == 1)
      {
        v13 = ((*bytes | (*(bytes - 1) << 8)) >> 4) & 0x3F;
      }

      else
      {
        v13 = *bytes >> 2;
      }

      a3 = appendToBufferWithLineFolding(v6, Encode64Table[v13], a3);
      ++v11;
      ++bytes;
      --v12;
    }

    while (v12);
    if (v10 % 3 == 2)
    {
      v16 = Encode64Table[4 * (*(bytes - 1) & 0xF)];
      v15 = v6;
      v14 = a3;
    }

    else
    {
      if (v10 % 3 != 1)
      {
        goto LABEL_16;
      }

      v14 = appendToBufferWithLineFolding(v6, Encode64Table[16 * (*(bytes - 1) & 3)], a3);
      v15 = v6;
      v16 = 61;
    }

    v17 = appendToBufferWithLineFolding(v15, v16, v14);
    appendToBufferWithLineFolding(v6, 61, v17);
  }

LABEL_16:
  v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*v6 length:v6[1]];
  NSZoneFree(0, v6);

  return v18;
}

@end