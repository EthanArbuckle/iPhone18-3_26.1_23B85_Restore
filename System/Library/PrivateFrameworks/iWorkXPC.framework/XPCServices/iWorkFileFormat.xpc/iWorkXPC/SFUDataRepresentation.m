@interface SFUDataRepresentation
- (BOOL)isEqual:(id)a3;
- (CGDataProvider)cgDataProvider;
- (_xmlDoc)xmlDocument;
- (_xmlTextReader)xmlReaderForGzippedDataWithInputStream:(id *)a3;
- (_xmlTextReader)xmlReaderWithReadCallback:(void *)a3;
- (id)bufferedInputStream;
- (id)bufferedInputStreamWithBufferSize:(unint64_t)a3;
- (id)inputStream;
- (int64_t)compare:(id)a3;
- (int64_t)dataLength;
- (unint64_t)readIntoData:(id)a3;
- (unsigned)uint32Hash;
@end

@implementation SFUDataRepresentation

- (int64_t)dataLength
{
  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_100161B24();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_100161B38();
  }

  [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUDataRepresentation dataLength]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUDataRepresentation.m"] lineNumber:47 isFatal:0 description:"Abstract method."];
  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (id)inputStream
{
  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_100161BC0();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_100161BD4();
  }

  [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUDataRepresentation inputStream]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUDataRepresentation.m"] lineNumber:60 isFatal:0 description:"Abstract method."];
  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (id)bufferedInputStream
{
  v2 = [[SFUBufferedInputStream alloc] initWithStream:[(SFUDataRepresentation *)self inputStream] dataLength:[(SFUDataRepresentation *)self dataLength]];

  return v2;
}

- (id)bufferedInputStreamWithBufferSize:(unint64_t)a3
{
  v3 = [[SFUBufferedInputStream alloc] initWithStream:[(SFUDataRepresentation *)self inputStream] bufferSize:a3];

  return v3;
}

- (_xmlDoc)xmlDocument
{
  context = objc_autoreleasePoolPush();
  v3 = [(SFUDataRepresentation *)self bufferedInputStream];
  chunk = 0;
  v4 = [v3 readToOwnBuffer:&chunk size:-1];
  v5 = v4;
  if (v4 >> 31)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100161C5C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100161C84();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUDataRepresentation xmlDocument]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUDataRepresentation.m"] lineNumber:92 isFatal:0 description:"overflow in xmlDocument"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  PushParserCtxt = xmlCreatePushParserCtxt(0, 0, chunk, v5, 0);
  if (!PushParserCtxt)
  {
    [NSException raise:@"SFUDataRepresentationError" format:@"xmlCreatePushParserCtxt() failed"];
  }

  while (1)
  {
    v7 = [v3 readToOwnBuffer:&chunk size:-1];
    v8 = v7;
    if (!v7)
    {
      break;
    }

    if (v7 >> 31)
    {
      v9 = +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100161D0C();
      }

      v10 = TSUAssertCat_log_t;
      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v18 = v9;
        v19 = 2082;
        v20 = "[SFUDataRepresentation xmlDocument]";
        v21 = 2082;
        v22 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUDataRepresentation.m";
        v23 = 1024;
        v24 = 105;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d overflow in xmlDocument", buf, 0x22u);
      }

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUDataRepresentation xmlDocument]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUDataRepresentation.m"] lineNumber:105 isFatal:0 description:"overflow in xmlDocument"];
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v11 = xmlParseChunk(PushParserCtxt, chunk, v8, 0);
    if (v11)
    {
      [NSException raise:@"SFUDataRepresentationError" format:@"xmlParseChunk() failed: %d", v11];
    }
  }

  v12 = xmlParseChunk(PushParserCtxt, chunk, 0, 1);
  if (v12)
  {
    [NSException raise:@"SFUDataRepresentationError" format:@"xmlParseChunk() failed: %d", v12];
  }

  myDoc = PushParserCtxt->myDoc;
  if (!PushParserCtxt->wellFormed)
  {
    [NSException raise:@"SFUDataRepresentationError" format:@"XML document is not well formed."];
  }

  xmlFreeParserCtxt(PushParserCtxt);
  [v3 close];
  objc_autoreleasePoolPop(context);
  return myDoc;
}

- (_xmlTextReader)xmlReaderWithReadCallback:(void *)a3
{
  v4 = [(SFUDataRepresentation *)self inputStream];

  return xmlReaderForIO(a3, sub_1000B28D0, v4, 0, 0, 0);
}

- (_xmlTextReader)xmlReaderForGzippedDataWithInputStream:(id *)a3
{
  v4 = [(SFUDataRepresentation *)self inputStream];
  if ([v4 readToBuffer:v10 size:10] != 10)
  {
    return 0;
  }

  v5 = v11;
  if ((v11 & 4) != 0)
  {
    v9 = 0;
    if ([v4 readToBuffer:&v9 size:2] != 2)
    {
      return 0;
    }

    if (v9)
    {
      v8 = 0;
      while ([v4 readToBuffer:v10 size:1] == 1)
      {
        if (++v8 >= v9)
        {
          goto LABEL_3;
        }
      }

      return 0;
    }
  }

LABEL_3:
  if ((v5 & 8) != 0)
  {
    v10[0] = 1;
    while ([v4 readToBuffer:v10 size:1] == 1)
    {
      if (!v10[0])
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  if ((v5 & 0x10) != 0)
  {
    v10[0] = 1;
    while ([v4 readToBuffer:v10 size:1] == 1)
    {
      if (!v10[0])
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if ((v5 & 2) != 0 && [v4 readToBuffer:v10 size:2] != 2)
  {
    return 0;
  }

  v6 = [[SFUZipInflateInputStream alloc] initWithInput:v4];
  if (a3)
  {
    *a3 = v6;
  }

  return xmlReaderForIO(sub_1000B2730, sub_1000B28D0, v6, 0, 0, 0);
}

- (CGDataProvider)cgDataProvider
{
  v2 = [(SFUDataRepresentation *)self inputStream];
  if (([v2 canSeek] & 1) == 0)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100161DD0();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100161DE4();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUDataRepresentation cgDataProvider]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUDataRepresentation.m"] lineNumber:229 isFatal:0 description:"Need a seekable input stream for -cgDataProvider"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return CGDataProviderCreateSequential(v2, &unk_1001CF068);
}

- (unint64_t)readIntoData:(id)a3
{
  v5 = [a3 length];
  v6 = [(SFUDataRepresentation *)self bufferedInputStream];
  for (i = 0; ; [a3 appendBytes:i length:v7])
  {
    v7 = [v6 readToOwnBuffer:&i size:-1];
    if (!v7)
    {
      break;
    }
  }

  [v6 close];
  return [a3 length] - v5;
}

- (unsigned)uint32Hash
{
  if (!self->mHasHash && [(SFUDataRepresentation *)self isReadable])
  {
    objc_sync_enter(self);
    if (!self->mHasHash && [(SFUDataRepresentation *)self isReadable])
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [(SFUDataRepresentation *)self dataLength];
      v5 = [(SFUDataRepresentation *)self inputStream];
      v6 = malloc_type_malloc(0x1008uLL, 0x100004077774924uLL);
      if (!v6)
      {
        [NSException raise:NSMallocException format:@"Failed to allocate hash buffer for SFEData"];
      }

      v7 = [v5 readToBuffer:v6 size:4096];
      *&v7[v6] = v4;
      self->mHash = SFUHash(v6, (v7 + 8));
      free(v6);
      __dmb(0xBu);
      self->mHasHash = 1;
      objc_autoreleasePoolPop(v3);
    }

    objc_sync_exit(self);
  }

  return self->mHash;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(SFUDataRepresentation *)self dataLength];
  if (v5 != [a3 dataLength])
  {
    return 0;
  }

  if ([(SFUDataRepresentation *)self hasSameLocationAs:a3])
  {
    return 1;
  }

  if (!-[SFUDataRepresentation isReadable](self, "isReadable") || ![a3 isReadable])
  {
    return 0;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [(SFUDataRepresentation *)self bufferedInputStream];
  v9 = [a3 bufferedInputStream];
  v19 = 0;
  v20 = 0;
  if (v5 < 1)
  {
LABEL_20:
    v6 = 1;
  }

  else
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      if (v12 == v13)
      {
        v15 = [v8 readToOwnBuffer:&v20 size:-1];
        v11 = v19;
        v12 = v20;
        v13 = &v15[v20];
      }

      if (v11 == v14)
      {
        v16 = [v10 readToOwnBuffer:&v19 size:-1];
        v11 = v19;
        v12 = v20;
        v14 = &v16[v19];
      }

      v17 = v13 - v12 >= v14 - v11 ? v14 - v11 : v13 - v12;
      if (!v17 || memcmp(v12, v11, v17))
      {
        break;
      }

      v12 += v17;
      v11 += v17;
      v19 = v11;
      v20 = v12;
      v5 -= v17;
      if (v5 <= 0)
      {
        goto LABEL_20;
      }
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v6;
}

- (int64_t)compare:(id)a3
{
  if (self == a3)
  {
    return 0;
  }

  v5 = [(SFUDataRepresentation *)self dataLength];
  v6 = [a3 dataLength];
  if (v5 < v6)
  {
    return -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  if ([(SFUDataRepresentation *)self hasSameLocationAs:a3])
  {
    return 0;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [(SFUDataRepresentation *)self bufferedInputStream];
  v11 = [a3 bufferedInputStream];
  v21 = 0;
  v22 = 0;
  if (v5 < 1)
  {
LABEL_26:
    v7 = 0;
  }

  else
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v7 = 1;
    while (1)
    {
      if (v14 == v15)
      {
        v17 = [v10 readToOwnBuffer:&v22 size:-1];
        v13 = v21;
        v14 = v22;
        v15 = &v17[v22];
      }

      if (v13 == v16)
      {
        v18 = [v12 readToOwnBuffer:&v21 size:-1];
        v13 = v21;
        v14 = v22;
        v16 = &v18[v21];
      }

      if (v15 == v14 && v16 != v13)
      {
        break;
      }

      if (v15 != v14 && v16 == v13)
      {
        goto LABEL_28;
      }

      if (v15 - v14 >= (v16 - v13))
      {
        v19 = v16 - v13;
      }

      else
      {
        v19 = v15 - v14;
      }

      if (!v19)
      {
        goto LABEL_26;
      }

      v20 = memcmp(v14, v13, v19);
      if (v20 < 0)
      {
        break;
      }

      if (v20)
      {
        goto LABEL_28;
      }

      v14 += v19;
      v13 += v19;
      v21 = v13;
      v22 = v14;
      v5 -= v19;
      if (v5 <= 0)
      {
        goto LABEL_26;
      }
    }

    v7 = -1;
  }

LABEL_28:
  objc_autoreleasePoolPop(v9);
  return v7;
}

@end