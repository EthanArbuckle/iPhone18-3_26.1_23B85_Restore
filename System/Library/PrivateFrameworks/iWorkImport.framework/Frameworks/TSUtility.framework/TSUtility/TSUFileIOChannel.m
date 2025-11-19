@interface TSUFileIOChannel
- (BOOL)isValid;
- (TSUFileIOChannel)initWithType:(unint64_t)a3 URL:(id)a4 oflag:(int)a5 mode:(unsigned __int16)a6 error:(id *)a7 cleanupHandler:(id)a8;
- (TSUFileIOChannel)initWithType:(unint64_t)a3 descriptor:(int)a4 cleanupHandler:(id)a5;
- (void)addBarrier:(id)a3;
- (void)close;
- (void)dealloc;
- (void)flushWithCompletion:(id)a3;
- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5;
- (void)setLowWater:(unint64_t)a3;
- (void)truncateToLength:(int64_t)a3 completion:(id)a4;
- (void)writeData:(id)a3 offset:(int64_t)a4 handler:(id)a5;
@end

@implementation TSUFileIOChannel

- (TSUFileIOChannel)initWithType:(unint64_t)a3 URL:(id)a4 oflag:(int)a5 mode:(unsigned __int16)a6 error:(id *)a7 cleanupHandler:(id)a8
{
  v10 = a6;
  v14 = a4;
  v15 = a8;
  if (!v14 || ([v14 isFileURL] & 1) == 0)
  {
    if (a7)
    {
      *a7 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    }

    if (v15)
    {
      v15[2](v15, 2);
    }

    goto LABEL_19;
  }

  v43.receiver = self;
  v43.super_class = TSUFileIOChannel;
  v16 = [(TSUFileIOChannel *)&v43 init];
  if (!v16)
  {
    if (a7)
    {
      *a7 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:12 userInfo:0];
    }

    if (v15)
    {
      v15[2](v15, 12);
    }

    self = 0;
LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  v17 = v16;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2770D59EC;
  aBlock[3] = &unk_27A703070;
  v40 = v41;
  v18 = v15;
  v39 = v18;
  v34 = _Block_copy(aBlock);
  v17->_oflag = a5;
  v19 = [v14 path];
  v20 = [v19 fileSystemRepresentation];

  if (v20)
  {
    if ((a5 & 0x400) != 0)
    {
      unlink(v20);
    }

    v21 = open(v20, a5, v10);
    if (v21 < 0)
    {
      v28 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
      if (TSUDefaultCat_init_token != -1)
      {
        sub_277114F40();
      }

      v31 = __error();
      v34[2](v34, *v31);
      goto LABEL_24;
    }

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("TSUFileIOChannel.IO", v22);
    ioQueue = v17->_ioQueue;
    v17->_ioQueue = v23;

    v25 = v17->_ioQueue;
    cleanup_handler[0] = MEMORY[0x277D85DD0];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = sub_2770D5A44;
    cleanup_handler[3] = &unk_27A703098;
    v37 = v21;
    v36 = v18;
    v26 = dispatch_io_create(a3, v21, v25, cleanup_handler);
    channel = v17->_channel;
    v17->_channel = v26;
  }

  v28 = 0;
LABEL_24:
  if (!v17->_channel)
  {
    if (a7)
    {
      if (v28)
      {
        v32 = v28;
        *a7 = v28;
      }

      else
      {
        v33 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
        *a7 = v33;
      }
    }

    v34[2](v34, 2);

    v17 = 0;
  }

  self = v17;

  _Block_object_dispose(v41, 8);
  v29 = self;
LABEL_20:

  return v29;
}

- (TSUFileIOChannel)initWithType:(unint64_t)a3 descriptor:(int)a4 cleanupHandler:(id)a5
{
  v8 = a5;
  v21.receiver = self;
  v21.super_class = TSUFileIOChannel;
  v9 = [(TSUFileIOChannel *)&v21 init];
  if (v9)
  {
    v10 = v9;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("TSUFileIOChannel.IO", v11);
    ioQueue = v10->_ioQueue;
    v10->_ioQueue = v12;

    v14 = v10->_ioQueue;
    cleanup_handler[0] = MEMORY[0x277D85DD0];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = sub_2770D5D44;
    cleanup_handler[3] = &unk_27A7030C0;
    v20 = v8;
    v15 = dispatch_io_create(a3, a4, v14, cleanup_handler);
    channel = v10->_channel;
    v10->_channel = v15;

    if (!v10->_channel)
    {

      v10 = 0;
    }

    v17 = v10;
  }

  else
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 12);
    }

    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_isClosed);
  if ((v3 & 1) == 0)
  {
    channel = self->_channel;
    if (channel)
    {
      dispatch_io_close(channel, 0);
    }
  }

  v5.receiver = self;
  v5.super_class = TSUFileIOChannel;
  [(TSUFileIOChannel *)&v5 dealloc];
}

- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = atomic_load(&self->_isClosed);
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel readFromOffset:length:handler:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:217 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  p_ioQueue = &self->_ioQueue;
  ioQueue = self->_ioQueue;
  v13 = p_ioQueue[1];
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = sub_2770D5FC0;
  io_handler[3] = &unk_27A7030E8;
  v17 = v8;
  v15 = v8;
  dispatch_io_read(v13, a3, a4, ioQueue, io_handler);
}

- (void)writeData:(id)a3 offset:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = atomic_load(&self->_isClosed);
  if (v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel writeData:offset:handler:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:239 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!v8)
  {
    v8 = MEMORY[0x277D85CC8];
    v13 = MEMORY[0x277D85CC8];
  }

  size = dispatch_data_get_size(v8);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  p_ioQueue = &self->_ioQueue;
  ioQueue = self->_ioQueue;
  v16 = p_ioQueue[1];
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = sub_2770D6220;
  io_handler[3] = &unk_27A703110;
  v21 = v23;
  v22 = size;
  v20 = v9;
  v18 = v9;
  dispatch_io_write(v16, a4, v8, ioQueue, io_handler);

  _Block_object_dispose(v23, 8);
}

- (void)close
{
  if ((atomic_exchange(&self->_isClosed, 1u) & 1) == 0)
  {
    if (self->_channel || ([MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel close]"], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"), v4 = objc_claimAutoreleasedReturnValue(), +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, v4, 263, 0, "invalid nil value for '%{public}s'", "_channel"), v4, v3, +[TSUAssertionHandler logBacktraceThrottled](TSUAssertionHandler, "logBacktraceThrottled"), self->_channel))
    {
      if (+[TSUFileIOChannel shouldFullFsyncOnClose])
      {
        if ((self->_oflag & 3) != 0)
        {
          v5 = dispatch_semaphore_create(0);
          channel = self->_channel;
          barrier[0] = MEMORY[0x277D85DD0];
          barrier[1] = 3221225472;
          barrier[2] = sub_2770D6480;
          barrier[3] = &unk_27A702450;
          barrier[4] = self;
          v7 = v5;
          v9 = v7;
          dispatch_io_barrier(channel, barrier);
          dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      dispatch_io_close(self->_channel, 0);
    }
  }
}

- (void)setLowWater:(unint64_t)a3
{
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel setLowWater:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:295 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  channel = self->_channel;

  dispatch_io_set_low_water(channel, a3);
}

- (void)addBarrier:(id)a3
{
  barrier = a3;
  v4 = atomic_load(&self->_isClosed);
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel addBarrier:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:301 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  dispatch_io_barrier(self->_channel, barrier);
}

- (void)flushWithCompletion:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel flushWithCompletion:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:307 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  channel = self->_channel;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2770D68C4;
  v10[3] = &unk_27A702858;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_io_barrier(channel, v10);
}

- (void)truncateToLength:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = atomic_load(&self->_isClosed);
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel truncateToLength:completion:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:325 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  channel = self->_channel;
  barrier[0] = MEMORY[0x277D85DD0];
  barrier[1] = 3221225472;
  barrier[2] = sub_2770D6B14;
  barrier[3] = &unk_27A703138;
  v13 = v6;
  v14 = a3;
  barrier[4] = self;
  v11 = v6;
  dispatch_io_barrier(channel, barrier);
}

- (BOOL)isValid
{
  v4 = atomic_load(&self->_isClosed);
  if (v4)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  descriptor = dispatch_io_get_descriptor(self->_channel);
  v7 = 0;
  return read(descriptor, &v7, 0) == 0;
}

@end