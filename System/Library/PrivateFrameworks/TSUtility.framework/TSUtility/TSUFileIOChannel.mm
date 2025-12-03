@interface TSUFileIOChannel
- (TSUFileIOChannel)initWithType:(unint64_t)type URL:(id)l oflag:(int)oflag mode:(unsigned __int16)mode;
- (TSUFileIOChannel)initWithType:(unint64_t)type channel:(id)channel;
- (id)createRandomAccessChannel;
- (void)addBarrier:(id)barrier;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length queue:(id)queue handler:(id)handler;
- (void)setLowWater:(unint64_t)water;
- (void)writeData:(id)data offset:(int64_t)offset queue:(id)queue handler:(id)handler;
- (void)writeData:(id)data queue:(id)queue handler:(id)handler;
@end

@implementation TSUFileIOChannel

- (TSUFileIOChannel)initWithType:(unint64_t)type URL:(id)l oflag:(int)oflag mode:(unsigned __int16)mode
{
  modeCopy = mode;
  lCopy = l;
  v11 = lCopy;
  if (lCopy && [lCopy isFileURL] && (v28.receiver = self, v28.super_class = TSUFileIOChannel, (self = -[TSUFileIOChannel init](&v28, sel_init)) != 0))
  {
    path = [v11 path];
    v13 = path;
    if (path)
    {
      if ((oflag & 0x400) != 0)
      {
        unlink([path fileSystemRepresentation]);
      }

      v14 = TSUOpen(v13, oflag, modeCopy);
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
        v17 = dispatch_io_create(type, v15, v16, cleanup_handler);
        channel = self->_channel;
        self->_channel = v17;
      }
    }

    if (!self->_channel)
    {

      self = 0;
    }

    self = self;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (TSUFileIOChannel)initWithType:(unint64_t)type channel:(id)channel
{
  channelCopy = channel;
  v12.receiver = self;
  v12.super_class = TSUFileIOChannel;
  v7 = [(TSUFileIOChannel *)&v12 init];
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9 = dispatch_io_create_with_io(type, channelCopy, v8, &__block_literal_global_8);
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

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
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
  v18 = handlerCopy;
  v16 = handlerCopy;
  dispatch_io_read(channel, offset, length, queueCopy, io_handler);
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

- (void)writeData:(id)data queue:(id)queue handler:(id)handler
{
  dataCopy = data;
  queueCopy = queue;
  handlerCopy = handler;
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
  v17 = handlerCopy;
  v15 = handlerCopy;
  dispatch_io_write(channel, 0, dataCopy, queueCopy, io_handler);
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

- (void)writeData:(id)data offset:(int64_t)offset queue:(id)queue handler:(id)handler
{
  dataCopy = data;
  queueCopy = queue;
  handlerCopy = handler;
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
  v19 = handlerCopy;
  v17 = handlerCopy;
  dispatch_io_write(channel, offset, dataCopy, queueCopy, io_handler);
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

- (void)setLowWater:(unint64_t)water
{
  if (self->_isClosed)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFileIOChannel setLowWater:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFileIOChannel.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:171 description:@"Channel is closed"];
  }

  channel = self->_channel;

  dispatch_io_set_low_water(channel, water);
}

- (void)addBarrier:(id)barrier
{
  barrier = barrier;
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