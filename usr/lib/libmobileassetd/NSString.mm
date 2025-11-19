@interface NSString
+ (id)base64StringFromData:(id)a3 length:(int)a4;
- (id)base64String;
@end

@implementation NSString

- (id)base64String
{
  v2 = [[NSData alloc] initWithBase64EncodedString:self options:0];
  v3 = [objc_opt_class() base64StringFromData:v2 length:{objc_msgSend(v2, "length")}];

  return v3;
}

+ (id)base64StringFromData:(id)a3 length:(int)a4
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = [NSMutableString stringWithCapacity:v5];
    v8 = [v4 bytes];
    if (v6 >= 1)
    {
      v27 = v4;
      v9 = 0;
      v10 = &base64EncodingTable;
      p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v12 = @"%c";
      v13 = v6;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          if (v9 + i >= v6)
          {
            v15 = 0;
          }

          else
          {
            v15 = v8[i];
          }

          *(&v31 + i) = v15;
        }

        v28 = v13;
        v29 = v8;
        v30[0] = v31 >> 2;
        v30[1] = (v32 >> 4) & 0xCF | (16 * (v31 & 3));
        v30[2] = (v33 >> 6) & 0xC3 | (4 * (v32 & 0xF));
        v30[3] = v33 & 0x3F;
        if (v13 == 2)
        {
          v16 = 3;
        }

        else
        {
          v16 = 4;
        }

        if (v13 == 1)
        {
          v17 = 2;
        }

        else
        {
          v17 = v16;
        }

        v18 = v30;
        v19 = v17;
        do
        {
          v20 = *v18++;
          [p_weak_ivar_lyt[226] stringWithFormat:v12, v10[v20]];
          v21 = v12;
          v22 = p_weak_ivar_lyt;
          v24 = v23 = v10;
          [(__CFString *)v7 appendString:v24];

          v10 = v23;
          p_weak_ivar_lyt = v22;
          v12 = v21;
          --v19;
        }

        while (v19);
        if (v28 <= 2)
        {
          do
          {
            [(__CFString *)v7 appendString:@"="];
            v25 = v17;
            LODWORD(v17) = v17 + 1;
          }

          while (v25 < 3);
        }

        v9 += 3;
        v13 = v6 - v9;
        v8 = v29 + 3;
      }

      while (v6 - v9 > 0);
      v4 = v27;
    }
  }

  else
  {
    v7 = &stru_4BD3F0;
  }

  return v7;
}

@end