@interface CNVCardData
+ (BOOL)isJPEGData:(id)data;
+ (id)stringFromUTF7Data:(id)data;
@end

@implementation CNVCardData

+ (BOOL)isJPEGData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];

  return v5 >= 4 && *bytes == 255 && bytes[1] == 216 && bytes[2] == 255 && bytes[3] < 0;
}

+ (id)stringFromUTF7Data:(id)data
{
  dataCopy = data;
  v16 = 0;
  v4 = [dataCopy length];
  if (v4)
  {
    bytes = [dataCopy bytes];
    v6 = [MEMORY[0x277CBEB28] dataWithCapacity:v4];
    v7 = 0;
    data = 0;
    while (1)
    {
      v10 = *bytes++;
      v9 = v10;
      v15 = v10;
      if ((v7 & 1) == 0)
      {
        break;
      }

      v12 = (v9 - 48) >= 0xA && (v9 - 64) >= 0x1Bu && (v9 - 97) >= 0x1Au;
      if (v12 && ((v9 - 43) & 0xFB) != 0)
      {
        _cn_decodeBase64 = [data _cn_decodeBase64];
        if (_cn_decodeBase64)
        {
          [v6 appendData:_cn_decodeBase64];
          if (data)
          {

            data = 0;
          }
        }

        if (v15 != 45)
        {
          v16 = v15;
          [v6 appendBytes:&v16 length:2];
        }

        goto LABEL_26;
      }

      if (!data)
      {
        goto LABEL_24;
      }

      v7 = 1;
      [data appendBytes:&v15 length:1];
LABEL_27:
      if (!--v4)
      {
        v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:10];

        goto LABEL_29;
      }
    }

    if (v9 != 43)
    {
      v16 = v9;
      [v6 appendBytes:&v16 length:2];
LABEL_26:
      v7 = 0;
      goto LABEL_27;
    }

    if (!data)
    {
      data = [MEMORY[0x277CBEB28] data];
    }

LABEL_24:
    v7 = 1;
    goto LABEL_27;
  }

LABEL_29:

  return v4;
}

@end