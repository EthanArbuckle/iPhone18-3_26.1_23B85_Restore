@interface TSUZipArchive
- (BOOL)readCentralFileHeaderWithBuffer:(const void *)a3 dataSize:(unint64_t *)a4;
- (TSUReadChannel)readChannel;
- (TSUZipArchive)init;
- (id)debugDescription;
- (id)readChannelForEntry:(id)a3;
- (unint64_t)archiveLength;
- (void)addEntry:(id)a3;
- (void)enumerateEntriesUsingBlock:(id)a3;
- (void)readArchiveWithQueue:(id)a3 completion:(id)a4;
- (void)readCentralDirectoryData:(id)a3 entryCount:(unint64_t)a4 queue:(id)a5 completion:(id)a6;
- (void)readCentralDirectoryWithEntryCount:(unint64_t)a3 offset:(int64_t)a4 size:(int64_t)a5 channel:(id)a6 queue:(id)a7 completion:(id)a8;
- (void)readEndOfCentralDirectoryData:(id)a3 channel:(id)a4 queue:(id)a5 completion:(id)a6;
@end

@implementation TSUZipArchive

- (TSUZipArchive)init
{
  v6.receiver = self;
  v6.super_class = TSUZipArchive;
  v2 = [(TSUZipArchive *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    entries = v2->_entries;
    v2->_entries = v3;
  }

  return v2;
}

- (void)readArchiveWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TSUZipArchive *)self archiveLength];
  v9 = dispatch_get_global_queue(0, 0);
  v10 = [(TSUZipArchive *)self readChannel];
  v11 = v10;
  if (v10)
  {
    [v10 setLowWater:-1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke;
    v17[3] = &unk_279D663B0;
    v17[4] = self;
    v18 = v11;
    v19 = v6;
    v20 = v7;
    v12 = v7;
    [v18 readFromOffset:v8 - 22 length:22 queue:v9 handler:v17];

    v13 = v18;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_3;
    block[3] = &unk_279D663D8;
    v16 = v7;
    v14 = v7;
    dispatch_async(v6, block);
    v13 = v16;
  }
}

void __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive readArchiveWithQueue:completion:]_block_invoke"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipArchive.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:54 description:@"Partial read"];
  }

  if (v8)
  {
    [*(a1 + 40) close];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_2;
    v13[3] = &unk_279D66388;
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v14 = v8;
    dispatch_async(v12, v13);
  }

  else
  {
    [*(a1 + 32) readEndOfCentralDirectoryData:v7 channel:*(a1 + 40) queue:*(a1 + 48) completion:*(a1 + 56)];
  }
}

void __49__TSUZipArchive_readArchiveWithQueue_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] tsu_IOErrorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)readEndOfCentralDirectoryData:(id)a3 channel:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  size_ptr = 0;
  buffer_ptr = 0;
  v17 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  if (size_ptr == 22 || (+[TSUAssertionHandler currentHandler](TSUAssertionHandler, "currentHandler"), v18 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive readEndOfCentralDirectoryData:channel:queue:completion:]"], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipArchive.m"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "handleFailureInFunction:file:lineNumber:description:", v19, v20, 91, @"Wrong data size"), v20, v19, v18, size_ptr >= 0x16))
  {
    if (*buffer_ptr == 101010256)
    {
      if (*(buffer_ptr + 2) || *(buffer_ptr + 3))
      {
        v21 = @"Don't support multi-disk";
        v22 = 106;
      }

      else
      {
        if (*(buffer_ptr + 5) != 0xFFFFLL && *(buffer_ptr + 4) != -1)
        {
          v13 = *(buffer_ptr + 3);
          if (v13 != -1)
          {
            [TSUZipArchive readCentralDirectoryWithEntryCount:"readCentralDirectoryWithEntryCount:offset:size:channel:queue:completion:" offset:? size:? channel:? queue:? completion:?];
            goto LABEL_10;
          }
        }

        v21 = @"Don't support Zip 64";
        v22 = 113;
      }
    }

    else
    {
      v21 = @"Don't support end of central directory comments";
      v22 = 100;
    }

    TSULogErrorInFunction("[TSUZipArchive readEndOfCentralDirectoryData:channel:queue:completion:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipArchive.m", v22, v21, v13, v14, v15, v16, v23);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__TSUZipArchive_readEndOfCentralDirectoryData_channel_queue_completion___block_invoke;
  block[3] = &unk_279D663D8;
  v25 = v12;
  dispatch_async(v11, block);

LABEL_10:
}

void __72__TSUZipArchive_readEndOfCentralDirectoryData_channel_queue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] tsu_IOErrorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)readCentralDirectoryWithEntryCount:(unint64_t)a3 offset:(int64_t)a4 size:(int64_t)a5 channel:(id)a6 queue:(id)a7 completion:(id)a8
{
  v14 = a7;
  v15 = a8;
  v16 = dispatch_get_global_queue(0, 0);
  v17 = a6;
  [v17 setLowWater:-1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__TSUZipArchive_readCentralDirectoryWithEntryCount_offset_size_channel_queue_completion___block_invoke;
  v20[3] = &unk_279D66400;
  v20[4] = self;
  v21 = v14;
  v22 = v15;
  v23 = a3;
  v18 = v15;
  v19 = v14;
  [v17 readFromOffset:a4 length:a5 queue:v16 handler:v20];
}

void __89__TSUZipArchive_readCentralDirectoryWithEntryCount_offset_size_channel_queue_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive readCentralDirectoryWithEntryCount:offset:size:channel:queue:completion:]_block_invoke"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipArchive.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:147 description:@"Partial read"];
  }

  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __89__TSUZipArchive_readCentralDirectoryWithEntryCount_offset_size_channel_queue_completion___block_invoke_2;
    v13[3] = &unk_279D66388;
    v12 = *(a1 + 40);
    v15 = *(a1 + 48);
    v14 = v8;
    dispatch_async(v12, v13);
  }

  else
  {
    [*(a1 + 32) readCentralDirectoryData:v7 entryCount:*(a1 + 56) queue:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)readCentralDirectoryData:(id)a3 entryCount:(unint64_t)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  if (!a4)
  {
    goto LABEL_7;
  }

  v13 = 1;
  do
  {
    v14 = [(TSUZipArchive *)self readCentralFileHeaderWithBuffer:&buffer_ptr dataSize:&size_ptr];
    if (!v14)
    {
      break;
    }
  }

  while (v13++ < a4);
  if (!v14)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__TSUZipArchive_readCentralDirectoryData_entryCount_queue_completion___block_invoke_2;
    block[3] = &unk_279D663D8;
    v16 = &v21;
    v21 = v11;
    v19 = v11;
    v18 = block;
  }

  else
  {
LABEL_7:
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__TSUZipArchive_readCentralDirectoryData_entryCount_queue_completion___block_invoke;
    v22[3] = &unk_279D66388;
    v16 = &v23;
    v22[4] = self;
    v23 = v11;
    v17 = v11;
    v18 = v22;
  }

  dispatch_async(v10, v18);
}

void __70__TSUZipArchive_readCentralDirectoryData_entryCount_queue_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] tsu_IOErrorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (BOOL)readCentralFileHeaderWithBuffer:(const void *)a3 dataSize:(unint64_t *)a4
{
  v7 = objc_alloc_init(TSUZipEntry);
  v12 = v7;
  if (*a4 <= 0x2D)
  {
    v16 = @"Central directory too short";
    v17 = 217;
    goto LABEL_9;
  }

  v13 = *a3;
  v14 = *a3 + 46;
  v15 = **a3;
  *a4 -= 46;
  *a3 = v14;
  if (v15 != 33639248)
  {
    v16 = @"Central directory file header has bad signature";
    v17 = 223;
    goto LABEL_9;
  }

  if (v13[2])
  {
    v16 = @"Encrypted files are not supported";
    v17 = 229;
    goto LABEL_9;
  }

  if (*(v13 + 17))
  {
    v16 = @"No multi-disk support";
    v17 = 235;
LABEL_9:
    TSULogErrorInFunction("[TSUZipArchive readCentralFileHeaderWithBuffer:dataSize:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipArchive.m", v17, v16, v8, v9, v10, v11, v27);
    goto LABEL_10;
  }

  if (*(v13 + 5))
  {
    v16 = @"No compression support";
    v17 = 241;
    goto LABEL_9;
  }

  [(TSUZipEntry *)v7 setCRC:v13[4]];
  [(TSUZipEntry *)v12 setCompressedSize:v13[5]];
  [(TSUZipEntry *)v12 setSize:v13[6]];
  [(TSUZipEntry *)v12 setOffset:*(v13 + 42)];
  [(TSUZipEntry *)v12 setNameLength:*(v13 + 14)];
  [(TSUZipEntry *)v12 setExtraFieldLength:*(v13 + 15)];
  if (*a4 < *(v13 + 14))
  {
    v16 = @"Central directory too short";
    v17 = 274;
    goto LABEL_9;
  }

  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*a3 length:*(v13 + 14) encoding:4];
  [(TSUZipEntry *)v12 setName:v20];
  v21 = *(v13 + 14);
  v22 = *a4 - v21;
  *a4 = v22;
  v23 = *a3 + v21;
  *a3 = v23;
  if (!v20)
  {
    v16 = @"Couldn't read name";
    v17 = 268;
    goto LABEL_9;
  }

  v24 = *(v13 + 16) + *(v13 + 15);
  v25 = v22 >= v24;
  v26 = v22 - v24;
  if (v25)
  {
    *a4 = v26;
    *a3 = &v23[v24];
    [(TSUZipArchive *)self addEntry:v12];

    v18 = 1;
    goto LABEL_11;
  }

  TSULogErrorInFunction("[TSUZipArchive readCentralFileHeaderWithBuffer:dataSize:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipArchive.m", 290, @"Central directory too short", v8, v9, v10, v11, v27);

LABEL_10:
  v18 = 0;
LABEL_11:

  return v18;
}

- (void)addEntry:(id)a3
{
  entries = self->_entries;
  v4 = a3;
  v5 = [v4 name];
  [(NSMutableDictionary *)entries setObject:v4 forKeyedSubscript:v5];
}

- (id)readChannelForEntry:(id)a3
{
  v4 = a3;
  entries = self->_entries;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)entries objectForKeyedSubscript:v6];

  if (v7 == v4)
  {
    v12 = [TSUZipReadChannel alloc];
    v8 = [(TSUZipArchive *)self readChannel];
    v11 = [(TSUZipReadChannel *)v12 initWithEntry:v4 archiveReadChannel:v8];
  }

  else
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive readChannelForEntry:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipArchive.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:319 description:@"Entry isn't part of this archive"];

    v11 = 0;
  }

  return v11;
}

- (void)enumerateEntriesUsingBlock:(id)a3
{
  v4 = a3;
  entries = self->_entries;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__TSUZipArchive_enumerateEntriesUsingBlock___block_invoke;
  v7[3] = &unk_279D66428;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)entries enumerateKeysAndObjectsUsingBlock:v7];
}

- (unint64_t)archiveLength
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive archiveLength]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipArchive.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:344 description:@"Abstract method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Abstract method", "-[TSUZipArchive archiveLength]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (TSUReadChannel)readChannel
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive readChannel]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipArchive.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:349 description:@"Abstract method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Abstract method", "-[TSUZipArchive readChannel]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)debugDescription
{
  v3 = [TSUDescription descriptionWithObject:self class:objc_opt_class()];
  v4 = [(TSUZipArchive *)self readChannel];
  v5 = TSUObjectReferenceDescription(v4);
  [v3 addField:@"readChannel" value:v5];

  v6 = TSUCFArrayDescription([(NSMutableDictionary *)self->_entries allValues]);
  [v3 addField:@"entries" value:v6];

  v7 = [v3 descriptionString];

  return v7;
}

@end