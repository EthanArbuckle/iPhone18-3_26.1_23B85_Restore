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
  objc_msgSend_close(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSPSnappyReadChannel;
  [(TSPSnappyReadChannel *)&v4 dealloc];
}

- (void)readWithHandler:(id)a3
{
  v5 = a3;
  readChannel = self->_readChannel;
  if (!readChannel)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPSnappyReadChannel readWithHandler:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappyReadChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 36, 0, "Already closed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    readChannel = self->_readChannel;
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_276AFA85C;
  v22[4] = sub_276AFA86C;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276AFA874;
  v16[3] = &unk_27A6E7560;
  v18 = v20;
  v14 = v5;
  v19 = v22;
  v16[4] = self;
  v17 = v14;
  objc_msgSend_readWithHandler_(readChannel, v15, v16);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

- (void)close
{
  objc_msgSend_close(self->_readChannel, a2, v2);
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
    TSUSetCrashReporterInfo();
    v23 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPSnappyReadChannel processData:isDone:handler:]", "[TSPSnappyReadChannel processData:isDone:handler:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappyReadChannel.mm", 67);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappyReadChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v25, v27, 67, 1, "Should have data by now");

    TSUCrashBreakpoint();
    abort();
  }

  size = dispatch_data_get_size(*a3);
  sub_276AFCE58(v34, v9);
  v29 = a3;
  v11 = 0;
  if (size)
  {
    while (1)
    {
      if (sub_276AFCF28(v34) <= 3)
      {
        if (!v5)
        {
          goto LABEL_31;
        }

        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD6EE8();
        }

        goto LABEL_30;
      }

      for (i = 0; i < 4; i += v15)
      {
        v30 = 0;
        v14 = sub_276AFCF34(v34, &v30);
        if (4 - i >= v30)
        {
          v15 = v30;
        }

        else
        {
          v15 = 4 - i;
        }

        memcpy(&v31 + i, v14, v15);
        sub_276AFD0F0(v34, v15);
      }

      if (v31)
      {
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD6E98();
        }

        goto LABEL_30;
      }

      v16 = (v32 | (v33 << 16)) & 0xFFFFFFLL;
      if (sub_276AFCF28(v34) < v16)
      {
        break;
      }

      v11 = sub_276AFD14C(v34) + v16;
      sub_276AFD154(v34, v11);
      v18 = objc_msgSend_uncompressDataFromSource_(self, v17, v34);
      if (v18)
      {
        v19 = v11 == size && v5;
        v8[2](v8, v19, v18, 0);
      }

      sub_276AFD154(v34, size);
      sub_276AFD0FC(v34, v11);

      if (!v18 || v11 >= size)
      {
        if (v18)
        {
          goto LABEL_19;
        }

        goto LABEL_30;
      }
    }

    if (!v5)
    {
      goto LABEL_31;
    }

    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD6EC0();
    }

LABEL_30:
    v20 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v12, 0);
    (v8)[2](v8, 1, 0, v20);

    v21 = 0;
  }

  else
  {
LABEL_19:
    if (!size && v5)
    {
      v8[2](v8, 1, 0, 0);
    }

LABEL_31:
    v21 = 1;
    if (v11 && !v5)
    {
      *v29 = dispatch_data_create_subrange(*v29, v11, size - v11);
    }
  }

  sub_276AFCEEC(v34);

  return v21;
}

- (id)uncompressDataFromSource:(SnappySource *)a3
{
  LODWORD(size) = 0;
  v4 = sub_276AFD14C(a3);
  if (snappy::GetUncompressedLength(a3, &size, v5))
  {
    sub_276AFD0FC(a3, v4);
    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (snappy::RawUncompress(a3, v6, v7))
    {
      v8 = dispatch_data_create(v6, size, 0, *MEMORY[0x277D85CB0]);
      goto LABEL_10;
    }

    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD6F38();
    }

    free(v6);
  }

  else
  {
    if (*MEMORY[0x277D81408] == -1)
    {
      v8 = 0;
      goto LABEL_10;
    }

    sub_276BD6F10();
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)uncompressData:(id)a3
{
  v3 = a3;
  v10 = 0;
  sub_276AFCE58(v9, v3);
  if (snappy::GetUncompressedLength(v9, &v10, v4))
  {
    sub_276AFCEEC(v9);
    sub_276AFCE58(v9, v3);
    v5 = malloc_type_malloc(v10, 0x100004077774924uLL);
    if (snappy::RawUncompress(v9, v5, v6))
    {
      v7 = dispatch_data_create(v5, v10, 0, *MEMORY[0x277D85CB0]);
    }

    else
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD6F88();
      }

      free(v5);
      v7 = 0;
    }

    sub_276AFCEEC(v9);
  }

  else
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD6F60();
    }

    sub_276AFCEEC(v9);
    v7 = 0;
  }

  return v7;
}

@end