@interface TSTConcurrentMutableIndexSet
- (BOOL)containsIndex:(unint64_t)index;
- (TSTConcurrentMutableIndexSet)init;
- (void)addIndex:(unint64_t)index;
- (void)dealloc;
- (void)enumerateIndexesUsingBlock:(id)block;
- (void)removeAllIndexes;
@end

@implementation TSTConcurrentMutableIndexSet

- (TSTConcurrentMutableIndexSet)init
{
  v7.receiver = self;
  v7.super_class = TSTConcurrentMutableIndexSet;
  v2 = [(TSTConcurrentMutableIndexSet *)&v7 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_rwLock, 0);
    v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
    mutableIndexSet = v3->_mutableIndexSet;
    v3->_mutableIndexSet = v4;
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwLock);
  v3.receiver = self;
  v3.super_class = TSTConcurrentMutableIndexSet;
  [(TSTConcurrentMutableIndexSet *)&v3 dealloc];
}

- (void)enumerateIndexesUsingBlock:(id)block
{
  blockCopy = block;
  pthread_rwlock_rdlock(&self->_rwLock);
  objc_msgSend_enumerateIndexesUsingBlock_(self->_mutableIndexSet, v5, blockCopy, v6, v7);

  pthread_rwlock_unlock(&self->_rwLock);
}

- (void)addIndex:(unint64_t)index
{
  pthread_rwlock_rdlock(&self->_rwLock);
  v8 = objc_msgSend_containsIndex_(self->_mutableIndexSet, v5, index, v6, v7);
  pthread_rwlock_unlock(&self->_rwLock);
  if ((v8 & 1) == 0)
  {
    pthread_rwlock_wrlock(&self->_rwLock);
    objc_msgSend_addIndex_(self->_mutableIndexSet, v9, index, v10, v11);

    pthread_rwlock_unlock(&self->_rwLock);
  }
}

- (BOOL)containsIndex:(unint64_t)index
{
  pthread_rwlock_rdlock(&self->_rwLock);
  LOBYTE(index) = objc_msgSend_containsIndex_(self->_mutableIndexSet, v5, index, v6, v7);
  pthread_rwlock_unlock(&self->_rwLock);
  return index;
}

- (void)removeAllIndexes
{
  pthread_rwlock_wrlock(&self->_rwLock);
  objc_msgSend_removeAllIndexes(self->_mutableIndexSet, v3, v4, v5, v6);

  pthread_rwlock_unlock(&self->_rwLock);
}

@end