@interface SFUCryptor
- (BOOL)cryptDataFromBuffer:(const char *)a3 length:(unint64_t)a4 toStream:(id)a5 finished:(BOOL)a6 crc32:(unsigned int *)a7 error:(id *)a8;
- (BOOL)cryptDataFromStream:(id)a3 toBuffer:(char *)a4 length:(unint64_t)a5 bytesRead:(unint64_t *)a6 error:(id *)a7;
- (SFUCryptor)initWithKey:(id)a3 operation:(int)a4 iv:(const char *)a5 ivLength:(unint64_t)a6 usePKCS7Padding:(BOOL)a7;
- (void)dealloc;
@end

@implementation SFUCryptor

- (SFUCryptor)initWithKey:(id)a3 operation:(int)a4 iv:(const char *)a5 ivLength:(unint64_t)a6 usePKCS7Padding:(BOOL)a7
{
  v7 = a7;
  v19.receiver = self;
  v19.super_class = SFUCryptor;
  v12 = [(SFUCryptor *)&v19 init];
  if (!v12)
  {
    return v12;
  }

  if (!a3)
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

  if (![a3 keyType])
  {
    if (a6 != 16)
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

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUCryptor.m"] lineNumber:62 isFatal:0 description:"Incorrect iv length (%lu, should be %d)", a6, 16];
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if (!a5)
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

    v14 = CCCryptorCreate(a4 == 1, 0, v7, [a3 keyData], objc_msgSend(a3, "keyLength"), a5, &v12->mCryptor);
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

  v12->mOperation = a4;
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

- (BOOL)cryptDataFromBuffer:(const char *)a3 length:(unint64_t)a4 toStream:(id)a5 finished:(BOOL)a6 crc32:(unsigned int *)a7 error:(id *)a8
{
  v8 = a8;
  v10 = a6;
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
    v8 = a8;
  }

  if (a4)
  {
    while (1)
    {
      mCryptor = self->mCryptor;
      v16 = a4 >= 0x20000 - self->mBlockSize ? 0x20000 - self->mBlockSize : a4;
      dataOutMoved = 0;
      v17 = CCCryptorUpdate(mCryptor, a3, v16, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v17)
      {
        break;
      }

      if (dataOutMoved)
      {
        [a5 writeBuffer:self->mOutputBuffer size:?];
        if (a7)
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

          *a7 = crc32(*a7, self->mOutputBuffer, dataOutMoved);
        }
      }

      a3 += v16;
      a4 -= v16;
      if (!a4)
      {
        goto LABEL_17;
      }
    }

    if (!v8)
    {
      return 0;
    }

    v22 = NSOSStatusErrorDomain;
    v23 = v17;
    goto LABEL_44;
  }

LABEL_17:
  if (v10)
  {
    dataOutMoved = 0;
    mOutputBuffer = self->mOutputBuffer;
    if (CCCryptorFinal(self->mCryptor, mOutputBuffer, 0x20000uLL, &dataOutMoved) == -4301)
    {
      OutputLength = CCCryptorGetOutputLength(self->mCryptor, 0, 1);
      v20 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
      if (!v20)
      {
        if (!v8)
        {
          return 0;
        }

        v22 = NSOSStatusErrorDomain;
        v23 = -4301;
LABEL_44:
        *v8 = [NSError errorWithDomain:v22 code:v23 userInfo:0];
        return 0;
      }

      mOutputBuffer = v20;
      v21 = CCCryptorFinal(self->mCryptor, v20, OutputLength, &dataOutMoved);
      if (v21)
      {
        if (v8)
        {
          *v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v21 userInfo:0];
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
      [a5 writeBuffer:mOutputBuffer size:?];
      if (a7)
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
          if (!v8)
          {
            return 0;
          }

          v22 = NSOSStatusErrorDomain;
          v23 = -4302;
          goto LABEL_44;
        }

        *a7 = crc32(*a7, mOutputBuffer, dataOutMoved);
      }
    }

    if (v24)
    {
      free(v24);
    }
  }

  return 1;
}

- (BOOL)cryptDataFromStream:(id)a3 toBuffer:(char *)a4 length:(unint64_t)a5 bytesRead:(unint64_t *)a6 error:(id *)a7
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
    if (mOutputBufferAvailable >= a5)
    {
      v14 = a5;
    }

    else
    {
      v14 = self->mOutputBufferAvailable;
    }

    memcpy(a4, self->mOutputBufferPos, v14);
    v15 = self->mOutputBufferAvailable - v14;
    self->mOutputBufferPos += v14;
    self->mOutputBufferAvailable = v15;
    v16 = &a4[v14];
    a5 -= v14;
  }

  else
  {
    v16 = a4;
  }

  if (self->mFinished)
  {
    v17 = v16 - a4;
LABEL_15:
    *a6 = v17;
    return 1;
  }

  if (a5)
  {
    v26 = a7;
    while (1)
    {
      v18 = [a3 readToBuffer:self->mDecryptionInputBuffer size:{0x20000 - self->mBlockSize, v26}];
      if (!v18)
      {
        break;
      }

      dataOutMoved = 0;
      v19 = CCCryptorUpdate(self->mCryptor, self->mDecryptionInputBuffer, v18, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v19)
      {
        a7 = v26;
        goto LABEL_40;
      }

      v20 = dataOutMoved;
      if (a5 >= dataOutMoved)
      {
        v21 = dataOutMoved;
      }

      else
      {
        v21 = a5;
      }

      memcpy(v16, self->mOutputBuffer, v21);
      v16 += v21;
      a5 -= v21;
      self->mOutputBufferPos = &self->mOutputBuffer[v21];
      self->mOutputBufferAvailable = v20 - v21;
      v22 = a5 != 0;
      if (!a5)
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

    a7 = v26;
  }

  else
  {
    v22 = 0;
  }

  if (v16 != a4 && !v22)
  {
    *a6 = v16 - a4;
    return 1;
  }

  self->mFinished = 1;
  dataOutMoved = 0;
  v19 = CCCryptorFinal(self->mCryptor, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
  if (!v19)
  {
    if (a5 >= dataOutMoved)
    {
      v24 = dataOutMoved;
    }

    else
    {
      v24 = a5;
    }

    memcpy(v16, self->mOutputBuffer, v24);
    v25 = dataOutMoved - v24;
    self->mOutputBufferPos = &self->mOutputBuffer[v24];
    self->mOutputBufferAvailable = v25;
    v17 = &v16[v24] - a4;
    goto LABEL_15;
  }

LABEL_40:
  if (a7)
  {
    *a7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v19 userInfo:0];
  }

  return 0;
}

@end