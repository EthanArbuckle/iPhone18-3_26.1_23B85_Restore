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
  v28.receiver = self;
  v28.super_class = SFUCryptor;
  v12 = [(SFUCryptor *)&v28 init];
  if (!v12)
  {
    return v12;
  }

  if (!a3)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 49, @"invalid nil value for '%s'", "key"}];
  }

  if (![a3 keyType])
  {
    if (a6 != 16)
    {
      v16 = +[TSUAssertionHandler currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 66, @"Incorrect iv length (%lu, should be %d)", a6, 16}];
    }

    if (!a5)
    {
      v18 = +[TSUAssertionHandler currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor initWithKey:operation:iv:ivLength:usePKCS7Padding:]"];
      [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 67, @"invalid nil value for '%s'", "iv"}];
    }

    v20 = CCCryptorCreate(a4 == 1, 0, v7, [a3 keyData], objc_msgSend(a3, "keyLength"), a5, &v12->mCryptor);
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

  v12->mOperation = a4;
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

- (BOOL)cryptDataFromBuffer:(const char *)a3 length:(unint64_t)a4 toStream:(id)a5 finished:(BOOL)a6 crc32:(unsigned int *)a7 error:(id *)a8
{
  v10 = a6;
  if (self->mOperation)
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"), 130, @"Decryption to stream not supported"}];
  }

  if (a4)
  {
    while (1)
    {
      mCryptor = self->mCryptor;
      v18 = a4 >= 0x20000 - self->mBlockSize ? 0x20000 - self->mBlockSize : a4;
      dataOutMoved = 0;
      v19 = CCCryptorUpdate(mCryptor, a3, v18, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v19)
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
            v34 = +[TSUAssertionHandler currentHandler];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptor cryptDataFromBuffer:length:toStream:finished:crc32:error:]"];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptor.mm"];
            v31 = v34;
            v32 = v35;
            v33 = 157;
            goto LABEL_28;
          }

          *a7 = crc32(*a7, self->mOutputBuffer, dataOutMoved);
        }
      }

      a3 += v18;
      a4 -= v18;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    if (!a8)
    {
      return 0;
    }

    v24 = *MEMORY[0x277CCA590];
    v25 = v19;
    v26 = MEMORY[0x277CCA9B8];
    goto LABEL_32;
  }

LABEL_13:
  if (v10)
  {
    dataOutMoved = 0;
    mOutputBuffer = self->mOutputBuffer;
    if (CCCryptorFinal(self->mCryptor, mOutputBuffer, 0x20000uLL, &dataOutMoved) == -4301)
    {
      OutputLength = CCCryptorGetOutputLength(self->mCryptor, 0, 1);
      v22 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
      if (!v22)
      {
        if (!a8)
        {
          return 0;
        }

        v26 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CCA590];
        v25 = -4301;
LABEL_32:
        *a8 = [v26 errorWithDomain:v24 code:v25 userInfo:0];
        return 0;
      }

      mOutputBuffer = v22;
      v23 = CCCryptorFinal(self->mCryptor, v22, OutputLength, &dataOutMoved);
      if (v23)
      {
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v23 userInfo:0];
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
      [a5 writeBuffer:mOutputBuffer size:?];
      if (a7)
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
          if (!a8)
          {
            return 0;
          }

          v26 = MEMORY[0x277CCA9B8];
          v24 = *MEMORY[0x277CCA590];
          v25 = -4302;
          goto LABEL_32;
        }

        *a7 = crc32(*a7, mOutputBuffer, dataOutMoved);
      }
    }

    if (v27)
    {
      free(v27);
    }
  }

  return 1;
}

- (BOOL)cryptDataFromStream:(id)a3 toBuffer:(char *)a4 length:(unint64_t)a5 bytesRead:(unint64_t *)a6 error:(id *)a7
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
    if (mOutputBufferAvailable >= a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = self->mOutputBufferAvailable;
    }

    memcpy(a4, self->mOutputBufferPos, v16);
    v17 = self->mOutputBufferAvailable - v16;
    self->mOutputBufferPos += v16;
    self->mOutputBufferAvailable = v17;
    v18 = &a4[v16];
    a5 -= v16;
  }

  else
  {
    v18 = a4;
  }

  if (self->mFinished)
  {
    v19 = v18 - a4;
LABEL_11:
    *a6 = v19;
    return 1;
  }

  if (a5)
  {
    v28 = a7;
    while (1)
    {
      v20 = [a3 readToBuffer:self->mDecryptionInputBuffer size:{0x20000 - self->mBlockSize, v28}];
      if (!v20)
      {
        break;
      }

      dataOutMoved = 0;
      v21 = CCCryptorUpdate(self->mCryptor, self->mDecryptionInputBuffer, v20, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
      if (v21)
      {
        a7 = v28;
        goto LABEL_36;
      }

      v22 = dataOutMoved;
      if (a5 >= dataOutMoved)
      {
        v23 = dataOutMoved;
      }

      else
      {
        v23 = a5;
      }

      memcpy(v18, self->mOutputBuffer, v23);
      v18 += v23;
      a5 -= v23;
      self->mOutputBufferPos = &self->mOutputBuffer[v23];
      self->mOutputBufferAvailable = v22 - v23;
      v24 = a5 != 0;
      if (!a5)
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

    a7 = v28;
  }

  else
  {
    v24 = 0;
  }

  if (v18 != a4 && !v24)
  {
    *a6 = v18 - a4;
    return 1;
  }

  self->mFinished = 1;
  dataOutMoved = 0;
  v21 = CCCryptorFinal(self->mCryptor, self->mOutputBuffer, 0x20000uLL, &dataOutMoved);
  if (!v21)
  {
    if (a5 >= dataOutMoved)
    {
      v26 = dataOutMoved;
    }

    else
    {
      v26 = a5;
    }

    memcpy(v18, self->mOutputBuffer, v26);
    v27 = dataOutMoved - v26;
    self->mOutputBufferPos = &self->mOutputBuffer[v26];
    self->mOutputBufferAvailable = v27;
    v19 = &v18[v26] - a4;
    goto LABEL_11;
  }

LABEL_36:
  if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v21 userInfo:0];
  }

  return 0;
}

@end