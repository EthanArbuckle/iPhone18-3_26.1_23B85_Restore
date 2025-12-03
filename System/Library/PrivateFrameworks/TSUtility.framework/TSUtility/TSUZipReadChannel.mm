@interface TSUZipReadChannel
- (BOOL)processData:(id)data CRC:(unsigned int *)c isDone:(BOOL)done queue:(id)queue handler:(id)handler;
- (BOOL)readFileHeaderFromData:(id)data headerLength:(unint64_t *)length;
- (TSUZipReadChannel)initWithEntry:(id)entry archiveReadChannel:(id)channel;
- (void)handleFailureWithQueue:(id)queue handler:(id)handler error:(id)error;
- (void)readWithHeaderLength:(unint64_t)length queue:(id)queue handler:(id)handler;
- (void)readWithQueue:(id)queue handler:(id)handler;
@end

@implementation TSUZipReadChannel

- (TSUZipReadChannel)initWithEntry:(id)entry archiveReadChannel:(id)channel
{
  entryCopy = entry;
  channelCopy = channel;
  v15.receiver = self;
  v15.super_class = TSUZipReadChannel;
  v9 = [(TSUZipReadChannel *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entry, entry);
    objc_storeStrong(&v10->_archiveReadChannel, channel);
    v11 = dispatch_queue_create("TSUZipReadChannel.Read", 0);
    readQueue = v10->_readQueue;
    v10->_readQueue = v11;

    v13 = v10;
  }

  return v10;
}

- (void)readWithQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (self->_archiveReadChannel)
  {
    if ([(TSUZipEntry *)self->_entry compressedSize]>= 0xFFFFFFFF)
    {
      v8 = +[TSUAssertionHandler currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel readWithQueue:handler:]"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m"];
      [v8 handleFailureInFunction:v9 file:v10 lineNumber:51 description:@"No support for Zip 64"];
    }

    nameLength = [(TSUZipEntry *)self->_entry nameLength];
    extraFieldLength = [(TSUZipEntry *)self->_entry extraFieldLength];
    compressedSize = [(TSUZipEntry *)self->_entry compressedSize];
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = 1;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = crc32(0, 0, 0);
    archiveReadChannel = self->_archiveReadChannel;
    offset = [(TSUZipEntry *)self->_entry offset];
    v16 = nameLength + extraFieldLength + 30;
    readQueue = self->_readQueue;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__TSUZipReadChannel_readWithQueue_handler___block_invoke;
    v21[3] = &unk_279D666C8;
    v24 = v31;
    v21[4] = self;
    v22 = queueCopy;
    v23 = handlerCopy;
    v25 = v35;
    v26 = v33;
    v27 = v29;
    v28 = v16;
    [(TSUReadChannel *)archiveReadChannel readFromOffset:offset length:v16 + compressedSize queue:readQueue handler:v21];

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v35, 8);
  }

  else
  {
    v18 = +[TSUAssertionHandler currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel readWithQueue:handler:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m"];
    [v18 handleFailureInFunction:v19 file:v20 lineNumber:45 description:@"Already closed"];

    [(TSUZipReadChannel *)self handleFailureWithQueue:queueCopy handler:handlerCopy error:0];
  }
}

void __43__TSUZipReadChannel_readWithQueue_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 56) + 8);
  if (v8 && *(v9 + 24))
  {
    *(v9 + 24) = 0;
    [*(a1 + 32) handleFailureWithQueue:*(a1 + 40) handler:*(a1 + 48) error:v8];
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (!*(v9 + 24))
  {
    goto LABEL_17;
  }

  v10 = *(*(a1 + 64) + 8);
  if (*(v10 + 24))
  {
    goto LABEL_15;
  }

  *(v10 + 24) = 1;
  v20 = 0;
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) readFileHeaderFromData:v7 headerLength:&v20];
  v11 = v20;
  *(*(*(a1 + 72) + 8) + 24) = v20 != *(a1 + 88);
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      [*(a1 + 32) readWithHeaderLength:v11 queue:*(a1 + 40) handler:*(a1 + 48)];
    }

    else
    {
      size = dispatch_data_get_size(v7);
      v13 = size - v11;
      if (size >= v11)
      {
        subrange = dispatch_data_create_subrange(v7, v11, v13);

        v7 = subrange;
      }

      else
      {
        v14 = [*(*(a1 + 32) + 8) name];
        TSULogErrorInFunction("[TSUZipReadChannel readWithQueue:handler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m", 100, @"Read was less than file header size for entry %@", v15, v16, v17, v18, v14);

        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || ([*(a1 + 32) handleFailureWithQueue:*(a1 + 40) handler:*(a1 + 48) error:0], (*(*(*(a1 + 56) + 8) + 24)))
  {
LABEL_15:
    if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) processData:v7 CRC:*(*(a1 + 80) + 8) + 24 isDone:a2 queue:*(a1 + 40) handler:*(a1 + 48)];
    }
  }

LABEL_17:
}

- (BOOL)readFileHeaderFromData:(id)data headerLength:(unint64_t *)length
{
  if (dispatch_data_get_size(data) > 0x1D)
  {
    subrange = dispatch_data_create_subrange(data, 0, 0x1EuLL);
    size_ptr = 0;
    buffer_ptr = 0;
    v14 = dispatch_data_create_map(subrange, &buffer_ptr, &size_ptr);
    v15 = buffer_ptr;
    if (*buffer_ptr == 67324752)
    {
      v16 = *(buffer_ptr + 14);
      if (v16 == [(TSUZipEntry *)self->_entry CRC])
      {
        v17 = *(v15 + 18);
        if ([(TSUZipEntry *)self->_entry compressedSize]== v17)
        {
          v18 = *(v15 + 22);
          if ([(TSUZipEntry *)self->_entry size]== v18)
          {
            *length = *(v15 + 13) + *(v15 + 14) + 30;
            v12 = 1;
LABEL_11:

            return v12;
          }
        }
      }

      name = [(TSUZipEntry *)self->_entry name];
      TSULogErrorInFunction("[TSUZipReadChannel readFileHeaderFromData:headerLength:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m", 153, @"Local file header doesn't match central directory file header for entry %@", v24, v25, v26, v27, name);
    }

    else
    {
      name = [(TSUZipEntry *)self->_entry name];
      TSULogErrorInFunction("[TSUZipReadChannel readFileHeaderFromData:headerLength:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m", 147, @"Local file header has bad signature for entry %@", v20, v21, v22, v23, name);
    }

    v12 = 0;
    goto LABEL_11;
  }

  name2 = [(TSUZipEntry *)self->_entry name];
  TSULogErrorInFunction("[TSUZipReadChannel readFileHeaderFromData:headerLength:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m", 124, @"Read was less than record size for entry %@", v8, v9, v10, v11, name2);

  return 0;
}

- (void)readWithHeaderLength:(unint64_t)length queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (!self->_archiveReadChannel)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel readWithHeaderLength:queue:handler:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:171 description:@"Already closed"];
  }

  if ([(TSUZipEntry *)self->_entry compressedSize]>= 0xFFFFFFFF)
  {
    v13 = +[TSUAssertionHandler currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel readWithHeaderLength:queue:handler:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:174 description:@"No support for Zip 64"];
  }

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 1;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = crc32(0, 0, 0);
  archiveReadChannel = self->_archiveReadChannel;
  offset = [(TSUZipEntry *)self->_entry offset];
  compressedSize = [(TSUZipEntry *)self->_entry compressedSize];
  readQueue = self->_readQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__TSUZipReadChannel_readWithHeaderLength_queue_handler___block_invoke;
  v22[3] = &unk_279D666F0;
  v25 = v29;
  v22[4] = self;
  v20 = queueCopy;
  v23 = v20;
  v21 = handlerCopy;
  v24 = v21;
  v26 = v27;
  [(TSUReadChannel *)archiveReadChannel readFromOffset:offset + length length:compressedSize queue:readQueue handler:v22];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
}

void __56__TSUZipReadChannel_readWithHeaderLength_queue_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = *(*(a1 + 56) + 8);
  if (!v7 || !*(v8 + 24))
  {
    if (!*(v8 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v8 + 24) = 0;
  [*(a1 + 32) handleFailureWithQueue:*(a1 + 40) handler:*(a1 + 48) error:v7];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
LABEL_6:
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) processData:v9 CRC:*(*(a1 + 64) + 8) + 24 isDone:a2 queue:*(a1 + 40) handler:*(a1 + 48)];
  }

LABEL_7:
}

- (BOOL)processData:(id)data CRC:(unsigned int *)c isDone:(BOOL)done queue:(id)queue handler:(id)handler
{
  doneCopy = done;
  dataCopy = data;
  queueCopy = queue;
  handlerCopy = handler;
  if (c && (applier[0] = MEMORY[0x277D85DD0], applier[1] = 3221225472, applier[2] = __58__TSUZipReadChannel_processData_CRC_isDone_queue_handler___block_invoke, applier[3] = &__block_descriptor_40_e47_B40__0__NSObject_OS_dispatch_data__8Q16r_v24Q32l, applier[4] = c, dispatch_data_apply(dataCopy, applier), doneCopy) && [(TSUZipEntry *)self->_entry CRC]!= *c)
  {
    name = [(TSUZipEntry *)self->_entry name];
    TSULogErrorInFunction("[TSUZipReadChannel processData:CRC:isDone:queue:handler:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m", 208, @"CRC does not match for entry %@", v18, v19, v20, v21, name);

    [(TSUZipReadChannel *)self handleFailureWithQueue:queueCopy handler:handlerCopy error:0];
    v15 = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__TSUZipReadChannel_processData_CRC_isDone_queue_handler___block_invoke_2;
    block[3] = &unk_279D66738;
    v24 = handlerCopy;
    v25 = doneCopy;
    v23 = dataCopy;
    dispatch_async(queueCopy, block);

    v15 = 1;
  }

  return v15;
}

uint64_t __58__TSUZipReadChannel_processData_CRC_isDone_queue_handler___block_invoke(uint64_t a1, int a2, int a3, Bytef *buf, unint64_t len)
{
  v7 = **(a1 + 32);
  if (HIDWORD(len))
  {
    __58__TSUZipReadChannel_processData_CRC_isDone_queue_handler___block_invoke_cold_1();
    v8 = -1;
  }

  else
  {
    v8 = len;
  }

  **(a1 + 32) = crc32(v7, buf, v8);
  return 1;
}

- (void)handleFailureWithQueue:(id)queue handler:(id)handler error:(id)error
{
  queueCopy = queue;
  handlerCopy = handler;
  errorCopy = error;
  if (!errorCopy)
  {
    errorCopy = [MEMORY[0x277CCA9B8] tsu_IOErrorWithCode:0];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__TSUZipReadChannel_handleFailureWithQueue_handler_error___block_invoke;
  v12[3] = &unk_279D66388;
  v13 = errorCopy;
  v14 = handlerCopy;
  v10 = errorCopy;
  v11 = handlerCopy;
  dispatch_async(queueCopy, v12);
}

void __58__TSUZipReadChannel_processData_CRC_isDone_queue_handler___block_invoke_cold_1()
{
  v2 = +[TSUAssertionHandler currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel processData:CRC:isDone:queue:handler:]_block_invoke"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipReadChannel.m"];
  [v2 handleFailureInFunction:v0 file:v1 lineNumber:202 description:@"Out-of-bounds type assignment was clamped to max"];
}

@end