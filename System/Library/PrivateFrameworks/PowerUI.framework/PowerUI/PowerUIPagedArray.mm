@interface PowerUIPagedArray
- (PowerUIPagedArray)initWithChunkSize:(int64_t)a3 chunkGetter:(id)a4;
- (id)chunkArrayForIndex:(int64_t)a3;
- (id)objectAtIndex:(int64_t)a3;
- (id)retrieveElementFromMemoryAtIndex:(int64_t)a3;
- (void)loadChunk:(int64_t)a3;
@end

@implementation PowerUIPagedArray

- (PowerUIPagedArray)initWithChunkSize:(int64_t)a3 chunkGetter:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = PowerUIPagedArray;
  v7 = [(PowerUIPagedArray *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_chunkSize = a3;
    v9 = MEMORY[0x21CEF8A60](v6);
    getChunkHandler = v8->_getChunkHandler;
    v8->_getChunkHandler = v9;

    v11 = os_log_create("com.apple.powerui.smartcharging", "utilities.pagedarray");
    log = v8->_log;
    v8->_log = v11;

    *&v8->_endChunkIndex = xmmword_21B8483B0;
    *&v8->_highestIndexInMemory = xmmword_21B8483C0;
    v13 = objc_opt_new();
    chunks = v8->_chunks;
    v8->_chunks = v13;

    [(PowerUIPagedArray *)v8 loadChunk:0];
  }

  return v8;
}

- (id)objectAtIndex:(int64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  if ([(PowerUIPagedArray *)self isIndexInMemory:a3])
  {
    v6 = [(PowerUIPagedArray *)self retrieveElementFromMemoryAtIndex:a3];
    v7 = a3 / self->_chunkSize;
    self->_currentChunkIndex = v7;
    v8 = v7 + 1;
    endChunkIndex = self->_endChunkIndex;
    v10 = [(PowerUIPagedArray *)self chunkArrayForIndex:v7 + 1];

    if (v8 < endChunkIndex && v10 == 0)
    {
      [(PowerUIPagedArray *)self loadChunk:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)loadChunk:(int64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  chunks = self->_chunks;
  v7 = [(PowerUIPagedArray *)self keyForChunkIndex:a3 - 3];
  [(NSMutableDictionary *)chunks removeObjectForKey:v7];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    chunkSize = self->_chunkSize;
    numberOfQueries = self->_numberOfQueries;
    v28 = 134218496;
    v29 = a3;
    v30 = 2048;
    v31 = chunkSize;
    v32 = 2048;
    v33 = numberOfQueries;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Querying for chunk at %lu of size %lu, total queries so far %lu", &v28, 0x20u);
  }

  v11 = self->_chunkSize;
  v12 = (*(self->_getChunkHandler + 2))();
  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = v13;
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    v28 = 138412290;
    v29 = v16;
    _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Received chunk of size %@", &v28, 0xCu);
  }

  if ([v12 count])
  {
    ++self->_numberOfQueries;
    v17 = self->_chunks;
    v18 = [(PowerUIPagedArray *)self keyForChunkIndex:a3];
    [(NSMutableDictionary *)v17 setObject:v12 forKeyedSubscript:v18];

    v19 = self->_chunkSize;
    v20 = [v12 count] + v19 * a3 - 1;
    if (self->_highestIndexInMemory < v20)
    {
      self->_highestIndexInMemory = v20;
    }
  }

  if ([v12 count] != self->_chunkSize)
  {
    self->_endChunkIndex = a3;
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = MEMORY[0x277CCABB0];
      endChunkIndex = self->_endChunkIndex;
      v24 = v21;
      v25 = [v22 numberWithLong:endChunkIndex];
      v26 = [MEMORY[0x277CCABB0] numberWithLong:{-[PowerUIPagedArray countDynamic](self, "countDynamic")}];
      v28 = 138412546;
      v29 = v25;
      v30 = 2112;
      v31 = v26;
      _os_log_impl(&dword_21B766000, v24, OS_LOG_TYPE_DEFAULT, "Marking chunk as end of stream, chunk: %@, countDynamic: %@", &v28, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v5);
  v27 = *MEMORY[0x277D85DE8];
}

- (id)chunkArrayForIndex:(int64_t)a3
{
  chunks = self->_chunks;
  v4 = [(PowerUIPagedArray *)self keyForChunkIndex:a3];
  v5 = [(NSMutableDictionary *)chunks objectForKey:v4];

  return v5;
}

- (id)retrieveElementFromMemoryAtIndex:(int64_t)a3
{
  chunkSize = self->_chunkSize;
  v4 = a3 % chunkSize;
  v5 = [(PowerUIPagedArray *)self chunkArrayForIndex:a3 / chunkSize];
  v6 = [v5 objectAtIndex:v4];

  return v6;
}

@end