@interface NSData(HexStringAdditions)
+ (id)rem_dataWithHexString:()HexStringAdditions;
@end

@implementation NSData(HexStringAdditions)

+ (id)rem_dataWithHexString:()HexStringAdditions
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [MEMORY[0x1E695DF88] dataWithLength:(v4 + 1) >> 1];
  v6 = [v5 mutableBytes];
  v7 = v4;
  if (v4)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [v3 characterAtIndex:v9];
      if (v13 - 48) <= 0x36 && ((0x7E0000007E03FFuLL >> (v13 - 48)))
      {
        v10 = v13 + byte_19A2310B8[2 * (v13 - 48)] + 16 * v10;
        if (v11)
        {
          *(v8 + v12++) = v10;
          ++v11;
          v10 = 0;
        }

        else
        {
          ++v11;
        }
      }

      ++v9;
    }

    while (v7 != v9);
    if (v11)
    {
      *(v8 + v12++) = v10;
    }
  }

  else
  {
    v12 = 0;
  }

  [v5 setLength:v12];

  return v5;
}

@end