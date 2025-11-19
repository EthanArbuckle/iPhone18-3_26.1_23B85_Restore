@interface PXGBaseTexture
- (BOOL)hasPendingTextureRequestID:(int)a3 deliveryOrder:(unsigned int)a4;
- (BOOL)hasSprites;
- (BOOL)isOpaque;
- (BOOL)removePendingSpriteWithTextureRequestID:(int)a3 ifDeliveredBefore:(unsigned int)a4;
- (CGImage)imageRepresentation;
- (CGSize)pixelSize;
- (NSIndexSet)spriteIndexes;
- (NSString)description;
- (PXGBaseTexture)init;
- (int64_t)estimatedByteSize;
- (unsigned)presentationType;
- (void)_filterPendingTextureRequestIDsWithPredicate:(id)a3;
- (void)_lock_resizeStorageIfNeeded;
- (void)addSpriteWithTextureRequestID:(int)a3 deliveryOrder:(unsigned int)a4;
- (void)applyChangeDetails:(id)a3;
- (void)dealloc;
- (void)enumerateSpriteIndexes:(id)a3;
- (void)getSpriteIndexes:(unsigned int *)a3 maxSpriteCount:(unsigned int)a4;
- (void)processPendingTextureRequestIDsWithHandler:(id)a3;
@end

@implementation PXGBaseTexture

- (PXGBaseTexture)init
{
  v7.receiver = self;
  v7.super_class = PXGBaseTexture;
  v2 = [(PXGBaseTexture *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
    spriteIndexes = v3->_spriteIndexes;
    v3->_spriteIndexes = v4;
  }

  return v3;
}

- (void)_lock_resizeStorageIfNeeded
{
  os_unfair_lock_assert_owner(&self->_lock);
  lock_pendingImageRequestInfoCount = self->_lock_pendingImageRequestInfoCount;
  lock_pendingImageRequestInfoCapacity = self->_lock_pendingImageRequestInfoCapacity;
  if (lock_pendingImageRequestInfoCount > lock_pendingImageRequestInfoCapacity)
  {
    if (!lock_pendingImageRequestInfoCapacity)
    {
      lock_pendingImageRequestInfoCapacity = 4;
      self->_lock_pendingImageRequestInfoCapacity = 4;
    }

    if (lock_pendingImageRequestInfoCount > lock_pendingImageRequestInfoCapacity)
    {
      do
      {
        v5 = lock_pendingImageRequestInfoCount > 2 * lock_pendingImageRequestInfoCapacity;
        lock_pendingImageRequestInfoCapacity *= 2;
      }

      while (v5);
      self->_lock_pendingImageRequestInfoCapacity = lock_pendingImageRequestInfoCapacity;
    }

    self->_lock_pendingImageRequestInfo = malloc_type_realloc(self->_lock_pendingImageRequestInfo, 8 * lock_pendingImageRequestInfoCapacity, 0x42760281uLL);
  }
}

- (NSIndexSet)spriteIndexes
{
  v2 = [(NSMutableIndexSet *)self->_spriteIndexes copy];

  return v2;
}

- (void)dealloc
{
  free(self->_lock_pendingImageRequestInfo);
  v3.receiver = self;
  v3.super_class = PXGBaseTexture;
  [(PXGBaseTexture *)&v3 dealloc];
}

- (BOOL)isOpaque
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGBaseTexture.m" lineNumber:227 description:{@"Method %s is a responsibility of subclass %@", "-[PXGBaseTexture isOpaque]", v6}];

  abort();
}

- (CGSize)pixelSize
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGBaseTexture.m" lineNumber:223 description:{@"Method %s is a responsibility of subclass %@", "-[PXGBaseTexture pixelSize]", v6}];

  abort();
}

- (CGImage)imageRepresentation
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGBaseTexture.m" lineNumber:219 description:{@"Method %s is a responsibility of subclass %@", "-[PXGBaseTexture imageRepresentation]", v6}];

  abort();
}

- (unsigned)presentationType
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGBaseTexture.m" lineNumber:215 description:{@"Method %s is a responsibility of subclass %@", "-[PXGBaseTexture presentationType]", v6}];

  abort();
}

- (int64_t)estimatedByteSize
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGBaseTexture.m" lineNumber:211 description:{@"Method %s is a responsibility of subclass %@", "-[PXGBaseTexture estimatedByteSize]", v6}];

  abort();
}

- (void)applyChangeDetails:(id)a3
{
  v7 = a3;
  if ([v7 hasAnyInsertionsRemovalsOrMoves])
  {
    v4 = [v7 indexSetAfterApplyingChangeDetails:self->_spriteIndexes];
    v5 = [v4 mutableCopy];
    spriteIndexes = self->_spriteIndexes;
    self->_spriteIndexes = v5;
  }
}

- (void)_filterPendingTextureRequestIDsWithPredicate:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_pendingImageRequestInfoCount = self->_lock_pendingImageRequestInfoCount;
  if (lock_pendingImageRequestInfoCount >= 1)
  {
    v5 = lock_pendingImageRequestInfoCount + 1;
    v6 = lock_pendingImageRequestInfoCount;
    do
    {
      if (((*(v7 + 2))(v7, self->_lock_pendingImageRequestInfo[v6 - 1].var0, self->_lock_pendingImageRequestInfo[v6 - 1].var1) & 1) == 0)
      {
        _PXGArrayRemoveRange(self->_lock_pendingImageRequestInfo, 8, self->_lock_pendingImageRequestInfoCount, v5 - 2, 1);
        --self->_lock_pendingImageRequestInfoCount;
      }

      --v5;
      --v6;
    }

    while (v5 > 1);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)processPendingTextureRequestIDsWithHandler:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_pendingImageRequestInfoCount = self->_lock_pendingImageRequestInfoCount;
  if (lock_pendingImageRequestInfoCount >= 1)
  {
    v5 = 0;
    do
    {
      v6 = (*(v7 + 2))(v7, self->_lock_pendingImageRequestInfo[v5].var0, self->_lock_pendingImageRequestInfo[v5].var1);
      if (v6 != -1)
      {
        [(PXGBaseTexture *)self _addSpriteIndex:v6];
      }

      ++v5;
      --lock_pendingImageRequestInfoCount;
    }

    while (lock_pendingImageRequestInfoCount);
  }

  self->_lock_pendingImageRequestInfoCount = 0;
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasPendingTextureRequestID:(int)a3 deliveryOrder:(unsigned int)a4
{
  os_unfair_lock_lock(&self->_lock);
  lock_pendingImageRequestInfoCount = self->_lock_pendingImageRequestInfoCount;
  if (lock_pendingImageRequestInfoCount < 1)
  {
    v11 = 0;
  }

  else
  {
    p_var1 = &self->_lock_pendingImageRequestInfo->var1;
    v9 = 1;
    v10 = self->_lock_pendingImageRequestInfoCount;
    v11 = 1;
    do
    {
      if (*(p_var1 - 1) == a3 && *p_var1 == a4)
      {
        break;
      }

      v11 = v9++ < lock_pendingImageRequestInfoCount;
      p_var1 += 2;
      --v10;
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v11;
}

- (void)enumerateSpriteIndexes:(id)a3
{
  v4 = a3;
  spriteIndexes = self->_spriteIndexes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__PXGBaseTexture_enumerateSpriteIndexes___block_invoke;
  v7[3] = &unk_2782AA5E0;
  v8 = v4;
  v6 = v4;
  [(NSMutableIndexSet *)spriteIndexes enumerateIndexesUsingBlock:v7];
}

- (void)getSpriteIndexes:(unsigned int *)a3 maxSpriteCount:(unsigned int)a4
{
  if ([(PXGBaseTexture *)self spriteCount]< a4)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXGBaseTexture.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"maxSpriteCount <= self.spriteCount"}];
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  spriteIndexes = self->_spriteIndexes;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__PXGBaseTexture_getSpriteIndexes_maxSpriteCount___block_invoke;
  v10[3] = &unk_2782AA5B8;
  v10[4] = v12;
  v10[5] = a3;
  v11 = a4;
  [(NSMutableIndexSet *)spriteIndexes enumerateRangesUsingBlock:v10];
  _Block_object_dispose(v12, 8);
}

uint64_t __50__PXGBaseTexture_getSpriteIndexes_maxSpriteCount___block_invoke(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = a2 + a3;
  if (a2 + a3 > a2)
  {
    v5 = *(result + 40);
    v6 = *(*(*(result + 32) + 8) + 24);
    while (1)
    {
      *(v5 + 4 * v6) = a2;
      v6 = ++*(*(*(result + 32) + 8) + 24);
      if (v6 == *(result + 48))
      {
        break;
      }

      a2 = (a2 + 1);
      if (v4 <= a2)
      {
        return result;
      }
    }

    *a4 = 1;
  }

  return result;
}

- (BOOL)removePendingSpriteWithTextureRequestID:(int)a3 ifDeliveredBefore:(unsigned int)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__PXGBaseTexture_removePendingSpriteWithTextureRequestID_ifDeliveredBefore___block_invoke;
  v6[3] = &unk_2782AA590;
  v7 = a3;
  v8 = a4;
  v6[4] = &v9;
  [(PXGBaseTexture *)self _filterPendingTextureRequestIDsWithPredicate:v6];
  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __76__PXGBaseTexture_removePendingSpriteWithTextureRequestID_ifDeliveredBefore___block_invoke(uint64_t a1, int a2, unsigned int a3)
{
  if (*(a1 + 40) != a2)
  {
    return 1;
  }

  v4 = *(a1 + 44);
  result = 1;
  if (v4 > a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

- (void)addSpriteWithTextureRequestID:(int)a3 deliveryOrder:(unsigned int)a4
{
  os_unfair_lock_lock(&self->_lock);
  lock_pendingImageRequestInfoCount = self->_lock_pendingImageRequestInfoCount;
  self->_lock_pendingImageRequestInfoCount = lock_pendingImageRequestInfoCount + 1;
  [(PXGBaseTexture *)self _lock_resizeStorageIfNeeded];
  v8 = &self->_lock_pendingImageRequestInfo[lock_pendingImageRequestInfoCount];
  v8->var0 = a3;
  v8->var1 = a4;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasSprites
{
  if ([(NSMutableIndexSet *)self->_spriteIndexes count])
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_pendingImageRequestInfoCount != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PXGBaseTexture;
  v4 = [(PXGBaseTexture *)&v9 description];
  lock_pendingImageRequestInfoCount = self->_lock_pendingImageRequestInfoCount;
  v6 = [(NSMutableIndexSet *)self->_spriteIndexes px_shortDescription];
  v7 = [v3 stringWithFormat:@"<%@ pendingRequestIDs:%lu spriteIndexes:%@ >", v4, lock_pendingImageRequestInfoCount, v6];

  return v7;
}

@end