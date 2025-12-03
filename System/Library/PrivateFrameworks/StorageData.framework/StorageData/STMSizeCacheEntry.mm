@interface STMSizeCacheEntry
- (STMSizeCacheEntry)initWithContainer:(id)container;
- (STMSizeCacheEntry)initWithPath:(id)path;
- (STMSizeCacheEntry)initWithURL:(id)l usingFastSizingIfPossible:(BOOL)possible;
- (void)calculateSize;
@end

@implementation STMSizeCacheEntry

- (STMSizeCacheEntry)initWithContainer:(id)container
{
  containerCopy = container;
  v5 = [containerCopy url];
  path = [v5 path];
  v7 = [(STMSizeCacheEntry *)self initWithPath:path];
  if (v7)
  {
    v8 = STSharedContainerSizingQueue();
    [(STMSizeCacheEntry *)v7 setDispatchQueue:v8];

    [(STMSizeCacheEntry *)v7 setItem:containerCopy];
    [(STMSizeCacheEntry *)v7 setSizingBlock:&__block_literal_global];
  }

  return v7;
}

id __50__STMSizeCacheEntry_Container__initWithContainer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = [a2 diskUsageWithError:&v10];
  v5 = v10;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    *a3 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  }

  return v8;
}

- (STMSizeCacheEntry)initWithURL:(id)l usingFastSizingIfPossible:(BOOL)possible
{
  lCopy = l;
  path = [lCopy path];
  v8 = [(STMSizeCacheEntry *)self initWithPath:path];

  if (v8)
  {
    v9 = STSharedPathSizingOpQueue();
    [(STMSizeCacheEntry *)v8 setQueue:v9];

    [(STMSizeCacheEntry *)v8 setItem:lCopy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__STMSizeCacheEntry_URL__initWithURL_usingFastSizingIfPossible___block_invoke;
    v11[3] = &unk_279D1D160;
    v12 = lCopy;
    possibleCopy = possible;
    [(STMSizeCacheEntry *)v8 setSizingBlock:v11];
  }

  return v8;
}

id __64__STMSizeCacheEntry_URL__initWithURL_usingFastSizingIfPossible___block_invoke(uint64_t a1)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v2 = [*(a1 + 32) path];
  STMSizeOfFileTree(v2, *(a1 + 40), v5);

  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*&v5[0]];

  return v3;
}

- (STMSizeCacheEntry)initWithPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = STMSizeCacheEntry;
  v5 = [(STMSizeCacheEntry *)&v12 init];
  if (v5)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    if ([defaultManager fileExistsAtPath:pathCopy isDirectory:&v11] && v11 == 1)
    {
      v7 = STMakeDirPath(pathCopy);

      pathCopy = v7;
    }

    objc_storeStrong(&v5->_itemPath, pathCopy);
    v8 = objc_opt_new();
    calculateLock = v5->_calculateLock;
    v5->_calculateLock = v8;
  }

  return v5;
}

- (void)calculateSize
{
  if ([(STMSizeCacheEntry *)self status]== 2)
  {
    itemPath = [(STMSizeCacheEntry *)self itemPath];
    STLog(0, @"[STMSizeCacheEntry calculateSize]: Cache entry %@ will not be updated because it's valid", v3, v4, v5, v6, v7, v8, itemPath);
  }

  else
  {
    [(NSLock *)self->_calculateLock lock];
    if ([(STMSizeCacheEntry *)self status]== 2)
    {
      calculateLock = self->_calculateLock;

      [(NSLock *)calculateLock unlock];
    }

    else
    {
      [(STMSizeCacheEntry *)self setStatus:1];
      sizingBlock = self->_sizingBlock;
      if (sizingBlock)
      {
        item = self->_item;
        v24 = 0;
        v12 = sizingBlock[2](sizingBlock, item, &v24);
        v19 = v24;
        if (!v12)
        {
          STLog(2, @"Error sizing cache entry for path %@", v13, v14, v15, v16, v17, v18, self->_itemPath);
        }

        [(STMSizeCacheEntry *)self setItemSize:v12];
      }

      else
      {
        itemSize = [(STMSizeCacheEntry *)self itemSize];

        if (!itemSize)
        {
          [(STMSizeCacheEntry *)self setItemSize:&unk_287C8E6C8];
        }
      }

      itemSize2 = [(STMSizeCacheEntry *)self itemSize];
      if (itemSize2)
      {
        v22 = 2;
      }

      else
      {
        v22 = 5;
      }

      [(STMSizeCacheEntry *)self setStatus:v22];

      [(NSLock *)self->_calculateLock unlock];
    }
  }
}

@end