@interface TSUFileIOChannel
- (TSUFileIOChannel)initWithType:(unint64_t)a3 URL:(id)a4 oflag:(int)a5 mode:(unsigned __int16)a6;
- (TSUFileIOChannel)initWithType:(unint64_t)a3 channel:(id)a4;
- (id)createRandomAccessChannel;
- (void)addBarrier:(id)a3;
- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 queue:(id)a5 handler:(id)a6;
- (void)setLowWater:(unint64_t)a3;
- (void)writeData:(id)a3 offset:(int64_t)a4 queue:(id)a5 handler:(id)a6;
- (void)writeData:(id)a3 queue:(id)a4 handler:(id)a5;
@end

@implementation TSUFileIOChannel

- (TSUFileIOChannel)initWithType:(unint64_t)a3 URL:(id)a4 oflag:(int)a5 mode:(unsigned __int16)a6
{
  v6 = a6;
  v10 = a4;
  v11 = v10;
  if (v10 && [v10 isFileURL] && (v28.receiver = self, v28.super_class = TSUFileIOChannel, (self = -[TSUFileIOChannel init](&v28, sel_init)) != 0))
  {
    v12 = [v11 path];
    v13 = v12;
    if (v12)
    {
      if ((a5 & 0x400) != 0)
      {
        unlink([v12 fileSystemRepresentation]);
      }

      v14 = TSUOpen(v13, a5, v6);
      if (v14 < 0)
      {
        v21 = __error();
        strerror(*v21);
        TSULogErrorInFunction("[TSUFileIOChannel initWithType:URL:oflag:mode:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m", 58, @"Error opening file at path %@: %s", v22, v23, v24, v25, v13);
      }

      else
      {
        v15 = v14;
        v16 = dispatch_get_global_queue(0, 0);
        cleanup_handler[0] = MEMORY[0x277D85DD0];
        cleanup_handler[1] = 3221225472;
        cleanup_handler[2] = __48__TSUFileIOChannel_initWithType_URL_oflag_mode___block_invoke;
        cleanup_handler[3] = &__block_descriptor_36_e8_v12__0i8l;
        v27 = v15;
        v17 = dispatch_io_create(a3, v15, v16, cleanup_handler);
        channel = self->_channel;
        self->_channel = v17;
      }
    }

    if (!self->_channel)
    {

      self = 0;
    }

    self = self;

    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __48__TSUFileIOChannel_initWithType_URL_oflag_mode___block_invoke(uint64_t a1, int a2)
{
  close(*(a1 + 32));
  if (a2)
  {
    v3 = strerror(a2);
    TSULogErrorInFunction("[TSUFileIOChannel initWithType:URL:oflag:mode:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m", 52, @"Error creating dispatch channel: %s", v4, v5, v6, v7, v3);
  }
}

- (TSUFileIOChannel)initWithType:(unint64_t)a3 channel:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TSUFileIOChannel;
  v7 = [(TSUFileIOChannel *)&v12 init];
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9 = dispatch_io_create_with_io(a3, v6, v8, &__block_literal_global_8);
    channel = v7->_channel;
    v7->_channel = v9;

    if (!v7->_channel)
    {

      v7 = 0;
    }
  }

  return v7;
}

void __41__TSUFileIOChannel_initWithType_channel___block_invoke(int a1, int __errnum)
{
  if (__errnum)
  {
    v2 = strerror(__errnum);
    TSULogErrorInFunction("[TSUFileIOChannel initWithType:channel:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m", 102, @"Error creating dispatch channel: %s", v3, v4, v5, v6, v2);
  }
}

- (id)createRandomAccessChannel
{
  if (self->_isClosed)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel createRandomAccessChannel]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:121 description:@"Channel is closed"];
  }

  v6 = [objc_alloc(objc_opt_class()) initWithType:1 channel:self->_channel];

  return v6;
}

- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 queue:(id)a5 handler:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (self->_isClosed)
  {
    v12 = +[TSUAssertionHandler currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel readFromOffset:length:queue:handler:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:128 description:@"Channel is closed"];
  }

  channel = self->_channel;
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = __56__TSUFileIOChannel_readFromOffset_length_queue_handler___block_invoke;
  io_handler[3] = &unk_279D66960;
  v18 = v11;
  v16 = v11;
  dispatch_io_read(channel, a3, a4, v10, io_handler);
}

void __56__TSUFileIOChannel_readFromOffset_length_queue_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x277CCA9B8] tsu_IOReadErrorWithErrno:a4];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)writeData:(id)a3 queue:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_isClosed)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel writeData:queue:handler:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:143 description:@"Channel is closed"];
  }

  channel = self->_channel;
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = __44__TSUFileIOChannel_writeData_queue_handler___block_invoke;
  io_handler[3] = &unk_279D66960;
  v17 = v10;
  v15 = v10;
  dispatch_io_write(channel, 0, v8, v9, io_handler);
}

void __44__TSUFileIOChannel_writeData_queue_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x277CCA9B8] tsu_IOWriteErrorWithErrno:a4];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)writeData:(id)a3 offset:(int64_t)a4 queue:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (self->_isClosed)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel writeData:offset:queue:handler:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:154 description:@"Channel is closed"];
  }

  channel = self->_channel;
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = __51__TSUFileIOChannel_writeData_offset_queue_handler___block_invoke;
  io_handler[3] = &unk_279D66960;
  v19 = v12;
  v17 = v12;
  dispatch_io_write(channel, a4, v10, v11, io_handler);
}

void __51__TSUFileIOChannel_writeData_offset_queue_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x277CCA9B8] tsu_IOWriteErrorWithErrno:a4];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setLowWater:(unint64_t)a3
{
  if (self->_isClosed)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel setLowWater:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:171 description:@"Channel is closed"];
  }

  channel = self->_channel;

  dispatch_io_set_low_water(channel, a3);
}

- (void)addBarrier:(id)a3
{
  barrier = a3;
  if (self->_isClosed)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel addBarrier:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:178 description:@"Channel is closed"];
  }

  dispatch_io_barrier(self->_channel, barrier);
}

@end