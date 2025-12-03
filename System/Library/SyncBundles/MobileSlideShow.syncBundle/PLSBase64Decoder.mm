@interface PLSBase64Decoder
+ (id)decoder;
+ (id)decoderForPhotoUUID;
- (PLSBase64Decoder)init;
- (id)decodeString:(id)string;
- (id)initForPhotoUUID;
@end

@implementation PLSBase64Decoder

- (id)decodeString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy lengthOfBytesUsingEncoding:1];
  v6 = [stringCopy dataUsingEncoding:1];
  bytes = [v6 bytes];
  v8 = malloc_type_malloc(v5, 0x100004077774924uLL);
  v9 = v8;
  if (!v5)
  {
    v17 = 0;
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    v11 <<= 6;
    v14 = v12[bytes];
    if (v14 == 61)
    {
      break;
    }

    v11 |= self->_decoder[v14];
    if (++v13 == 4)
    {
      v13 = 0;
      v15 = &v8[v10];
      *v15 = BYTE2(v11);
      v15[1] = BYTE1(v11);
      v10 += 3;
      v15[2] = v11;
      v11 = 0;
    }

    if (v5 == ++v12)
    {
      v16 = 0;
      v12 = v5;
      goto LABEL_13;
    }
  }

  v16 = 1;
  if (v12 + 1 < v5)
  {
    if (v12[bytes + 1] == 61)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_13:
  if (v13 != 1)
  {
    v18 = &v12[v16];
    if (v13 == 3)
    {
      if (self->_photoUUID)
      {
        v11 <<= 6;
      }

      v19 = &v8[v10];
      *v19 = BYTE2(v11);
      v17 = v10 + 2;
      v19[1] = BYTE1(v11);
      if (v16 != 2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v13 != 2)
      {
        v17 = v10;
        goto LABEL_28;
      }

      if (self->_photoUUID)
      {
        v11 <<= 6;
      }

      v17 = v10 + 1;
      v8[v10] = v11 >> 10;
      if (v16 != 1)
      {
LABEL_28:
        v20 = [NSData dataWithBytes:v8 length:v17];
        if (!v9)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    if (v18 < v5)
    {
      goto LABEL_28;
    }

    v20 = 0;
LABEL_29:
    free(v9);
    goto LABEL_30;
  }

  v20 = 0;
  if (v8)
  {
    goto LABEL_29;
  }

LABEL_30:

  return v20;
}

- (id)initForPhotoUUID
{
  v4.receiver = self;
  v4.super_class = PLSBase64Decoder;
  result = [(PLSBase64Decoder *)&v4 init];
  if (result)
  {
    v3 = 0;
    *(result + 136) = 1;
    do
    {
      *(result + aAbcdefghijklmn[v3] + 8) = v3;
      ++v3;
    }

    while (v3 != 64);
  }

  return result;
}

- (PLSBase64Decoder)init
{
  v4.receiver = self;
  v4.super_class = PLSBase64Decoder;
  result = [(PLSBase64Decoder *)&v4 init];
  if (result)
  {
    v3 = 0;
    result->_photoUUID = 0;
    do
    {
      result->_decoder[aAbcdefghijklmn[v3]] = v3;
      ++v3;
    }

    while (v3 != 64);
  }

  return result;
}

+ (id)decoderForPhotoUUID
{
  initForPhotoUUID = [[PLSBase64Decoder alloc] initForPhotoUUID];

  return initForPhotoUUID;
}

+ (id)decoder
{
  v2 = objc_alloc_init(PLSBase64Decoder);

  return v2;
}

@end