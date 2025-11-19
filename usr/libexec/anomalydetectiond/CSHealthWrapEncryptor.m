@interface CSHealthWrapEncryptor
- (BOOL)_appendEncryptedBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)_finalizeCryptorWithError:(id *)a3;
- (BOOL)_startCryptorWithError:(id *)a3;
- (BOOL)_updateCryptorWithData:(id)a3 error:(id *)a4;
- (BOOL)_updateHeaderWithKey:(id)a3 iv:(id)a4 hmacKey:(id)a5 error:(id *)a6;
- (BOOL)_writeStream:(const char *)a3 length:(unint64_t)a4 hash:(BOOL)a5 error:(id *)a6;
- (BOOL)finalizeWithError:(id *)a3;
- (BOOL)startWithError:(id *)a3;
- (CSHealthWrapEncryptor)initWithOutputStream:(id)a3 certificate:(__SecCertificate *)a4 algorithm:(unsigned int)a5 options:(unsigned int)a6 keySize:(unsigned int)a7 uuid:(id)a8 studyUUID:(id)a9 compressionEnabled:(BOOL)a10;
- (__SecKey)_copyAndVerifyPublicKeyFromCertificate:(__SecCertificate *)a3 error:(id *)a4;
- (id)_encryptData:(id)a3 withCertificate:(__SecCertificate *)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation CSHealthWrapEncryptor

- (CSHealthWrapEncryptor)initWithOutputStream:(id)a3 certificate:(__SecCertificate *)a4 algorithm:(unsigned int)a5 options:(unsigned int)a6 keySize:(unsigned int)a7 uuid:(id)a8 studyUUID:(id)a9 compressionEnabled:(BOOL)a10
{
  v16 = a3;
  v17 = a8;
  v18 = a9;
  v22.receiver = self;
  v22.super_class = CSHealthWrapEncryptor;
  v19 = [(CSHealthWrapEncryptor *)&v22 init];
  if (v19)
  {
    if (!a4)
    {
      sub_100357614();
    }

    objc_storeStrong(&v19->_outputStream, a3);
    v19->_certificate = CFRetain(a4);
    v19->_algorithm = a5;
    v19->_options = a6;
    v19->_keySize = a7;
    v19->_cryptor = 0;
    objc_storeStrong(&v19->_uuid, a8);
    objc_storeStrong(&v19->_studyUUID, a9);
    v19->_hmacAlgorithm = 2;
    v19->_encryptedBytesCount = 0;
    v19->_compressionEnabled = a10;
  }

  return v19;
}

- (void)dealloc
{
  certificate = self->_certificate;
  if (certificate)
  {
    CFRelease(certificate);
    self->_certificate = 0;
  }

  cryptor = self->_cryptor;
  if (cryptor)
  {
    CCCryptorRelease(cryptor);
    self->_cryptor = 0;
  }

  v5.receiver = self;
  v5.super_class = CSHealthWrapEncryptor;
  [(CSHealthWrapEncryptor *)&v5 dealloc];
}

- (__SecKey)_copyAndVerifyPublicKeyFromCertificate:(__SecCertificate *)a3 error:(id *)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100357684();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  sub_1003576F8();
LABEL_3:
  v6 = SecCertificateCopyKey(a3);
  if (!v6)
  {
    [CSHealthWrapErrorHelper assignError:a4 code:1 format:@"No public key found in certificate"];
  }

  return v6;
}

- (id)_encryptData:(id)a3 withCertificate:(__SecCertificate *)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_14:
    sub_1003577E0();
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  sub_10035776C();
  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_15:
  sub_100357854();
LABEL_4:
  v9 = [(CSHealthWrapEncryptor *)self _copyAndVerifyPublicKeyFromCertificate:a4 error:a5];
  if (v9)
  {
    v10 = v9;
    error = 0;
    v11 = SecKeyCreateEncryptedData(v9, kSecKeyAlgorithmRSAEncryptionOAEPSHA1, v8, &error);
    v12 = v11;
    if (a5 && !v11)
    {
      *a5 = error;
    }

    CFRelease(v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_updateHeaderWithKey:(id)a3 iv:(id)a4 hmacKey:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_10035793C();
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1003578C8();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a6)
  {
    goto LABEL_4;
  }

LABEL_12:
  sub_1003579B0();
LABEL_4:
  v13 = +[(GPBMessage *)CSHWProtoMessageKey];
  [v13 setKey:v10];
  [v13 setIv:v11];
  v14 = [v13 data];
  v15 = [(CSHealthWrapEncryptor *)self _encryptData:v14 withCertificate:self->_certificate error:a6];

  if (v15)
  {
    [(CSHWProtoMessageHeader *)self->_header setEncryptedMessageKey:v15];
    v16 = [(CSHealthWrapEncryptor *)self _encryptData:v12 withCertificate:self->_certificate error:a6];
    v17 = v16 != 0;
    if (v16)
    {
      [(CSHWProtoMessageHeader *)self->_header setEncryptedHmackey:v16];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_startCryptorWithError:(id *)a3
{
  self->_encryptedBytesCount = 0;
  cryptorRef = 0;
  v5 = [NSMutableData dataWithLength:16];
  if (!SecRandomCopyBytes(kSecRandomDefault, [v5 length], objc_msgSend(v5, "mutableBytes")))
  {
    v7 = [NSMutableData dataWithLength:self->_keySize];
    if (SecRandomCopyBytes(kSecRandomDefault, self->_keySize, [v7 mutableBytes]))
    {
      [CSHealthWrapErrorHelper assignError:a3 code:1 format:@"Key generation: %d", *__error()];
      v6 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v8 = [NSMutableData dataWithLength:32];
    if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, [v8 mutableBytes]))
    {
      [CSHealthWrapErrorHelper assignError:a3 code:1 format:@"HMAC key generation: %d", *__error()];
    }

    else if ([(CSHealthWrapEncryptor *)self _updateHeaderWithKey:v7 iv:v5 hmacKey:v8 error:a3])
    {
      CCHmacInit(&self->_hmacContext, self->_hmacAlgorithm, [v8 bytes], 0x20uLL);
      CCHmacUpdate(&self->_hmacContext, [v5 bytes], objc_msgSend(v5, "length"));
      v9 = [(CSHWProtoMessageHeader *)self->_header studyUuid];
      if ([v9 length])
      {
        CCHmacUpdate(&self->_hmacContext, [v9 bytes], objc_msgSend(v9, "length"));
      }

      data = bswap32([(CSHWProtoMessageHeader *)self->_header trailingHmaclength]);
      v12 = bswap32([(CSHWProtoMessageHeader *)self->_header trailingShalength]);
      CCHmacUpdate(&self->_hmacContext, &data, 4uLL);
      CCHmacUpdate(&self->_hmacContext, &v12, 4uLL);
      v10 = CCCryptorCreate(0, self->_algorithm, self->_options, [v7 bytes], self->_keySize, objc_msgSend(v5, "bytes"), &cryptorRef);
      v6 = v10 == 0;
      if (v10)
      {
        [CSHealthWrapErrorHelper assignError:a3 code:1 format:@"cryptor create: %d", v10];
      }

      else
      {
        self->_cryptor = cryptorRef;
      }

      goto LABEL_13;
    }

    v6 = 0;
LABEL_13:

    goto LABEL_14;
  }

  [CSHealthWrapErrorHelper assignError:a3 code:1 format:@"IV generation: %d", *__error()];
  v6 = 0;
LABEL_15:

  return v6;
}

- (BOOL)startWithError:(id *)a3
{
  CC_SHA256_Init(&self->_sha256Context);
  v5 = +[(GPBMessage *)CSHWProtoMessageHeader];
  header = self->_header;
  self->_header = v5;

  [(CSHWProtoMessageHeader *)self->_header setVersion:3];
  v16[0] = 0;
  v16[1] = 0;
  [(NSUUID *)self->_uuid getUUIDBytes:v16];
  v7 = [NSData dataWithBytes:v16 length:16];
  [(CSHWProtoMessageHeader *)self->_header setUploadUuid:v7];

  [(NSUUID *)self->_studyUUID getUUIDBytes:v16];
  v8 = [NSData dataWithBytes:v16 length:16];
  [(CSHWProtoMessageHeader *)self->_header setStudyUuid:v8];

  [(CSHWProtoMessageHeader *)self->_header setTrailingHmaclength:32];
  [(CSHWProtoMessageHeader *)self->_header setTrailingShalength:32];
  [(CSHWProtoMessageHeader *)self->_header setCompressed:self->_compressionEnabled];
  v9 = [NSMutableData dataWithLength:0x2000];
  buffer = self->_buffer;
  self->_buffer = v9;

  if (self->_buffer && self->_header)
  {
    v11 = SecCertificateCopyData(self->_certificate);
    if (v11)
    {
      [(CSHWProtoMessageHeader *)self->_header setEncryptionIdentity:v11];
      if ([(CSHealthWrapEncryptor *)self _startCryptorWithError:a3])
      {
        v12 = [(GPBMessage *)self->_header data];
        v15 = bswap32([v12 length]);
        if ([(CSHealthWrapEncryptor *)self _writeStream:&v15 length:4 hash:1 error:a3])
        {
          v13 = -[CSHealthWrapEncryptor _writeStream:length:hash:error:](self, "_writeStream:length:hash:error:", [v12 bytes], objc_msgSend(v12, "length"), 1, a3);
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      [CSHealthWrapErrorHelper assignError:a3 code:1 format:@"Could not copy certificate"];
    }

    v13 = 0;
LABEL_12:

    return v13;
  }

  [CSHealthWrapErrorHelper assignError:a3 code:1 format:@"Could not allocate buffer or header"];
  return 0;
}

- (BOOL)_writeStream:(const char *)a3 length:(unint64_t)a4 hash:(BOOL)a5 error:(id *)a6
{
  v7 = a4;
  v8 = a3;
  if (a5)
  {
    if (a4 >= 0xFFFFFFFF)
    {
      sub_100357A50();
    }

    CC_SHA256_Update(&self->_sha256Context, a3, a4);
  }

  if (!v7)
  {
    return 1;
  }

  while (1)
  {
    v10 = [(NSOutputStream *)self->_outputStream write:v8 maxLength:v7];
    if (v10 <= 0)
    {
      break;
    }

    v11 = v7 >= v10;
    v7 -= v10;
    if (!v11)
    {
      sub_100357A24();
    }

    v8 += v10;
    if (!v7)
    {
      return 1;
    }
  }

  if (!a6)
  {
    return 0;
  }

  v13 = [(NSOutputStream *)self->_outputStream streamError];
  v14 = v13;
  result = 0;
  *a6 = v13;
  return result;
}

- (BOOL)_appendEncryptedBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  CCHmacUpdate(&self->_hmacContext, a3, a4);
  self->_encryptedBytesCount += a4;

  return [(CSHealthWrapEncryptor *)self _writeStream:a3 length:a4 hash:1 error:a5];
}

- (BOOL)_updateCryptorWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 length];
  v8 = [v6 bytes];
  if ([v6 length])
  {
    v9 = 0;
    while (1)
    {
      v10 = &v7[-v9] >= 0x1FF0 ? 8176 : &v7[-v9];
      dataOutMoved = 0;
      v11 = CCCryptorUpdate(self->_cryptor, &v8[v9], v10, [(NSMutableData *)self->_buffer mutableBytes], 0x2000uLL, &dataOutMoved);
      if (v11)
      {
        break;
      }

      if (dataOutMoved)
      {
        v12 = [(NSMutableData *)self->_buffer bytes];
        if (![(CSHealthWrapEncryptor *)self _appendEncryptedBytes:v12 length:dataOutMoved error:a4])
        {
          goto LABEL_12;
        }
      }

      v9 += v10;
      if (v9 >= [v6 length])
      {
        goto LABEL_10;
      }
    }

    [CSHealthWrapErrorHelper assignError:a4 code:1 format:@"crpytor update: %d", v11];
LABEL_12:
    v13 = 0;
  }

  else
  {
LABEL_10:
    v13 = 1;
  }

  return v13;
}

- (BOOL)_finalizeCryptorWithError:(id *)a3
{
  dataOutMoved = 0;
  v5 = CCCryptorFinal(self->_cryptor, [(NSMutableData *)self->_buffer mutableBytes], 0x2000uLL, &dataOutMoved);
  if (v5)
  {
    [CSHealthWrapErrorHelper assignError:a3 code:1 format:@"crpytor update: %d", v5];
    LOBYTE(v6) = 0;
  }

  else if (!dataOutMoved || (v7 = [(NSMutableData *)self->_buffer bytes], v6 = [(CSHealthWrapEncryptor *)self _appendEncryptedBytes:v7 length:dataOutMoved error:a3]))
  {
    data = bswap64(self->_encryptedBytesCount);
    CCHmacUpdate(&self->_hmacContext, &data, 8uLL);
    LOBYTE(v6) = [(CSHealthWrapEncryptor *)self _writeStream:&data length:8 hash:1 error:a3];
  }

  return v6;
}

- (BOOL)finalizeWithError:(id *)a3
{
  v5 = [(CSHealthWrapEncryptor *)self _finalizeCryptorWithError:?];
  if (v5)
  {
    CCHmacFinal(&self->_hmacContext, macOut);
    v5 = [(CSHealthWrapEncryptor *)self _writeStream:macOut length:32 hash:1 error:a3];
    if (v5)
    {
      CC_SHA256_Final(md, &self->_sha256Context);
      LOBYTE(v5) = [(CSHealthWrapEncryptor *)self _writeStream:md length:32 hash:0 error:a3];
    }
  }

  return v5;
}

@end