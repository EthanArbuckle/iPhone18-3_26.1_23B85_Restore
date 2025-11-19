@interface TSUReadChannelInputStreamAdapter
- (TSUReadChannelInputStreamAdapter)initWithReadChannel:(id)a3 length:(unint64_t)a4 closeChannelOnClose:(BOOL)a5;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation TSUReadChannelInputStreamAdapter

- (TSUReadChannelInputStreamAdapter)initWithReadChannel:(id)a3 length:(unint64_t)a4 closeChannelOnClose:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = TSUReadChannelInputStreamAdapter;
  v10 = [(TSUReadChannelInputStreamAdapter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_readChannel, a3);
    objc_storeStrong(&v11->_leftoverData, MEMORY[0x277D85CC8]);
    v11->_length = a4;
    v11->_closeChannelOnClose = a5;
  }

  return v11;
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
  offset = self->_offset;
  length = self->_length;
  v6 = __OFSUB__(length, offset);
  v7 = length - offset;
  if (!((v7 < 0) ^ v6 | (v7 == 0)))
  {
    if (v7 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = v7;
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = v9;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v40[3] = a3;
    leftoverData = self->_leftoverData;
    if (dispatch_data_get_size(leftoverData))
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = sub_2770F3F70;
      applier[3] = &unk_27A703968;
      applier[5] = &v41;
      applier[6] = v40;
      applier[4] = self;
      dispatch_data_apply(leftoverData, applier);
      if (v42[3])
      {
        subrange = MEMORY[0x277D85CC8];
        v12 = MEMORY[0x277D85CC8];
      }

      else
      {
        v15 = self->_leftoverData;
        size = dispatch_data_get_size(v15);
        subrange = dispatch_data_create_subrange(v15, v9, size - v9);
      }

      v17 = self->_leftoverData;
      self->_leftoverData = subrange;

      v14 = v42[3];
      if (v14)
      {
LABEL_13:
        if (self->_readChannel)
        {
          v33 = 0;
          v34 = &v33;
          v35 = 0x3032000000;
          v36 = sub_2770F4004;
          v37 = sub_2770F4014;
          v38 = 0;
          v31[0] = 0;
          v31[1] = v31;
          v31[2] = 0x2020000000;
          v32 = 0;
          v18 = dispatch_semaphore_create(0);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = sub_2770F401C;
          aBlock[3] = &unk_27A7039B8;
          v27 = &v41;
          v28 = v40;
          aBlock[4] = self;
          v29 = &v33;
          v30 = v31;
          v19 = v18;
          v26 = v19;
          v20 = _Block_copy(aBlock);
          readChannel = self->_readChannel;
          if (readChannel)
          {
            [(TSUReadChannel *)readChannel readFromOffset:self->_offset length:v42[3] handler:v20];
          }

          else
          {
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUReadChannelInputStreamAdapter readToBuffer:size:]"];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUReadChannelInputStreamAdapter.m"];
            [TSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:118 isFatal:0 description:"nil read channels"];

            +[TSUAssertionHandler logBacktraceThrottled];
            dispatch_semaphore_signal(v19);
          }

          dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
          if (v34[5])
          {
            [MEMORY[0x277CBEAD8] tsu_raiseWithError:?];
          }

          _Block_object_dispose(v31, 8);
          _Block_object_dispose(&v33, 8);

          v14 = v42[3];
        }
      }
    }

    else
    {
      v14 = v9;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    v13 = v9 - v14;
    _Block_object_dispose(v40, 8);
    _Block_object_dispose(&v41, 8);
    return v13;
  }

  return 0;
}

- (void)close
{
  if (self->_closeChannelOnClose)
  {
    [(TSUReadChannel *)self->_readChannel close];
  }

  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

- (void)seekToOffset:(int64_t)a3
{
  if (self->_readChannel)
  {
    length = self->_length;
    if (length >= a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = self->_length;
    }

    if (length >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = a3;
    }

    self->_offset = v6;
    v7 = MEMORY[0x277D85CC8];
    p_leftoverData = &self->_leftoverData;

    objc_storeStrong(p_leftoverData, v7);
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUReadChannelInputStreamAdapter seekToOffset:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUReadChannelInputStreamAdapter.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:156 isFatal:0 description:"Not a seekable stream"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

@end