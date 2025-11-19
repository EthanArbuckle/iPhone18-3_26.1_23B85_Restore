@interface TSUReadChannelInputStreamAdapter
- (TSUReadChannelInputStreamAdapter)initWithReadChannel:(id)a3;
- (TSUReadChannelInputStreamAdapter)initWithStreamReadChannel:(id)a3;
- (id)_initWithReadChannel:(id)a3 streamReadChannel:(id)a4;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation TSUReadChannelInputStreamAdapter

- (TSUReadChannelInputStreamAdapter)initWithReadChannel:(id)a3
{
  v3 = self;
  if (a3)
  {
    v3 = [(TSUReadChannelInputStreamAdapter *)self _initWithReadChannel:a3 streamReadChannel:0];
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

- (TSUReadChannelInputStreamAdapter)initWithStreamReadChannel:(id)a3
{
  v3 = self;
  if (a3)
  {
    v3 = [(TSUReadChannelInputStreamAdapter *)self _initWithReadChannel:0 streamReadChannel:a3];
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

- (id)_initWithReadChannel:(id)a3 streamReadChannel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUReadChannelInputStreamAdapter _initWithReadChannel:streamReadChannel:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUReadChannelInputStreamAdapter.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:33 description:@"Can't have both a TSUReadChannel and a TSUStreamReadChannel be provided"];

    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUReadChannelInputStreamAdapter _initWithReadChannel:streamReadChannel:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUReadChannelInputStreamAdapter.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:35 description:@"Can't have both a TSUReadChannel and a TSUStreamReadChannel be provided"];
  }

  v21.receiver = self;
  v21.super_class = TSUReadChannelInputStreamAdapter;
  v16 = [(TSUReadChannelInputStreamAdapter *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_streamReadChannel, a4);
    objc_storeStrong(&v17->_readChannel, a3);
    v18 = dispatch_queue_create("TSUReadChannelInputStreamAdapter.Read", 0);
    readQueue = v17->_readQueue;
    v17->_readQueue = v18;

    objc_storeStrong(&v17->_leftoverData, MEMORY[0x277D85CC8]);
  }

  return v17;
}

- (void)dealloc
{
  [(TSUReadChannelInputStreamAdapter *)self close];
  v3.receiver = self;
  v3.super_class = TSUReadChannelInputStreamAdapter;
  [(TSUReadChannelInputStreamAdapter *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = a4;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = a3;
  leftoverData = self->_leftoverData;
  size = dispatch_data_get_size(leftoverData);
  v8 = a4;
  if (size)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke;
    applier[3] = &unk_279D66988;
    applier[5] = &v41;
    applier[6] = v40;
    applier[4] = self;
    dispatch_data_apply(leftoverData, applier);
    if (v42[3])
    {
      subrange = MEMORY[0x277D85CC8];
      v10 = MEMORY[0x277D85CC8];
    }

    else
    {
      v11 = self->_leftoverData;
      v12 = dispatch_data_get_size(v11);
      subrange = dispatch_data_create_subrange(v11, a4, v12 - a4);
    }

    v13 = self->_leftoverData;
    self->_leftoverData = subrange;

    v8 = v42[3];
  }

  if (v8 && self->_readChannel)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__5;
    v37 = __Block_byref_object_dispose__5;
    v38 = 0;
    v14 = dispatch_semaphore_create(0);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke_7;
    v27 = &unk_279D669D8;
    v30 = &v41;
    v31 = v40;
    v28 = self;
    v32 = &v33;
    v15 = v14;
    v29 = v15;
    v16 = _Block_copy(&v24);
    readChannel = self->_readChannel;
    if (readChannel)
    {
      [(TSUReadChannel *)readChannel readFromOffset:self->_offset length:v42[3] queue:self->_readQueue handler:v16, v24, v25, v26, v27, v28];
    }

    else
    {
      streamReadChannel = self->_streamReadChannel;
      if (streamReadChannel)
      {
        [(TSUStreamReadChannel *)streamReadChannel readWithQueue:self->_readQueue handler:v16, v24, v25, v26, v27, v28];
      }

      else
      {
        v19 = [TSUAssertionHandler currentHandler:v24];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUReadChannelInputStreamAdapter readToBuffer:size:]"];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUReadChannelInputStreamAdapter.m"];
        [v19 handleFailureInFunction:v20 file:v21 lineNumber:141 description:@"nil read channels"];

        dispatch_semaphore_signal(v15);
      }
    }

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    if (v34[5])
    {
      [MEMORY[0x277CBEAD8] tsu_raiseWithError:?];
    }

    _Block_object_dispose(&v33, 8);
    v8 = v42[3];
  }

  v22 = a4 - v8;
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v41, 8);
  return v22;
}

BOOL __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke(void *a1, int a2, int a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v6);
  *(*(a1[5] + 8) + 24) -= v6;
  *(*(a1[6] + 8) + 24) += v6;
  *(a1[4] + 40) += v6;
  return *(*(a1[5] + 8) + 24) != 0;
}

void __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke_7(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
LABEL_11:
      dispatch_semaphore_signal(*(a1 + 40));
      goto LABEL_12;
    }
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke_2;
    v17[3] = &unk_279D669B0;
    v18 = *(a1 + 48);
    v17[4] = *(a1 + 32);
    v19 = &v20;
    dispatch_data_apply(v7, v17);
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      size = dispatch_data_get_size(v7);
      v11 = v21[3];
      if (size > v11)
      {
        v12 = *(*(a1 + 32) + 24);
        subrange = dispatch_data_create_subrange(v7, v11, size - v11);
        concat = dispatch_data_create_concat(v12, subrange);
        v15 = *(a1 + 32);
        v16 = *(v15 + 24);
        *(v15 + 24) = concat;
      }
    }

    _Block_object_dispose(&v20, 8);
  }

  if (v9 || a2)
  {
    goto LABEL_11;
  }

LABEL_12:
}

BOOL __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke_2(void *a1, int a2, uint64_t a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v7);
  *(*(a1[5] + 8) + 24) -= v7;
  *(*(a1[6] + 8) + 24) += v7;
  *(a1[4] + 40) += v7;
  *(*(a1[7] + 8) + 24) = v7 + a3;
  return *(*(a1[5] + 8) + 24) != 0;
}

- (void)close
{
  [(TSUReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;

  [(TSUStreamReadChannel *)self->_streamReadChannel close];
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = 0;
}

- (void)seekToOffset:(int64_t)a3
{
  if (self->_readChannel)
  {
    self->_offset = a3;
    v4 = MEMORY[0x277D85CC8];
    v5 = MEMORY[0x277D85CC8];
    leftoverData = self->_leftoverData;
    self->_leftoverData = v4;
  }

  else
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUReadChannelInputStreamAdapter seekToOffset:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUReadChannelInputStreamAdapter.m"];
    [v9 handleFailureInFunction:v7 file:v8 lineNumber:183 description:@"Not a seekable stream"];

    leftoverData = v9;
  }
}

@end