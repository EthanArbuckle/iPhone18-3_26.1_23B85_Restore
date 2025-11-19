@interface TSPTemporaryDataStorage
- (TSPTemporaryDataStorage)initWithURL:(id)a3 decryptionKey:(id)a4;
- (void)dealloc;
- (void)performIOChannelReadWithAccessor:(id)a3;
- (void)performReadWithAccessor:(id)a3;
@end

@implementation TSPTemporaryDataStorage

- (TSPTemporaryDataStorage)initWithURL:(id)a3 decryptionKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v7 isFileURL] & 1) == 0)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPTemporaryDataStorage initWithURL:decryptionKey:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPTemporaryDataStorage.mm"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:29 description:@"Expected a file URL"];
  }

  v16.receiver = self;
  v16.super_class = TSPTemporaryDataStorage;
  v12 = [(TSPTemporaryDataStorage *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_URL, a3);
    objc_storeStrong(&v13->_decryptionKey, a4);
    v14 = v13;
  }

  return v13;
}

- (void)dealloc
{
  if (!self->_isMissingData)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    URL = self->_URL;
    v12 = 0;
    v5 = [v3 removeItemAtURL:URL error:&v12];
    v6 = v12;
    if ((v5 & 1) == 0)
    {
      v7 = [(NSURL *)self->_URL path];
      v8 = [v7 stringByDeletingLastPathComponent];

      if ([v3 fileExistsAtPath:v8])
      {
        v9 = self->_URL;
        v10 = v6;
        TSULogErrorInFunction();
      }
    }
  }

  v11.receiver = self;
  v11.super_class = TSPTemporaryDataStorage;
  [(TSPTemporaryDataStorage *)&v11 dealloc:v9];
}

- (void)performReadWithAccessor:(id)a3
{
  v4 = a3;
  if (self->_isMissingData)
  {
    URL = 0;
  }

  else
  {
    URL = self->_URL;
  }

  v6 = v4;
  (*(v4 + 2))(v4, URL);
}

- (void)performIOChannelReadWithAccessor:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__TSPTemporaryDataStorage_performIOChannelReadWithAccessor___block_invoke;
  v6[3] = &unk_279D471F8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TSPTemporaryDataStorage *)self performReadWithAccessor:v6];
}

void __60__TSPTemporaryDataStorage_performIOChannelReadWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277D6C2D0]) initForReadingURL:v3];
  v5 = v4;
  if (*(*(a1 + 32) + 16))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D6C298]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__TSPTemporaryDataStorage_performIOChannelReadWithAccessor___block_invoke_2;
    v9[3] = &unk_279D471D0;
    v9[4] = *(a1 + 32);
    v8 = [v7 initWithReadChannel:v5 streamReadChannelBlock:v9];
    (*(*(a1 + 40) + 16))();
  }
}

TSPCryptoReadChannel *__60__TSPTemporaryDataStorage_performIOChannelReadWithAccessor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[TSPCryptoReadChannel alloc] initWithReadChannel:v3 decryptionKey:*(*(a1 + 32) + 16)];

  return v4;
}

@end