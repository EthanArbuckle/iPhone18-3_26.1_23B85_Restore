@interface TSPSnappyReadChannel
- (BOOL)processData:(id *)a3 isDone:(BOOL)a4 handler:(id)a5;
- (TSPSnappyReadChannel)initWithReadChannel:(id)a3;
- (id)uncompressData:(id)a3;
- (id)uncompressDataFromSource:(SnappySource *)a3;
- (void)close;
- (void)dealloc;
- (void)readWithHandler:(id)a3;
@end

@implementation TSPSnappyReadChannel

- (TSPSnappyReadChannel)initWithReadChannel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TSPSnappyReadChannel;
  v6 = [(TSPSnappyReadChannel *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readChannel, a3);
    v8 = v7;
  }

  return v7;
}

- (void)dealloc
{
  [(TSPSnappyReadChannel *)self close];
  v3.receiver = self;
  v3.super_class = TSPSnappyReadChannel;
  [(TSPSnappyReadChannel *)&v3 dealloc];
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  readChannel = self->_readChannel;
  if (!readChannel)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001502D4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001502E8();
    }

    v6 = [NSString stringWithUTF8String:"[TSPSnappyReadChannel readWithHandler:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPSnappyReadChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:36 isFatal:0 description:"Already closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
    readChannel = self->_readChannel;
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100007ECC;
  v15[4] = sub_100007EDC;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100007EE4;
  v9[3] = &unk_1001C55A8;
  v11 = v13;
  v8 = v4;
  v12 = v15;
  v9[4] = self;
  v10 = v8;
  [(TSUStreamReadChannel *)readChannel readWithHandler:v9];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
}

- (void)close
{
  [(TSUStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

- (BOOL)processData:(id *)a3 isDone:(BOOL)a4 handler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = *a3;
  if (!*a3)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150468();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015047C();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Should have data by now", v22, v23, v24, v25, v26, v27, v28, "[TSPSnappyReadChannel processData:isDone:handler:]");
    v29 = [NSString stringWithUTF8String:"[TSPSnappyReadChannel processData:isDone:handler:]"];
    v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPSnappyReadChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:67 isFatal:1 description:"Should have data by now"];

    TSUCrashBreakpoint();
    abort();
  }

  size = dispatch_data_get_size(*a3);
  TSP::SnappySource::SnappySource(v36, v9);
  v31 = a3;
  v11 = 0;
  if (size)
  {
    while (TSP::SnappySource::Available(v36) > 3)
    {
      for (i = 0; i < 4; i += v14)
      {
        *buf = 0;
        v13 = TSP::SnappySource::Peek(v36, buf);
        if (4 - i >= *buf)
        {
          v14 = *buf;
        }

        else
        {
          v14 = 4 - i;
        }

        memcpy(&v33 + i, v13, v14);
        TSP::SnappySource::Skip(v36, v14);
      }

      if (v33)
      {
        if (TSUDefaultCat_init_token != -1)
        {
          sub_10015037C();
        }

        v18 = TSUDefaultCat_log_t;
        if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_1001503A4(buf, &buf[1], v18);
        }

        goto LABEL_36;
      }

      v15 = (v34 | (v35 << 16)) & 0xFFFFFFLL;
      if (TSP::SnappySource::Available(v36) < v15)
      {
        if (!v5)
        {
          goto LABEL_37;
        }

        if (TSUDefaultCat_init_token != -1)
        {
          sub_1001503E4();
        }

        if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      v11 = TSP::SnappySource::Offset(v36) + v15;
      TSP::SnappySource::SetMaxOffset(v36, v11);
      v16 = [(TSPSnappyReadChannel *)self uncompressDataFromSource:v36];
      if (v16)
      {
        v17 = v11 == size && v5;
        v8[2](v8, v17, v16, 0);
      }

      TSP::SnappySource::SetMaxOffset(v36, size);
      TSP::SnappySource::SetOffset(v36, v11);

      if (!v16 || v11 >= size)
      {
        if (v16)
        {
          goto LABEL_19;
        }

        goto LABEL_36;
      }
    }

    if (!v5)
    {
      goto LABEL_37;
    }

    if (TSUDefaultCat_init_token != -1)
    {
      sub_100150440();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
LABEL_35:
      sub_10015040C();
    }

LABEL_36:
    v19 = [NSError tsp_readCorruptedDocumentErrorWithUserInfo:0];
    (v8)[2](v8, 1, 0, v19);

    v20 = 0;
  }

  else
  {
LABEL_19:
    if (!size && v5)
    {
      v8[2](v8, 1, 0, 0);
    }

LABEL_37:
    v20 = 1;
    if (v11 && !v5)
    {
      *v31 = dispatch_data_create_subrange(*v31, v11, size - v11);
    }
  }

  TSP::SnappySource::~SnappySource(v36);

  return v20;
}

- (id)uncompressDataFromSource:(SnappySource *)a3
{
  LODWORD(size) = 0;
  v4 = TSP::SnappySource::Offset(a3);
  if (snappy::GetUncompressedLength(a3, &size, v5))
  {
    TSP::SnappySource::SetOffset(a3, v4);
    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (snappy::RawUncompress(a3, v6, v7))
    {
      v8 = dispatch_data_create(v6, size, 0, _dispatch_data_destructor_free);
      goto LABEL_14;
    }

    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015056C();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150594();
    }

    free(v6);
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100150510();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150538();
    }
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (id)uncompressData:(id)a3
{
  v3 = a3;
  v10 = 0;
  TSP::SnappySource::SnappySource(v9, v3);
  if (snappy::GetUncompressedLength(v9, &v10, v4))
  {
    TSP::SnappySource::~SnappySource(v9);
    TSP::SnappySource::SnappySource(v9, v3);
    v5 = malloc_type_malloc(v10, 0x100004077774924uLL);
    if (snappy::RawUncompress(v9, v5, v6))
    {
      v7 = dispatch_data_create(v5, v10, 0, _dispatch_data_destructor_free);
    }

    else
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_1001505F0();
      }

      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100150594();
      }

      free(v5);
      v7 = 0;
    }

    TSP::SnappySource::~SnappySource(v9);
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_1001505C8();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150538();
    }

    TSP::SnappySource::~SnappySource(v9);
    v7 = 0;
  }

  return v7;
}

@end