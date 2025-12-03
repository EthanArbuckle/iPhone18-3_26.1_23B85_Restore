@interface EmbeddingCache
+ (id)embeddingCaches;
- (BOOL)dbWriteValueWithKey:(int64_t)key data:(const void *)data dataLen:(int)len;
- (BOOL)put:(const char *)put value:(id)value;
- (BOOL)put:(const char *)put value:(id)value bundle:(const char *)bundle;
- (id)dbFetchValueWithKey:(int64_t)key;
- (id)get:(const char *)get;
- (id)get:(const char *)get bundle:(const char *)bundle;
- (unsigned)hitRate;
- (void)closeAndDeleteStore:(id)store;
- (void)flush;
- (void)populateFifoStore;
@end

@implementation EmbeddingCache

+ (id)embeddingCaches
{
  if (embeddingCaches_onceToken != -1)
  {
    +[EmbeddingCache embeddingCaches];
  }

  v3 = embeddingCaches_stores;

  return v3;
}

void __33__EmbeddingCache_embeddingCaches__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = embeddingCaches_stores;
  embeddingCaches_stores = v0;
}

- (BOOL)dbWriteValueWithKey:(int64_t)key data:(const void *)data dataLen:(int)len
{
  dsi = self->_dsi;
  obj = db_create_obj();
  v14 = obj;
  if (obj)
  {
    *obj = key;
    v9 = self->_dsi;
    if (db_add_field())
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v10 = SKGLogInit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [EmbeddingCache dbWriteValueWithKey:? data:? dataLen:?];
        }

LABEL_11:
      }
    }

    else
    {
      v12 = self->_dsi;
      if (!db_store_obj())
      {
        v11 = 1;
        goto LABEL_13;
      }

      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v10 = SKGLogInit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [EmbeddingCache dbWriteValueWithKey:? data:? dataLen:?];
        }

        goto LABEL_11;
      }
    }

    v11 = 0;
LABEL_13:
    MEMORY[0x2383779F0](v14);
    return v11;
  }

  return 0;
}

- (id)dbFetchValueWithKey:(int64_t)key
{
  dsi = self->_dsi;
  db_get_obj();
  data = [MEMORY[0x277CBEA90] data];

  return data;
}

- (void)populateFifoStore
{
  self->_fifo.index = 0;
  dsi = self->_dsi;
  db_iterate_objects_in_range();
}

BOOL __35__EmbeddingCache_populateFifoStore__block_invoke(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 32);
  v4 = *(v3 + 400056);
  *(v3 + 400056) = v4 + 1;
  *(v3 + 4 * v4 + 56) = v2;
  return *(*(a1 + 32) + 400056) < 100000;
}

- (void)closeAndDeleteStore:(id)store
{
  dsi = self->_dsi;
  storeCopy = store;
  db_release_datastore();
  parentDirFd = self->_parentDirFd;
  uTF8String = [storeCopy UTF8String];

  MEMORY[0x282187490](parentDirFd, uTF8String, 270336);
}

- (void)flush
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)put:(const char *)put value:(id)value
{
  valueCopy = value;
  if (put && (v7 = strlen(put), v8 = MurmurHash3_x86_32(put, v7), -[EmbeddingCache dbWriteValueWithKey:data:dataLen:](self, "dbWriteValueWithKey:data:dataLen:", v8, [valueCopy bytes], objc_msgSend(valueCopy, "length"))))
  {
    p_fifo = &self->_fifo;
    self->_fifo.index %= 100000;
    if ([(EmbeddingCache *)self itemCount]>> 5 >= 0xC35)
    {
      [(EmbeddingCache *)self deleteFromDb:p_fifo->_data[self->_fifo.index]];
    }

    p_fifo->_data[self->_fifo.index++] = v8;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)get:(const char *)get
{
  if (get)
  {
    v5 = strlen(get);
    data = [(EmbeddingCache *)self dbFetchValueWithKey:MurmurHash3_x86_32(get, v5)];
    v7 = [data length];
    v8 = 40;
    if (!v7)
    {
      v8 = 44;
    }

    ++*(&self->super.isa + v8);
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  return data;
}

- (unsigned)hitRate
{
  hitCount = self->_stats.hitCount;
  v3 = self->_stats.missCount + hitCount;
  if (v3)
  {
    return 100 * hitCount / v3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)put:(const char *)put value:(id)value bundle:(const char *)bundle
{
  v22 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (put && (v9 = strlen(put), v10 = MurmurHash3_x86_32(put, v9), -[EmbeddingCache dbWriteValueWithKey:data:dataLen:](self, "dbWriteValueWithKey:data:dataLen:", v10, [valueCopy bytes], objc_msgSend(valueCopy, "length"))))
  {
    if (!self->_unlimitedCapacity)
    {
      p_fifo = &self->_fifo;
      self->_fifo.index %= 100000;
      if ([(EmbeddingCache *)self itemCount]>= 0x186A1)
      {
        [(EmbeddingCache *)self deleteFromDbForOid:p_fifo->_data[self->_fifo.index]];
      }

      p_fifo->_data[self->_fifo.index++] = v10;
    }

    if (self->_stringFd)
    {
      *__str = 0u;
      v21 = 0u;
      snprintf(__str, 0x20uLL, "#ADD 0x%016llx\n", v10);
      stringFd = self->_stringFd;
      strlen(__str);
      fd_write();
      v13 = self->_stringFd;
      strlen(bundle);
      fd_write();
      v14 = self->_stringFd;
      v15 = 1;
      fd_write();
      v16 = self->_stringFd;
      strlen(put);
      fd_write();
      v17 = self->_stringFd;
      fd_write();
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)get:(const char *)get bundle:(const char *)bundle
{
  v13 = *MEMORY[0x277D85DE8];
  if (!get)
  {
    data = [MEMORY[0x277CBEA90] data];
    goto LABEL_9;
  }

  v6 = strlen(get);
  data = [(EmbeddingCache *)self dbFetchValueWithKey:MurmurHash3_x86_32(get, v6)];
  if ([data length])
  {
    ++self->_stats.hitCount;
    if (!self->_stringFd)
    {
      goto LABEL_9;
    }

    *__str = 0u;
    v12 = 0u;
    snprintf(__str, 0x20uLL, "#HIT 0x%016llx\n");
  }

  else
  {
    ++self->_stats.missCount;
    if (!self->_stringFd)
    {
      goto LABEL_9;
    }

    *__str = 0u;
    v12 = 0u;
    snprintf(__str, 0x20uLL, "#MISS 0x%016llx\n");
  }

  stringFd = self->_stringFd;
  strlen(__str);
  fd_write();
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];

  return data;
}

- (void)dbWriteValueWithKey:(uint64_t)a1 data:dataLen:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dbWriteValueWithKey:(uint64_t)a1 data:dataLen:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dbFetchValueWithKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)initInstanceWithType:(void *)a1 name:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)initInstanceWithType:name:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)initInstanceWithType:(void *)a1 name:.cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)initInstanceWithType:(void *)a1 name:.cold.4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  [a1 fileSystemRepresentation];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteFromDb:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)initInstanceWithType:name:cacheOptions:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)initInstanceWithType:(void *)a1 name:cacheOptions:.cold.4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  [a1 fileSystemRepresentation];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteFromDbForOid:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end