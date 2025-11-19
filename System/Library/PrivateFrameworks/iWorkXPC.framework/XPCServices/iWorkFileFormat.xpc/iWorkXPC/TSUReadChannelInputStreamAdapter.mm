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
    objc_storeStrong(&v11->_leftoverData, &_dispatch_data_empty);
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

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = v9;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v39[3] = a3;
    leftoverData = self->_leftoverData;
    if (dispatch_data_get_size(leftoverData))
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1000AE62C;
      applier[3] = &unk_1001CECE0;
      applier[5] = &v40;
      applier[6] = v39;
      applier[4] = self;
      dispatch_data_apply(leftoverData, applier);
      if (v41[3])
      {
        subrange = &_dispatch_data_empty;
        v12 = &_dispatch_data_empty;
      }

      else
      {
        v15 = self->_leftoverData;
        size = dispatch_data_get_size(v15);
        subrange = dispatch_data_create_subrange(v15, v9, size - v9);
      }

      v17 = self->_leftoverData;
      self->_leftoverData = subrange;

      v14 = v41[3];
      if (v14)
      {
LABEL_13:
        if (self->_readChannel)
        {
          v32 = 0;
          v33 = &v32;
          v34 = 0x3032000000;
          v35 = sub_1000AE6C0;
          v36 = sub_1000AE6D0;
          v37 = 0;
          v30[0] = 0;
          v30[1] = v30;
          v30[2] = 0x2020000000;
          v31 = 0;
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1000AE6D8;
          v24[3] = &unk_1001CED30;
          v26 = &v40;
          v27 = v39;
          v24[4] = self;
          v28 = &v32;
          v29 = v30;
          v18 = dispatch_semaphore_create(0);
          v25 = v18;
          v19 = objc_retainBlock(v24);
          readChannel = self->_readChannel;
          if (readChannel)
          {
            [(TSUReadChannel *)readChannel readFromOffset:self->_offset length:v41[3] handler:v19];
          }

          else
          {
            +[TSUAssertionHandler _atomicIncrementAssertCount];
            if (TSUAssertCat_init_token != -1)
            {
              sub_100161494();
            }

            if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              sub_1001614BC();
            }

            v21 = [NSString stringWithUTF8String:"[TSUReadChannelInputStreamAdapter readToBuffer:size:]"];
            v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUReadChannelInputStreamAdapter.m"];
            [TSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:118 isFatal:0 description:"nil read channels"];

            +[TSUAssertionHandler logBacktraceThrottled];
            dispatch_semaphore_signal(v18);
          }

          dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
          if (v33[5])
          {
            [NSException tsu_raiseWithError:?];
          }

          _Block_object_dispose(v30, 8);
          _Block_object_dispose(&v32, 8);

          v14 = v41[3];
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
    _Block_object_dispose(v39, 8);
    _Block_object_dispose(&v40, 8);
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
    p_leftoverData = &self->_leftoverData;

    objc_storeStrong(p_leftoverData, &_dispatch_data_empty);
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100161550();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100161564();
    }

    v8 = [NSString stringWithUTF8String:"[TSUReadChannelInputStreamAdapter seekToOffset:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUReadChannelInputStreamAdapter.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:156 isFatal:0 description:"Not a seekable stream"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

@end