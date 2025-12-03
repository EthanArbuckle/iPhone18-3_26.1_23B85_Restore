@interface SFUCryptor
- (BOOL)cryptDataFromBuffer:(const char *)buffer length:(unint64_t)length toStream:(id)stream finished:(BOOL)finished crc32:(unsigned int *)crc32 error:(id *)error;
- (BOOL)cryptDataFromStream:(id)stream toBuffer:(char *)buffer length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error;
- (SFUCryptor)initWithKey:(id)key operation:(int)operation iv:(const char *)iv ivLength:(unint64_t)length usePKCS7Padding:(BOOL)padding;
- (void)dealloc;
@end

@implementation SFUCryptor

- (SFUCryptor)initWithKey:(id)key operation:(int)operation iv:(const char *)iv ivLength:(unint64_t)length usePKCS7Padding:(BOOL)padding
{
  paddingCopy = padding;
  v28.receiver = self;
  v28.super_class = SFUCryptor;
  v12 = [(SFUCryptor *)&v28 init];
  if (!v12)
  {
    return v12;
  }

  if (!key)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 49, @"invalid nil value for '%s'", "key"}];
  }

  if (![key keyType])
  {
    if (length != 16)
    {
      v16 = +[TSUAssertionHandler currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 66, @"Incorrect iv length (%lu, should be %d)", length, 16}];
    }

    if (!iv)
    {
      v18 = +[TSUAssertionHandler currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 67, @"invalid nil value for '%s'", "iv"}];
    }

    v20 = CCCryptorCreate(operation == 1, 0, paddingCopy, [key keyData], objc_msgSend(key, "keyLength"), iv, &v12->mCryptor);
    if (v20)
    {
      v21 = v20;
      v22 = +[TSUAssertionHandler currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 72, @"CCCryptorCreate() failed: %d", v21}];
LABEL_15:

      return 0;
    }

    v12->mBlockSize = 16;
  }

  if (!v12->mCryptor)
  {
    v24 = +[TSUAssertionHandler currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
    [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 85, @"Failed to initialize SFUCommonCryptoCryptor.", v27}];
    goto LABEL_15;
  }

  v12->mOperation = operation;
  v15 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  v12->mOutputBuffer = v15;
  v12->mOutputBufferPos = v15;
  if (v12->mOperation == 1)
  {
    v12->mDecryptionInputBuffer = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  }

  return v12;
}

- (void)dealloc
{
  mCryptor = self->mCryptor;
  if (mCryptor)
  {
    CCCryptorRelease(mCryptor);
    self->mCryptor = 0;
  }

  free(self->mOutputBuffer);
  mDecryptionInputBuffer = self->mDecryptionInputBuffer;
  if (mDecryptionInputBuffer)
  {
    free(mDecryptionInputBuffer);
  }

  v5.receiver = self;
  v5.super_class = SFUCryptor;
  [(SFUCryptor *)&v5 dealloc];
}

- (BOOL)cryptDataFromBuffer:(const char *)buffer length:(unint64_t)length toStream:(id)stream finished:(BOOL)finished crc32:(unsigned int *)crc32 error:(id *)error
{
  finishedCopy = finished;
  if (self->mOperation)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 130, @"Decryption to stream not supported"}];
  }

  if (length)
  {
    while (1)
    {
      mCryptor = self->mCryptor;
      v18 = length >= 0x20000 - self->mBlockSize ? 0x20000 - self->mBlockSize : length;
      dataOutMoved = 0;
      v19 = CCCryptorUpdate(mCryptor, buffer, v18, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v19)
      {
        break;
      }

      if (dataOutMoved)
      {
        [stream writeBuffer:self->mOutputBuffer size:?];
        if (crc32)
        {
          if (HIDWORD(dataOutMoved))
          {
            v34 = +[TSUAssertionHandler currentHandler];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"];
            v31 = v34;
            v32 = v35;
            v33 = 157;
            goto LABEL_28;
          }

          *crc32 = crc32(*crc32, self->mOutputBuffer, dataOutMoved);
        }
      }

      buffer += v18;
      length -= v18;
      if (!length)
      {
        goto LABEL_13;
      }
    }

    if (!error)
    {
      return 0;
    }

    v24 = *MEMORY[0x277CCA590];
    v25 = v19;
    v26 = MEMORY[0x277CCA9B8];
    goto LABEL_32;
  }

LABEL_13:
  if (finishedCopy)
  {
    dataOutMoved = 0;
    mOutputBuffer = self->mOutputBuffer;
    if (CCCryptorFinal(self->mCryptor, mOutputBuffer, 0x20000uLL, &dataOutMoved) == -4301)
    {
      OutputLength = CCCryptorGetOutputLength(self->mCryptor, 0, 1);
      v22 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
      if (!v22)
      {
        if (!error)
        {
          return 0;
        }

        v26 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CCA590];
        v25 = -4301;
LABEL_32:
        *error = [v26 errorWithDomain:v24 code:v25 userInfo:0];
        return 0;
      }

      mOutputBuffer = v22;
      v23 = CCCryptorFinal(self->mCryptor, v22, OutputLength, &dataOutMoved);
      if (v23)
      {
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v23 userInfo:0];
        }

        free(mOutputBuffer);
        return 0;
      }

      v27 = mOutputBuffer;
    }

    else
    {
      v27 = 0;
    }

    if (dataOutMoved)
    {
      [stream writeBuffer:mOutputBuffer size:?];
      if (crc32)
      {
        if (HIDWORD(dataOutMoved))
        {
          v28 = +[TSUAssertionHandler currentHandler];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"];
          v31 = v28;
          v32 = v29;
          v33 = 206;
LABEL_28:
          [v31 handleFailureInFunction:v32 file:v30 lineNumber:v33 description:@"overflow in cryptDataFromBuffer:length:toStream:finished:crc32:error:"];
          if (!error)
          {
            return 0;
          }

          v26 = MEMORY[0x277CCA9B8];
          v24 = *MEMORY[0x277CCA590];
          v25 = -4302;
          goto LABEL_32;
        }

        *crc32 = crc32(*crc32, mOutputBuffer, dataOutMoved);
      }
    }

    if (v27)
    {
      free(v27);
    }
  }

  return 1;
}

- (BOOL)cryptDataFromStream:(id)stream toBuffer:(char *)buffer length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error
{
  if (self->mOperation != 1)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor cryptDataFromStream:toBuffer:length:bytesRead:error:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 229, @"Encryption from stream not supported"}];
  }

  mOutputBufferAvailable = self->mOutputBufferAvailable;
  if (mOutputBufferAvailable)
  {
    if (mOutputBufferAvailable >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = self->mOutputBufferAvailable;
    }

    memcpy(buffer, self->mOutputBufferPos, lengthCopy);
    v17 = self->mOutputBufferAvailable - lengthCopy;
    self->mOutputBufferPos += lengthCopy;
    self->mOutputBufferAvailable = v17;
    bufferCopy = &buffer[lengthCopy];
    length -= lengthCopy;
  }

  else
  {
    bufferCopy = buffer;
  }

  if (self->mFinished)
  {
    v19 = bufferCopy - buffer;
LABEL_11:
    *read = v19;
    return 1;
  }

  if (length)
  {
    errorCopy = error;
    while (1)
    {
      v20 = [stream readToBuffer:self->mDecryptionInputBuffer size:{0x20000 - self->mBlockSize, errorCopy}];
      if (!v20)
      {
        break;
      }

      dataOutMoved = 0;
      v21 = CCCryptorUpdate(self->mCryptor, self->mDecryptionInputBuffer, v20, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v21)
      {
        error = errorCopy;
        goto LABEL_36;
      }

      v22 = dataOutMoved;
      if (length >= dataOutMoved)
      {
        lengthCopy2 = dataOutMoved;
      }

      else
      {
        lengthCopy2 = length;
      }

      memcpy(bufferCopy, self->mOutputBuffer, lengthCopy2);
      bufferCopy += lengthCopy2;
      length -= lengthCopy2;
      self->mOutputBufferPos = &self->mOutputBuffer[lengthCopy2];
      self->mOutputBufferAvailable = v22 - lengthCopy2;
      v24 = length != 0;
      if (!length)
      {
        goto LABEL_23;
      }
    }

    v24 = 1;
LABEL_23:
    if (v20)
    {
      v24 = 0;
    }

    error = errorCopy;
  }

  else
  {
    v24 = 0;
  }

  if (bufferCopy != buffer && !v24)
  {
    *read = bufferCopy - buffer;
    return 1;
  }

  self->mFinished = 1;
  dataOutMoved = 0;
  v21 = CCCryptorFinal(self->mCryptor, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
  if (!v21)
  {
    if (length >= dataOutMoved)
    {
      lengthCopy3 = dataOutMoved;
    }

    else
    {
      lengthCopy3 = length;
    }

    memcpy(bufferCopy, self->mOutputBuffer, lengthCopy3);
    v27 = dataOutMoved - lengthCopy3;
    self->mOutputBufferPos = &self->mOutputBuffer[lengthCopy3];
    self->mOutputBufferAvailable = v27;
    v19 = &bufferCopy[lengthCopy3] - buffer;
    goto LABEL_11;
  }

LABEL_36:
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v21 userInfo:0];
  }

  return 0;
}

@end