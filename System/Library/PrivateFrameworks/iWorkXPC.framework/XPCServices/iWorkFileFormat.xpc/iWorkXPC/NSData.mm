@interface NSData
+ (id)tsp_dataWithContentsOfURL:(id)a3 decryptionKey:(id)a4;
+ (id)tsp_dataWithTranscoder:(id)a3;
+ (id)tsu_dataWithInputStream:(id)a3 error:(id *)a4;
+ (id)tsu_decodeFromHexidecimalString:(id)a3;
- (BOOL)tsp_writeToURL:(id)a3 encryptionKey:(id)a4;
- (id)tsp_dataWithDecryptionKey:(id)a3;
- (id)tsp_dataWithEncryptionKey:(id)a3;
- (id)tsp_dispatchDataWithApplier:(id)a3;
- (id)tsu_encodeToHexidecimalString;
- (id)tsu_md5Hash;
- (void)tsp_splitDataWithMaxSize:(unint64_t)a3 subdataHandlerBlock:(id)a4;
- (void)tsu_getMD5Hash:(char *)a3;
@end

@implementation NSData

- (BOOL)tsp_writeToURL:(id)a3 encryptionKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[TSUFileIOChannel alloc] initForStreamWritingURL:v6 error:0];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = v8 != 0;
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    v10 = [TSPComponentWriteChannelAdapter alloc];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10004CDC0;
    v21 = &unk_1001C93A0;
    v23 = &v24;
    v11 = v9;
    v22 = v11;
    v12 = [(TSPComponentWriteChannelAdapter *)v10 initWithChannel:v8 handler:&v18];
    *(v25 + 24) = v12 != 0;
    if (v12)
    {
      v13 = [TSPCryptoComponentWriteChannel alloc];
      v14 = [(TSPCryptoComponentWriteChannel *)v13 initWithWriteChannel:v12 encryptionInfo:v7, v18, v19, v20, v21];
      *(v25 + 24) = v14 != 0;
      if (v14)
      {
        v15 = [(NSData *)self tsp_dispatchData];
        [(TSPCryptoComponentWriteChannel *)v14 writeData:v15];

        dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
        [(TSPCryptoComponentWriteChannel *)v14 close];
      }
    }

    [(TSPComponentWriteChannelAdapter *)v12 close:v18];

    v16 = *(v25 + 24);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v16 & 1;
}

+ (id)tsp_dataWithTranscoder:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10004CF78;
  v14 = sub_10004CF88;
  v15 = 0;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableData);
    v5 = v11[5];
    v11[5] = v4;

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004CF90;
    v9[3] = &unk_1001C93C8;
    v9[4] = &v10;
    [v3 readWithHandlerAndWait:v9];
    [v3 close];
    v6 = v11[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

+ (id)tsp_dataWithContentsOfURL:(id)a3 decryptionKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[TSUFileIOChannel alloc] initForReadingURL:v5 error:0];
  if (v7)
  {
    v8 = [[TSPCryptoTranscodeReadChannel alloc] initWithReadChannel:v7 decryptionInfo:v6 encryptionInfo:0];
    v9 = [NSData tsp_dataWithTranscoder:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tsp_dataWithDecryptionKey:(id)a3
{
  v4 = a3;
  v5 = [[TSPMemoryReadChannel alloc] initWithNSData:self];
  if (v5)
  {
    v6 = [[TSPCryptoTranscodeReadChannel alloc] initWithReadChannel:v5 decryptionInfo:v4 encryptionInfo:0];
    v7 = [NSData tsp_dataWithTranscoder:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tsp_dataWithEncryptionKey:(id)a3
{
  v4 = a3;
  v5 = [[TSPMemoryReadChannel alloc] initWithNSData:self];
  if (v5)
  {
    v6 = [[TSPCryptoTranscodeReadChannel alloc] initWithReadChannel:v5 decryptionInfo:0 encryptionInfo:v4];
    v7 = [NSData tsp_dataWithTranscoder:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tsp_dispatchDataWithApplier:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10004CF78;
  v18 = sub_10004CF88;
  v5 = &_dispatch_data_empty;
  v19 = &_dispatch_data_empty;
  dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004D458;
  v10[3] = &unk_1001C9418;
  v11 = v10[4] = self;
  v12 = v4;
  v13 = &v14;
  v6 = v4;
  v7 = v11;
  [(NSData *)self enumerateByteRangesUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (void)tsp_splitDataWithMaxSize:(unint64_t)a3 subdataHandlerBlock:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v18 = 0;
    v7 = [(NSData *)self length];
    if (v7 > a3)
    {
      v9 = 0;
      v10 = 0;
      *&v8 = 134217984;
      v17 = v8;
      while (1)
      {
        if (!v7)
        {
          goto LABEL_23;
        }

        v11 = objc_autoreleasePoolPush();
        v12 = v7 >= a3 ? a3 : v7;
        v13 = [(NSData *)self subdataWithRange:v9, v12, v17];
        if (!v13)
        {
          break;
        }

        v6[2](v6, v13, v10++, &v18);
        if (v18)
        {
          goto LABEL_15;
        }

        v9 += v12;
        v7 -= v12;
        v14 = 1;
LABEL_16:

        objc_autoreleasePoolPop(v11);
        if ((v14 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (TSUDefaultCat_init_token != -1)
      {
        sub_1001578F0();
      }

      v15 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        *buf = v17;
        v20 = v7;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not create split data with remaining size %zu", buf, 0xCu);
      }

LABEL_15:
      v14 = 0;
      goto LABEL_16;
    }

    v6[2](v6, self, 0, &v18);
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100157918();
    }

    v16 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015792C(v16);
    }
  }

LABEL_23:
}

- (id)tsu_encodeToHexidecimalString
{
  v3 = [(NSData *)self length];
  if (v3)
  {
    v4 = [(NSData *)self length];
    v5 = [(NSData *)self bytes];
    v6 = 2 * v4;
    v3 = malloc_type_calloc(2 * v4, 1uLL, 0x100004077774924uLL);
    if (v3)
    {
      if (v4)
      {
        v7 = v3 + 1;
        do
        {
          v9 = *v5++;
          v8 = v9;
          v10 = (v9 >> 4) + 55;
          v11 = (v9 >> 4) | 0x30;
          if (v9 > 0x9F)
          {
            LOBYTE(v11) = v10;
          }

          *(v7 - 1) = v11;
          if ((v8 & 0xFu) <= 9)
          {
            v12 = v8 & 0xF | 0x30;
          }

          else
          {
            v12 = (v8 & 0xF) + 55;
          }

          *v7 = v12;
          v7 += 2;
          --v4;
        }

        while (v4);
      }

      v3 = [[NSString alloc] initWithBytesNoCopy:v3 length:v6 encoding:1 freeWhenDone:1];
    }
  }

  return v3;
}

- (void)tsu_getMD5Hash:(char *)a3
{
  memset(&v9, 0, sizeof(v9));
  CC_MD5_Init(&v9);
  v5 = [(NSData *)self length];
  v6 = [(NSData *)self bytes];
  if (v5)
  {
    v7 = v6;
    do
    {
      if (v5 >= 0xFFFFFFFF)
      {
        v8 = 0xFFFFFFFFLL;
      }

      else
      {
        v8 = v5;
      }

      CC_MD5_Update(&v9, v7, v8);
      v7 += v8;
      v5 -= v8;
    }

    while (v5);
  }

  CC_MD5_Final(a3, &v9);
}

- (id)tsu_md5Hash
{
  v3 = [[NSMutableData alloc] initWithLength:16];
  -[NSData tsu_getMD5Hash:](self, "tsu_getMD5Hash:", [v3 mutableBytes]);

  return v3;
}

+ (id)tsu_decodeFromHexidecimalString:(id)a3
{
  v3 = a3;
  if (![v3 length] || (objc_msgSend(v3, "length") & 1) != 0)
  {
    v16 = 0;
  }

  else
  {
    v4 = [v3 length];
    v5 = malloc_type_calloc(2 * v4, 1uLL, 0x100004077774924uLL);
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      v8 = 1;
      v9 = v5;
      v10 = v7;
      do
      {
        v11 = [v3 characterAtIndex:v8 - 1];
        if (v11 <= 0x39)
        {
          v12 = 0;
        }

        else
        {
          v12 = 57;
        }

        v13 = v12 + v11;
        v14 = [v3 characterAtIndex:v8];
        if (v14 <= 0x39)
        {
          v15 = -48;
        }

        else
        {
          v15 = -55;
        }

        *v9++ = v15 + v14 + 16 * v13;
        v8 += 2;
        --v10;
      }

      while (v10);
    }

    v16 = [[NSData alloc] initWithBytesNoCopy:v6 length:v7 freeWhenDone:1];
  }

  return v16;
}

+ (id)tsu_dataWithInputStream:(id)a3 error:(id *)a4
{
  v4 = a3;
  [v4 open];
  v5 = objc_alloc_init(NSMutableData);
  v6 = [v4 read:v9 maxLength:1024];
  if (v6 >= 1)
  {
    for (i = v6; i > 0; i = [v4 read:v9 maxLength:1024])
    {
      [v5 appendBytes:v9 length:i];
    }
  }

  return v5;
}

@end