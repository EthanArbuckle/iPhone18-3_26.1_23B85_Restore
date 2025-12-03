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
  v19.receiver = self;
  v19.super_class = SFUCryptor;
  v12 = [(SFUCryptor *)&v19 init];
  if (!v12)
  {
    return v12;
  }

  if (!key)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015E928();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015E950();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"] lineNumber:48 isFatal:0 description:"invalid nil value for '%{public}s'", "key"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (![key keyType])
  {
    if (length != 16)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015EA00();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015EA28();
      }

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"] lineNumber:62 isFatal:0 description:"Incorrect iv length (%lu, should be %d)", length, 16];
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if (!iv)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015EAD8();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015EB00();
      }

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"] lineNumber:63 isFatal:0 description:"invalid nil value for '%{public}s'", "iv"];
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v14 = CCCryptorCreate(operation == 1, 0, paddingCopy, [key keyData], objc_msgSend(key, "keyLength"), iv, &v12->mCryptor);
    if (v14)
    {
      v15 = v14;
      v16 = +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015EBB0();
      }

      v17 = TSUAssertCat_log_t;
      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015EBD8(v16, v15, v17);
      }

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"] lineNumber:67 isFatal:0 description:"CCCryptorCreate() failed: %d", v15];
      goto LABEL_35;
    }

    v12->mBlockSize = 16;
  }

  if (!v12->mCryptor)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015EC90();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015ECB8();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"] lineNumber:79 isFatal:0 description:"Failed to initialize SFUCommonCryptoCryptor."];
LABEL_35:
    +[TSUAssertionHandler logBacktraceThrottled];

    return 0;
  }

  v12->mOperation = operation;
  v13 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  v12->mOutputBuffer = v13;
  v12->mOutputBufferPos = v13;
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
  errorCopy2 = error;
  finishedCopy = finished;
  if (self->mOperation)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015ED40();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015ED54();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"] lineNumber:118 isFatal:0 description:"Decryption to stream not supported"];
    +[TSUAssertionHandler logBacktraceThrottled];
    errorCopy2 = error;
  }

  if (length)
  {
    while (1)
    {
      mCryptor = self->mCryptor;
      v16 = length >= 0x20000 - self->mBlockSize ? 0x20000 - self->mBlockSize : length;
      dataOutMoved = 0;
      v17 = CCCryptorUpdate(mCryptor, buffer, v16, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v17)
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
            +[TSUAssertionHandler _atomicIncrementAssertCount];
            if (TSUAssertCat_init_token != -1)
            {
              sub_10015EDDC();
            }

            if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              sub_10015EE04();
            }

            v29 = [NSString stringWithUTF8String:"[SFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
            v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"];
            v27 = v29;
            v28 = 140;
            goto LABEL_40;
          }

          *crc32 = crc32(*crc32, self->mOutputBuffer, dataOutMoved);
        }
      }

      buffer += v16;
      length -= v16;
      if (!length)
      {
        goto LABEL_17;
      }
    }

    if (!errorCopy2)
    {
      return 0;
    }

    v22 = NSOSStatusErrorDomain;
    v23 = v17;
    goto LABEL_44;
  }

LABEL_17:
  if (finishedCopy)
  {
    dataOutMoved = 0;
    mOutputBuffer = self->mOutputBuffer;
    if (CCCryptorFinal(self->mCryptor, mOutputBuffer, 0x20000uLL, &dataOutMoved) == -4301)
    {
      OutputLength = CCCryptorGetOutputLength(self->mCryptor, 0, 1);
      v20 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
      if (!v20)
      {
        if (!errorCopy2)
        {
          return 0;
        }

        v22 = NSOSStatusErrorDomain;
        v23 = -4301;
LABEL_44:
        *errorCopy2 = [NSError errorWithDomain:v22 code:v23 userInfo:0];
        return 0;
      }

      mOutputBuffer = v20;
      v21 = CCCryptorFinal(self->mCryptor, v20, OutputLength, &dataOutMoved);
      if (v21)
      {
        if (errorCopy2)
        {
          *errorCopy2 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v21 userInfo:0];
        }

        free(mOutputBuffer);
        return 0;
      }

      v24 = mOutputBuffer;
    }

    else
    {
      v24 = 0;
    }

    if (dataOutMoved)
    {
      [stream writeBuffer:mOutputBuffer size:?];
      if (crc32)
      {
        if (HIDWORD(dataOutMoved))
        {
          +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_10015EE8C();
          }

          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            sub_10015EEB4();
          }

          v25 = [NSString stringWithUTF8String:"[SFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
          v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"];
          v27 = v25;
          v28 = 180;
LABEL_40:
          [TSUAssertionHandler handleFailureInFunction:v27 file:v26 lineNumber:v28 isFatal:0 description:"overflow in cryptDataFromBuffer:length:toStream:finished:crc32:error:"];
          +[TSUAssertionHandler logBacktraceThrottled];
          if (!errorCopy2)
          {
            return 0;
          }

          v22 = NSOSStatusErrorDomain;
          v23 = -4302;
          goto LABEL_44;
        }

        *crc32 = crc32(*crc32, mOutputBuffer, dataOutMoved);
      }
    }

    if (v24)
    {
      free(v24);
    }
  }

  return 1;
}

- (BOOL)cryptDataFromStream:(id)stream toBuffer:(char *)buffer length:(unint64_t)length bytesRead:(unint64_t *)read error:(id *)error
{
  if (self->mOperation != 1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015EF3C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015EF50();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptor cryptDataFromStream:toBuffer:length:bytesRead:error:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"] lineNumber:200 isFatal:0 description:"Encryption from stream not supported"];
    +[TSUAssertionHandler logBacktraceThrottled];
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
    v15 = self->mOutputBufferAvailable - lengthCopy;
    self->mOutputBufferPos += lengthCopy;
    self->mOutputBufferAvailable = v15;
    bufferCopy = &buffer[lengthCopy];
    length -= lengthCopy;
  }

  else
  {
    bufferCopy = buffer;
  }

  if (self->mFinished)
  {
    v17 = bufferCopy - buffer;
LABEL_15:
    *read = v17;
    return 1;
  }

  if (length)
  {
    errorCopy = error;
    while (1)
    {
      v18 = [stream readToBuffer:self->mDecryptionInputBuffer size:{0x20000 - self->mBlockSize, errorCopy}];
      if (!v18)
      {
        break;
      }

      dataOutMoved = 0;
      v19 = CCCryptorUpdate(self->mCryptor, self->mDecryptionInputBuffer, v18, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v19)
      {
        error = errorCopy;
        goto LABEL_40;
      }

      v20 = dataOutMoved;
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
      self->mOutputBufferAvailable = v20 - lengthCopy2;
      v22 = length != 0;
      if (!length)
      {
        goto LABEL_27;
      }
    }

    v22 = 1;
LABEL_27:
    if (v18)
    {
      v22 = 0;
    }

    error = errorCopy;
  }

  else
  {
    v22 = 0;
  }

  if (bufferCopy != buffer && !v22)
  {
    *read = bufferCopy - buffer;
    return 1;
  }

  self->mFinished = 1;
  dataOutMoved = 0;
  v19 = CCCryptorFinal(self->mCryptor, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
  if (!v19)
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
    v25 = dataOutMoved - lengthCopy3;
    self->mOutputBufferPos = &self->mOutputBuffer[lengthCopy3];
    self->mOutputBufferAvailable = v25;
    v17 = &bufferCopy[lengthCopy3] - buffer;
    goto LABEL_15;
  }

LABEL_40:
  if (error)
  {
    *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:v19 userInfo:0];
  }

  return 0;
}

@end