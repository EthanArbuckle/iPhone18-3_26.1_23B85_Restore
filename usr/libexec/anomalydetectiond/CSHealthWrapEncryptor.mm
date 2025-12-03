@interface CSHealthWrapEncryptor
- (BOOL)_appendEncryptedBytes:(const char *)bytes length:(unint64_t)length error:(id *)error;
- (BOOL)_finalizeCryptorWithError:(id *)error;
- (BOOL)_startCryptorWithError:(id *)error;
- (BOOL)_updateCryptorWithData:(id)data error:(id *)error;
- (BOOL)_updateHeaderWithKey:(id)key iv:(id)iv hmacKey:(id)hmacKey error:(id *)error;
- (BOOL)_writeStream:(const char *)stream length:(unint64_t)length hash:(BOOL)hash error:(id *)error;
- (BOOL)finalizeWithError:(id *)error;
- (BOOL)startWithError:(id *)error;
- (CSHealthWrapEncryptor)initWithOutputStream:(id)stream certificate:(__SecCertificate *)certificate algorithm:(unsigned int)algorithm options:(unsigned int)options keySize:(unsigned int)size uuid:(id)uuid studyUUID:(id)d compressionEnabled:(BOOL)self0;
- (__SecKey)_copyAndVerifyPublicKeyFromCertificate:(__SecCertificate *)certificate error:(id *)error;
- (id)_encryptData:(id)data withCertificate:(__SecCertificate *)certificate error:(id *)error;
- (void)dealloc;
@end

@implementation CSHealthWrapEncryptor

- (CSHealthWrapEncryptor)initWithOutputStream:(id)stream certificate:(__SecCertificate *)certificate algorithm:(unsigned int)algorithm options:(unsigned int)options keySize:(unsigned int)size uuid:(id)uuid studyUUID:(id)d compressionEnabled:(BOOL)self0
{
  streamCopy = stream;
  uuidCopy = uuid;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = CSHealthWrapEncryptor;
  v19 = [(CSHealthWrapEncryptor *)&v22 init];
  if (v19)
  {
    if (!certificate)
    {
      sub_100357614();
    }

    objc_storeStrong(&v19->_outputStream, stream);
    v19->_certificate = CFRetain(certificate);
    v19->_algorithm = algorithm;
    v19->_options = options;
    v19->_keySize = size;
    v19->_cryptor = 0;
    objc_storeStrong(&v19->_uuid, uuid);
    objc_storeStrong(&v19->_studyUUID, d);
    v19->_hmacAlgorithm = 2;
    v19->_encryptedBytesCount = 0;
    v19->_compressionEnabled = enabled;
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

- (__SecKey)_copyAndVerifyPublicKeyFromCertificate:(__SecCertificate *)certificate error:(id *)error
{
  if (certificate)
  {
    if (error)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100357684();
    if (error)
    {
      goto LABEL_3;
    }
  }

  sub_1003576F8();
LABEL_3:
  v6 = SecCertificateCopyKey(certificate);
  if (!v6)
  {
    [CSHealthWrapErrorHelper assignError:error code:1 format:@"No public key found in certificate"];
  }

  return v6;
}

- (id)_encryptData:(id)data withCertificate:(__SecCertificate *)certificate error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    if (certificate)
    {
      goto LABEL_3;
    }

LABEL_14:
    sub_1003577E0();
    if (error)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  sub_10035776C();
  if (!certificate)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (error)
  {
    goto LABEL_4;
  }

LABEL_15:
  sub_100357854();
LABEL_4:
  v9 = [(CSHealthWrapEncryptor *)self _copyAndVerifyPublicKeyFromCertificate:certificate error:error];
  if (v9)
  {
    v10 = v9;
    error = 0;
    v11 = SecKeyCreateEncryptedData(v9, kSecKeyAlgorithmRSAEncryptionOAEPSHA1, dataCopy, &error);
    v12 = v11;
    if (error && !v11)
    {
      *error = error;
    }

    CFRelease(v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_updateHeaderWithKey:(id)key iv:(id)iv hmacKey:(id)hmacKey error:(id *)error
{
  keyCopy = key;
  ivCopy = iv;
  hmacKeyCopy = hmacKey;
  if (keyCopy)
  {
    if (ivCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_10035793C();
    if (error)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  sub_1003578C8();
  if (!ivCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (error)
  {
    goto LABEL_4;
  }

LABEL_12:
  sub_1003579B0();
LABEL_4:
  v13 = +[(GPBMessage *)CSHWProtoMessageKey];
  [v13 setKey:keyCopy];
  [v13 setIv:ivCopy];
  data = [v13 data];
  v15 = [(CSHealthWrapEncryptor *)self _encryptData:data withCertificate:self->_certificate error:error];

  if (v15)
  {
    [(CSHWProtoMessageHeader *)self->_header setEncryptedMessageKey:v15];
    v16 = [(CSHealthWrapEncryptor *)self _encryptData:hmacKeyCopy withCertificate:self->_certificate error:error];
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

- (BOOL)_startCryptorWithError:(id *)error
{
  self->_encryptedBytesCount = 0;
  cryptorRef = 0;
  v5 = [NSMutableData dataWithLength:16];
  if (!SecRandomCopyBytes(kSecRandomDefault, [v5 length], objc_msgSend(v5, "mutableBytes")))
  {
    v7 = [NSMutableData dataWithLength:self->_keySize];
    if (SecRandomCopyBytes(kSecRandomDefault, self->_keySize, [v7 mutableBytes]))
    {
      [CSHealthWrapErrorHelper assignError:error code:1 format:@"Key generation: %d", *__error()];
      v6 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v8 = [NSMutableData dataWithLength:32];
    if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, [v8 mutableBytes]))
    {
      [CSHealthWrapErrorHelper assignError:error code:1 format:@"HMAC key generation: %d", *__error()];
    }

    else if ([(CSHealthWrapEncryptor *)self _updateHeaderWithKey:v7 iv:v5 hmacKey:v8 error:error])
    {
      CCHmacInit(&self->_hmacContext, self->_hmacAlgorithm, [v8 bytes], 0x20uLL);
      CCHmacUpdate(&self->_hmacContext, [v5 bytes], objc_msgSend(v5, "length"));
      studyUuid = [(CSHWProtoMessageHeader *)self->_header studyUuid];
      if ([studyUuid length])
      {
        CCHmacUpdate(&self->_hmacContext, [studyUuid bytes], objc_msgSend(studyUuid, "length"));
      }

      data = bswap32([(CSHWProtoMessageHeader *)self->_header trailingHmaclength]);
      v12 = bswap32([(CSHWProtoMessageHeader *)self->_header trailingShalength]);
      CCHmacUpdate(&self->_hmacContext, &data, 4uLL);
      CCHmacUpdate(&self->_hmacContext, &v12, 4uLL);
      v10 = CCCryptorCreate(0, self->_algorithm, self->_options, [v7 bytes], self->_keySize, objc_msgSend(v5, "bytes"), &cryptorRef);
      v6 = v10 == 0;
      if (v10)
      {
        [CSHealthWrapErrorHelper assignError:error code:1 format:@"cryptor create: %d", v10];
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

  [CSHealthWrapErrorHelper assignError:error code:1 format:@"IV generation: %d", *__error()];
  v6 = 0;
LABEL_15:

  return v6;
}

- (BOOL)startWithError:(id *)error
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
      if ([(CSHealthWrapEncryptor *)self _startCryptorWithError:error])
      {
        data = [(GPBMessage *)self->_header data];
        v15 = bswap32([data length]);
        if ([(CSHealthWrapEncryptor *)self _writeStream:&v15 length:4 hash:1 error:error])
        {
          v13 = -[CSHealthWrapEncryptor _writeStream:length:hash:error:](self, "_writeStream:length:hash:error:", [data bytes], objc_msgSend(data, "length"), 1, error);
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
      [CSHealthWrapErrorHelper assignError:error code:1 format:@"Could not copy certificate"];
    }

    v13 = 0;
LABEL_12:

    return v13;
  }

  [CSHealthWrapErrorHelper assignError:error code:1 format:@"Could not allocate buffer or header"];
  return 0;
}

- (BOOL)_writeStream:(const char *)stream length:(unint64_t)length hash:(BOOL)hash error:(id *)error
{
  lengthCopy = length;
  streamCopy = stream;
  if (hash)
  {
    if (length >= 0xFFFFFFFF)
    {
      sub_100357A50();
    }

    CC_SHA256_Update(&self->_sha256Context, stream, length);
  }

  if (!lengthCopy)
  {
    return 1;
  }

  while (1)
  {
    v10 = [(NSOutputStream *)self->_outputStream write:streamCopy maxLength:lengthCopy];
    if (v10 <= 0)
    {
      break;
    }

    v11 = lengthCopy >= v10;
    lengthCopy -= v10;
    if (!v11)
    {
      sub_100357A24();
    }

    streamCopy += v10;
    if (!lengthCopy)
    {
      return 1;
    }
  }

  if (!error)
  {
    return 0;
  }

  streamError = [(NSOutputStream *)self->_outputStream streamError];
  v14 = streamError;
  result = 0;
  *error = streamError;
  return result;
}

- (BOOL)_appendEncryptedBytes:(const char *)bytes length:(unint64_t)length error:(id *)error
{
  CCHmacUpdate(&self->_hmacContext, bytes, length);
  self->_encryptedBytesCount += length;

  return [(CSHealthWrapEncryptor *)self _writeStream:bytes length:length hash:1 error:error];
}

- (BOOL)_updateCryptorWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [dataCopy length];
  bytes = [dataCopy bytes];
  if ([dataCopy length])
  {
    v9 = 0;
    while (1)
    {
      v10 = &v7[-v9] >= 0x1FF0 ? 8176 : &v7[-v9];
      dataOutMoved = 0;
      v11 = CCCryptorUpdate(self->_cryptor, &bytes[v9], v10, [(NSMutableData *)self->_buffer mutableBytes], 0x2000uLL, &dataOutMoved);
      if (v11)
      {
        break;
      }

      if (dataOutMoved)
      {
        bytes2 = [(NSMutableData *)self->_buffer bytes];
        if (![(CSHealthWrapEncryptor *)self _appendEncryptedBytes:bytes2 length:dataOutMoved error:error])
        {
          goto LABEL_12;
        }
      }

      v9 += v10;
      if (v9 >= [dataCopy length])
      {
        goto LABEL_10;
      }
    }

    [CSHealthWrapErrorHelper assignError:error code:1 format:@"crpytor update: %d", v11];
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

- (BOOL)_finalizeCryptorWithError:(id *)error
{
  dataOutMoved = 0;
  v5 = CCCryptorFinal(self->_cryptor, [(NSMutableData *)self->_buffer mutableBytes], 0x2000uLL, &dataOutMoved);
  if (v5)
  {
    [CSHealthWrapErrorHelper assignError:error code:1 format:@"crpytor update: %d", v5];
    LOBYTE(v6) = 0;
  }

  else if (!dataOutMoved || (v7 = [(NSMutableData *)self->_buffer bytes], v6 = [(CSHealthWrapEncryptor *)self _appendEncryptedBytes:v7 length:dataOutMoved error:error]))
  {
    data = bswap64(self->_encryptedBytesCount);
    CCHmacUpdate(&self->_hmacContext, &data, 8uLL);
    LOBYTE(v6) = [(CSHealthWrapEncryptor *)self _writeStream:&data length:8 hash:1 error:error];
  }

  return v6;
}

- (BOOL)finalizeWithError:(id *)error
{
  v5 = [(CSHealthWrapEncryptor *)self _finalizeCryptorWithError:?];
  if (v5)
  {
    CCHmacFinal(&self->_hmacContext, macOut);
    v5 = [(CSHealthWrapEncryptor *)self _writeStream:macOut length:32 hash:1 error:error];
    if (v5)
    {
      CC_SHA256_Final(md, &self->_sha256Context);
      LOBYTE(v5) = [(CSHealthWrapEncryptor *)self _writeStream:md length:32 hash:0 error:error];
    }
  }

  return v5;
}

@end