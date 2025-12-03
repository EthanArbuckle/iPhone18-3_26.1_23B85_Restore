@interface PLSBase64Encoder
+ (id)encoder;
+ (id)encoderForPhotoUUID;
- (PLSBase64Encoder)init;
- (id)encodeData:(id)data;
- (id)initForPhotoUUID;
@end

@implementation PLSBase64Encoder

- (id)encodeData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  v6 = [NSMutableData dataWithLength:4 * v5 / 3uLL + 3];
  mutableBytes = [v6 mutableBytes];
  bytes = [dataCopy bytes];
  if (!v5)
  {
    v19 = 0;
    goto LABEL_16;
  }

  v9 = 0;
  v10 = 0;
  LODWORD(v11) = 0;
  do
  {
    v13 = *bytes++;
    v12 = v13;
    v14 = v13 | (v11 << 8);
    if (++v9 == 3)
    {
      v9 = 0;
      v15 = (v11 << 8);
      v16 = &mutableBytes[v10];
      *v16 = aAbcdefghijklmn[(v15 >> 18) & 0x3F];
      v16[1] = aAbcdefghijklmn[(v15 >> 12) & 0x3F];
      v16[2] = aAbcdefghijklmn[(v14 >> 6) & 0x3F];
      v10 += 4;
      v16[3] = aAbcdefghijklmn[v12 & 0x3F];
      v11 = 0;
    }

    else
    {
      v11 = v14;
    }

    v5 = v5 - 1;
  }

  while (v5);
  if (v9 == 2)
  {
    v21 = &mutableBytes[v10];
    *v21 = aAbcdefghijklmn[v11 >> 10];
    v21[1] = aAbcdefghijklmn[(v11 >> 4) & 0x3F];
    v21[2] = aAbcdefghijklmn[4 * (v11 & 0xF)];
    photoUUID = self->_photoUUID;
    v19 = v10 + 3;
    if (photoUUID)
    {
      goto LABEL_16;
    }

    v20 = &mutableBytes[v10 + 3];
    goto LABEL_14;
  }

  if (v9 == 1)
  {
    v17 = &mutableBytes[v10];
    *v17 = aAbcdefghijklmn[v11 >> 2];
    v17[1] = aAbcdefghijklmn[16 * (v11 & 3)];
    v18 = self->_photoUUID;
    v19 = v10 + 2;
    if (v18)
    {
      goto LABEL_16;
    }

    mutableBytes[v10 + 2] = 61;
    v20 = v17 + 3;
LABEL_14:
    v19 = v10 + 4;
    *v20 = 61;
    goto LABEL_16;
  }

  v19 = v10;
LABEL_16:
  v23 = [[NSString alloc] initWithBytes:mutableBytes length:v19 encoding:1];

  return v23;
}

- (id)initForPhotoUUID
{
  v3.receiver = self;
  v3.super_class = PLSBase64Encoder;
  result = [(PLSBase64Encoder *)&v3 init];
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

- (PLSBase64Encoder)init
{
  v3.receiver = self;
  v3.super_class = PLSBase64Encoder;
  result = [(PLSBase64Encoder *)&v3 init];
  if (result)
  {
    result->_photoUUID = 0;
  }

  return result;
}

+ (id)encoderForPhotoUUID
{
  initForPhotoUUID = [[PLSBase64Encoder alloc] initForPhotoUUID];

  return initForPhotoUUID;
}

+ (id)encoder
{
  v2 = objc_alloc_init(PLSBase64Encoder);

  return v2;
}

@end