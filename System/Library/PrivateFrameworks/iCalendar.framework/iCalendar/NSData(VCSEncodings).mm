@interface NSData(VCSEncodings)
- (id)VCSConvert8bitBufferToUTF8From:()VCSEncodings;
- (id)VCSDecodeBase64;
- (id)VCSDecodeQuotedPrintableForText:()VCSEncodings;
@end

@implementation NSData(VCSEncodings)

- (id)VCSDecodeBase64
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_76;
  }

  v3 = [MEMORY[0x277CBEB28] dataWithCapacity:{(3 * objc_msgSend(v1, "length")) >> 2}];
  v4 = [v2 bytes];
  v5 = [v2 length];
  if (v5 < 1)
  {
    goto LABEL_76;
  }

  v31 = v2;
  v6 = 0;
  v7 = 0;
  v8 = &v4[v5];
  while (2)
  {
    while (2)
    {
      v9 = 0;
      v10 = 0;
      v11 = v4 + 1;
      v12 = 1;
      while (1)
      {
        v13 = Decode64Table[*(v11 - 1) & 0x7F];
        if (v13 > 0xFB)
        {
          break;
        }

        if (v13 != 250)
        {
          if (v13 == 251)
          {
            v14 = v9 == 0;
            if (v9)
            {
              v15 = v10;
            }

            else
            {
              v15 = v10 + 1;
            }

            if ((v10 + 1) >= 0xA)
            {
              v14 = 0;
            }

            v16 = !v12;
            v12 = v12 && v14;
            if (!v16)
            {
              v10 = v15;
            }

            goto LABEL_38;
          }

LABEL_35:
          v12 = v12 && (v10 | v9) == 0;
          goto LABEL_38;
        }

        v17 = v11 + 1;
        if ((v11 + 1) < v8 && *v11 == 10 && *v17 == 32)
        {
          v25 = v11 + 1;
          goto LABEL_55;
        }

        if ((v11 + 2) < v8 && *v11 == 13 && *v17 == 10 && v11[2] == 32)
        {
          v25 = v11 + 2;
          goto LABEL_55;
        }

LABEL_33:
        v12 = 0;
LABEL_38:
        v18 = v11 + 1;
        if (v11++ >= v8)
        {
          if (v12)
          {
            if (v9)
            {
              v20 = v9;
            }

            else
            {
              v20 = v8;
            }

            v21 = &v4[v10];
            if (&v4[v10] != v20)
            {
              v34 = 0;
              v32 = v18 - 1;
LABEL_46:
              v22 = v20 - v21;
              v33 = v7;
              do
              {
                v23 = *v4++;
                v24 = Decode64Table[v23 & 0x7F];
                if ((v24 & 0x80000000) == 0)
                {
                  v6 = v24 + (v6 << 6);
                  if ((~v7 & 3) == 0)
                  {
                    v35 = BYTE2(v6);
                    [v3 appendBytes:&v35 length:1];
                    v36 = BYTE1(v6);
                    [v3 appendBytes:&v36 length:1];
                    v37 = v6;
                    [v3 appendBytes:&v37 length:1];
                    v6 = 0;
                  }
                }

                ++v7;
                --v22;
              }

              while (v22);
              v7 = v33 - v21 + v20;
              v4 = v32;
              goto LABEL_61;
            }

            goto LABEL_70;
          }

LABEL_69:
          [v3 appendBytes:v4 length:{v8 - v4, v31}];
          goto LABEL_70;
        }
      }

      if (Decode64Table[*(v11 - 1) & 0x7F] > 0xFDu)
      {
        if (v13 != 255)
        {
          v25 = v11 - 1;
          goto LABEL_55;
        }

        goto LABEL_33;
      }

      if (v13 == 252)
      {
        if (v12 && v9 == 0)
        {
          v9 = (v11 - 1);
        }

        goto LABEL_38;
      }

      if (v13 != 253)
      {
        goto LABEL_35;
      }

      v25 = v11 - 1;
      if (v11 < v8 && *v11 == 10)
      {
        v25 = v11;
      }

LABEL_55:
      v26 = v25 + 1;
      v27 = (v25 + 1) < v8;
      if (!v12)
      {
        if (v27)
        {
          [v3 appendBytes:v4 length:v26 - v4];
          v4 = v26;
          continue;
        }

        goto LABEL_69;
      }

      break;
    }

    v34 = v27;
    v28 = v11 - 1;
    if (v9)
    {
      v20 = v9;
    }

    else
    {
      v20 = v28;
    }

    v21 = &v4[v10];
    if (&v4[v10] != v20)
    {
      v32 = v26;
      goto LABEL_46;
    }

    v4 = v26;
LABEL_61:
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_70:
  if ((v7 & 3u) >= 2)
  {
    if ((v7 & 3) == 2)
    {
      v40 = v6 >> 4;
      v29 = &v40;
    }

    else
    {
      v38 = v6 >> 10;
      [v3 appendBytes:&v38 length:1];
      v39 = v6 >> 2;
      v29 = &v39;
    }

    [v3 appendBytes:v29 length:{1, v31}];
  }

  v2 = v31;
LABEL_76:

  return v3;
}

- (id)VCSConvert8bitBufferToUTF8From:()VCSEncodings
{
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(a1 length:{"bytes"), objc_msgSend(a1, "length") - 1}];
  v7 = [v5 initWithData:v6 encoding:CFStringConvertEncodingToNSStringEncoding(a3)];

  if (v7)
  {
    v8 = [v7 UTF8String];
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 length:strlen(v8)];
  }

  else
  {
    v10 = VCSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NSData(VCSEncodings) VCSConvert8bitBufferToUTF8From:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (id)VCSDecodeQuotedPrintableForText:()VCSEncodings
{
  if (a1)
  {
    v5 = a1;
    v6 = VCSByteBufferWithCapacity([a1 length] / 3uLL);
    v7 = [v5 bytes];
    v8 = [v5 length];
    if (v8)
    {
      v9 = 0;
      v10 = a3;
      v11 = v7;
      do
      {
        v12 = v8 - 1;
        v14 = *v11++;
        v13 = v14;
        if (v14 == 61)
        {
          if (v8 == 1)
          {
            break;
          }

          v15 = *v11;
          if (v15 == 32 || v15 == 10)
          {
            if (v11 < v7 + v8)
            {
              v17 = (v7 + 2);
              v18 = v8 - 2;
              while (1)
              {
                v19 = *(v17 - 1);
                if (v19 != 32)
                {
                  break;
                }

                ++v17;
                if (--v18 == -1)
                {
                  goto LABEL_39;
                }
              }

              v9 = 0;
              if (v19 == 10)
              {
                v12 = v18;
                v11 = v17;
              }

              goto LABEL_40;
            }
          }

          else if (v8 != 2)
          {
            v11 = (v7 + 3);
            v22 = DecodeHexTable[v15 & 0x7F];
            v12 = v8 - 3;
            if (v22 < 0 || (v23 = DecodeHexTable[*(v7 + 2) & 0x7F], v23 < 0))
            {
              v26 = *(v7 + 2);
              VCSByteBufferAppendByte(v6, 61);
              VCSByteBufferAppendByte(v6, v15);
              v25 = v6;
              v24 = v26;
            }

            else
            {
              v24 = v23 + 16 * v22;
              v25 = v6;
            }

            VCSByteBufferAppendByte(v25, v24);
          }

LABEL_39:
          v9 = 0;
        }

        else
        {
          if (v13 == 10 && v9 != 0)
          {
            v6[1] -= v9;
          }

          if (v13 == 32)
          {
            ++v9;
          }

          else
          {
            v9 = 0;
          }

          if (v13 == 10)
          {
            v21 = v10;
          }

          else
          {
            v21 = 1;
          }

          if ((v21 & 1) == 0)
          {
            VCSByteBufferAppendByte(v6, 13);
          }

          VCSByteBufferAppendByte(v6, v13);
        }

LABEL_40:
        v7 = v11;
        v8 = v12;
      }

      while (v12);
    }

    a1 = VCSByteBufferData(v6);
    v3 = vars8;
  }

  return a1;
}

@end