@interface TSTCellDictionary
- (TSTCellDictionary)init;
- (id)allCells;
- (uint64_t)allCells;
- (void)applyBlockToAllCells:(id)cells;
- (void)dealloc;
- (void)removeAllCells;
@end

@implementation TSTCellDictionary

- (TSTCellDictionary)init
{
  v4.receiver = self;
  v4.super_class = TSTCellDictionary;
  v2 = [(TSTCellDictionary *)&v4 init];
  if (v2)
  {
    v2->mDict = objc_alloc_init(MEMORY[0x277D6C300]);
    pthread_rwlock_init(&v2->mDictRWLock, 0);
  }

  return v2;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->mDictRWLock);
  v3.receiver = self;
  v3.super_class = TSTCellDictionary;
  [(TSTCellDictionary *)&v3 dealloc];
}

- (void)removeAllCells
{
  pthread_rwlock_wrlock(&self->mDictRWLock);
  [(TSUIntegerKeyDictionary *)self->mDict removeAllObjects];

  pthread_rwlock_unlock(&self->mDictRWLock);
}

- (id)allCells
{
  v4 = [[TSTEphemeralCellMap alloc] initWithCapacity:1];
  pthread_rwlock_rdlock(&self->mDictRWLock);
  keyEnumerator = [(TSUIntegerKeyDictionary *)self->mDict keyEnumerator];
  nextKey = [keyEnumerator nextKey];
  if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = nextKey; i != 0x7FFFFFFFFFFFFFFFLL; i = [keyEnumerator nextKey])
    {
      if (HIDWORD(i))
      {
        [TSTCellDictionary allCells];
        v9 = -1;
      }

      else
      {
        v9 = i;
      }

      HIDWORD(v10) = v9;
      LODWORD(v10) = v9;
      v2 = v2 & 0xFFFFFFFF00000000 | (v10 >> 16) & 0xFFFFFF;
      [(TSTEphemeralCellMap *)v4 addCell:[(TSUIntegerKeyDictionary *)self->mDict objectForKey:i] andCellID:v2];
    }
  }

  pthread_rwlock_unlock(&self->mDictRWLock);
  return v4;
}

- (void)applyBlockToAllCells:(id)cells
{
  pthread_rwlock_wrlock(&self->mDictRWLock);
  keyEnumerator = [(TSUIntegerKeyDictionary *)self->mDict keyEnumerator];
  nextKey = [keyEnumerator nextKey];
  if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = nextKey; i != 0x7FFFFFFFFFFFFFFFLL; i = [keyEnumerator nextKey])
    {
      (*(cells + 2))(cells, [(TSUIntegerKeyDictionary *)self->mDict objectForKey:i]);
    }
  }

  pthread_rwlock_unlock(&self->mDictRWLock);
}

- (uint64_t)allCells
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellDictionary allCells]"];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellDictionary.m"];

  return [currentHandler handleFailureInFunction:v1 file:v2 lineNumber:63 description:@"Out-of-bounds type assignment was clamped to max"];
}

@end