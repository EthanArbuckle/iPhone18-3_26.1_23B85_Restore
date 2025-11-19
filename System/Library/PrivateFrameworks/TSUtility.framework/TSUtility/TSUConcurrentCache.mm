@interface TSUConcurrentCache
- (BOOL)hasFlushableContent;
- (TSUConcurrentCache)initWithName:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4;
- (unint64_t)count;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3 andWait:(BOOL)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)unload;
@end

@implementation TSUConcurrentCache

- (TSUConcurrentCache)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSUConcurrentCache;
  v4 = [(TSUCache *)&v7 initWithName:?];
  if (v4)
  {
    v5 = [TSUReadWriteQueue alloc];
    v4->mReadWriteQueue = -[TSUReadWriteQueue initWithIdentifier:](v5, "initWithIdentifier:", [MEMORY[0x277CCACA8] stringWithFormat:@"TSUConcurrentCache:%@", a3]);
  }

  return v4;
}

- (void)dealloc
{
  self->mReadWriteQueue = 0;
  v3.receiver = self;
  v3.super_class = TSUConcurrentCache;
  [(TSUCache *)&v3 dealloc];
}

- (void)unload
{
  mReadWriteQueue = self->mReadWriteQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __28__TSUConcurrentCache_unload__block_invoke;
  v3[3] = &unk_279D65CF0;
  v3[4] = self;
  [(TSUReadWriteQueue *)mReadWriteQueue performAsyncWrite:v3];
}

id __28__TSUConcurrentCache_unload__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = TSUConcurrentCache;
  return objc_msgSendSuper2(&v2, sel_unload);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  mReadWriteQueue = self->mReadWriteQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__TSUConcurrentCache_setObject_forKey___block_invoke;
  v5[3] = &unk_279D66140;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = self;
  [(TSUReadWriteQueue *)mReadWriteQueue performAsyncWrite:v5];
}

id __39__TSUConcurrentCache_setObject_forKey___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = TSUConcurrentCache;
  return objc_msgSendSuper2(&v4, sel_setObject_forKey_, v2, v1);
}

- (id)objectForKey:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__1;
  mReadWriteQueue = self->mReadWriteQueue;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__TSUConcurrentCache_objectForKey___block_invoke;
  v6[3] = &unk_279D66168;
  v6[5] = self;
  v6[6] = &v7;
  v6[4] = a3;
  [(TSUReadWriteQueue *)mReadWriteQueue performSyncRead:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __35__TSUConcurrentCache_objectForKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = TSUConcurrentCache;
  result = objc_msgSendSuper2(&v4, sel_p_objectForKey_, v2);
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (void)removeObjectForKey:(id)a3 andWait:(BOOL)a4
{
  v4 = a4;
  mReadWriteQueue = self->mReadWriteQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__TSUConcurrentCache_removeObjectForKey_andWait___block_invoke;
  v7[3] = &unk_279D65F40;
  v7[4] = a3;
  v7[5] = self;
  [(TSUReadWriteQueue *)mReadWriteQueue performAsyncWrite:v7];
  if (v4)
  {
    [(TSUReadWriteQueue *)self->mReadWriteQueue waitOnInFlightWriters];
  }
}

id __49__TSUConcurrentCache_removeObjectForKey_andWait___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSUConcurrentCache;
  return objc_msgSendSuper2(&v3, sel_removeObjectForKey_, v1);
}

- (void)removeAllObjects
{
  mReadWriteQueue = self->mReadWriteQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__TSUConcurrentCache_removeAllObjects__block_invoke;
  v3[3] = &unk_279D65CF0;
  v3[4] = self;
  [(TSUReadWriteQueue *)mReadWriteQueue performAsyncWrite:v3];
}

id __38__TSUConcurrentCache_removeAllObjects__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = TSUConcurrentCache;
  return objc_msgSendSuper2(&v2, sel_removeAllObjects);
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mReadWriteQueue = self->mReadWriteQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__TSUConcurrentCache_count__block_invoke;
  v5[3] = &unk_279D66190;
  v5[4] = self;
  v5[5] = &v6;
  [(TSUReadWriteQueue *)mReadWriteQueue performSyncRead:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __27__TSUConcurrentCache_count__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = TSUConcurrentCache;
  result = objc_msgSendSuper2(&v3, sel_count);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)hasFlushableContent
{
  v3.receiver = self;
  v3.super_class = TSUConcurrentCache;
  return [(TSUCache *)&v3 hasFlushableContent];
}

- (void)addEntriesFromDictionary:(id)a3
{
  v5 = a3;
  mReadWriteQueue = self->mReadWriteQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__TSUConcurrentCache_addEntriesFromDictionary___block_invoke;
  v7[3] = &unk_279D65F40;
  v7[4] = a3;
  v7[5] = self;
  [(TSUReadWriteQueue *)mReadWriteQueue performAsyncWrite:v7];
}

void __47__TSUConcurrentCache_addEntriesFromDictionary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSUConcurrentCache;
  objc_msgSendSuper2(&v3, sel_p_addEntriesFromDictionary_, v2);
}

- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4
{
  v7 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  mReadWriteQueue = self->mReadWriteQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__TSUConcurrentCache_objectsForKeys_notFoundMarker___block_invoke;
  v11[3] = &unk_279D661B8;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = self;
  v11[7] = &v12;
  [(TSUReadWriteQueue *)mReadWriteQueue performSyncRead:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

id __52__TSUConcurrentCache_objectsForKeys_notFoundMarker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = TSUConcurrentCache;
  result = objc_msgSendSuper2(&v5, sel_p_objectsForKeys_notFoundMarker_, v3, v2);
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

@end