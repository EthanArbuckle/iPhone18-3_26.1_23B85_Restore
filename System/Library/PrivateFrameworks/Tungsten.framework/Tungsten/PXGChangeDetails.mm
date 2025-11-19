@interface PXGChangeDetails
- (NSString)description;
- (NSString)diagnosticDescription;
- (PXArrayChangeDetails)arrayChangeDetails;
- (PXGChangeDetails)inverse;
- (_PXGSpriteIndexRange)replaceRemovalsWithMovesToEndForIndexes:(id)a3;
- (_PXGSpriteIndexRange)splitIndexesIntoMovesToEndAndReinsertions:(id)a3;
- (const)spriteIndexAfterChangeBySpriteIndexBeforeChange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexSetAfterApplyingChangeDetails:(id)a3;
- (void)_invalidateCachedArrayChangeDetails;
- (void)_resizeStorageIfNeeded;
- (void)applySpriteTransferMap:(const unsigned int *)a3;
- (void)applyToArray:(void *)a3 elementSize:(unint64_t)a4 countAfterChanges:(unint64_t)a5 insertionHandler:(id)a6 modifiedHandler:(id)a7;
- (void)applyToDictionary:(id)a3 removalHandler:(id)a4;
- (void)applyToSpriteIndexes:(unsigned int *)a3 atIndexes:(id)a4;
- (void)configureWithNumberOfSpritesAfterChange:(unsigned int)a3 changeDetails:(id)a4;
- (void)dealloc;
- (void)increaseNumberOfSpritesBy:(unsigned int)a3;
- (void)removeSpritesAtIndexes:(id)a3;
@end

@implementation PXGChangeDetails

- (void)_invalidateCachedArrayChangeDetails
{
  cachedArrayChangeDetails = self->_cachedArrayChangeDetails;
  self->_cachedArrayChangeDetails = 0;
}

- (void)_resizeStorageIfNeeded
{
  numberOfSpritesBeforeChange = self->_numberOfSpritesBeforeChange;
  nextSpriteIndexByPreviousSpriteIndexCapacity = self->_nextSpriteIndexByPreviousSpriteIndexCapacity;
  if (nextSpriteIndexByPreviousSpriteIndexCapacity < numberOfSpritesBeforeChange)
  {
    if (!nextSpriteIndexByPreviousSpriteIndexCapacity)
    {
      nextSpriteIndexByPreviousSpriteIndexCapacity = 10;
      self->_nextSpriteIndexByPreviousSpriteIndexCapacity = 10;
    }

    if (nextSpriteIndexByPreviousSpriteIndexCapacity < numberOfSpritesBeforeChange)
    {
      do
      {
        nextSpriteIndexByPreviousSpriteIndexCapacity *= 2;
      }

      while (nextSpriteIndexByPreviousSpriteIndexCapacity < numberOfSpritesBeforeChange);
      self->_nextSpriteIndexByPreviousSpriteIndexCapacity = nextSpriteIndexByPreviousSpriteIndexCapacity;
    }

    self->_nextSpriteIndexByPreviousSpriteIndex = malloc_type_realloc(self->_nextSpriteIndexByPreviousSpriteIndex, 4 * nextSpriteIndexByPreviousSpriteIndexCapacity, 0x42760281uLL);
  }
}

- (PXArrayChangeDetails)arrayChangeDetails
{
  p_cachedArrayChangeDetails = &self->_cachedArrayChangeDetails;
  cachedArrayChangeDetails = self->_cachedArrayChangeDetails;
  if (cachedArrayChangeDetails)
  {
    v4 = cachedArrayChangeDetails;
  }

  else
  {
    if (self->_hasMoves)
    {
      nextSpriteIndexByPreviousSpriteIndex = self->_nextSpriteIndexByPreviousSpriteIndex;
      v7 = malloc_type_malloc(4 * self->_numberOfSpritesBeforeChange, 0x100004052888210uLL);
      v8 = [(NSIndexSet *)self->_spriteIndexesThatWereInserted firstIndex];
      if (self->_numberOfSpritesBeforeChange)
      {
        v9 = v8;
        v10 = 0;
        LODWORD(v11) = 0;
        do
        {
          v12 = nextSpriteIndexByPreviousSpriteIndex[v10];
          if (v12 != -1)
          {
            if (v9 == v11)
            {
              do
              {
                v11 = (v11 + 1);
                v9 = [(NSIndexSet *)self->_spriteIndexesThatWereInserted indexGreaterThanIndex:?];
              }

              while (v9 == v11);
            }

            v12 = v11;
            LODWORD(v11) = v11 + 1;
          }

          v7[v10++] = v12;
        }

        while (v10 < self->_numberOfSpritesBeforeChange);
      }

      v13 = [MEMORY[0x277CCAB58] indexSet];
      Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
      numberOfSpritesBeforeChange = self->_numberOfSpritesBeforeChange;
      if (numberOfSpritesBeforeChange)
      {
        v16 = v7;
        do
        {
          v18 = *nextSpriteIndexByPreviousSpriteIndex++;
          v17 = v18;
          v20 = *v16++;
          v19 = v20;
          if (v17 != v20)
          {
            [v13 addIndex:v17];
            CFDictionarySetValue(Mutable, v17, v19);
          }

          --numberOfSpritesBeforeChange;
        }

        while (numberOfSpritesBeforeChange);
      }

      [v13 count];
      v21 = PXCreateMutableIntegerArrayRef();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __38__PXGChangeDetails_arrayChangeDetails__block_invoke;
      v23[3] = &__block_descriptor_48_e12_v24__0Q8_B16l;
      v23[4] = Mutable;
      v23[5] = v21;
      [v13 enumerateIndexesUsingBlock:v23];
      CFRelease(Mutable);
      free(v7);
    }

    else
    {
      v21 = 0;
      v13 = 0;
    }

    v4 = [objc_alloc(MEMORY[0x277D3CCC8]) initWithIncrementalChangeDetailsRemovedIndexes:self->_spriteIndexesThatWereRemoved insertedIndexes:self->_spriteIndexesThatWereInserted movesToIndexes:v13 movesFromIndexes:v21 changedIndexes:self->_spriteIndexesThatWereModified];
    if (v21)
    {
      CFRelease(v21);
    }

    objc_storeStrong(p_cachedArrayChangeDetails, v4);
  }

  return v4;
}

- (const)spriteIndexAfterChangeBySpriteIndexBeforeChange
{
  if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    return self->_nextSpriteIndexByPreviousSpriteIndex;
  }

  else
  {
    return 0;
  }
}

- (NSString)diagnosticDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p\n", v5, self];

  [v6 appendFormat:@"\tnumberOfSprites beforeChange:%li afterChange:%li\n", self->_numberOfSpritesBeforeChange, self->_numberOfSpritesAfterChange];
  v7 = [(NSIndexSet *)self->_spriteIndexesThatWereRemoved px_shortDescription];
  [v6 appendFormat:@"\tremovedSpriteIndexes: %@\n", v7];

  v8 = [(NSIndexSet *)self->_spriteIndexesThatWereInserted px_shortDescription];
  [v6 appendFormat:@"\tinsertedSpriteIndexes: %@\n", v8];

  v9 = [(NSIndexSet *)self->_spriteIndexesThatWereModified px_shortDescription];
  [v6 appendFormat:@"\tmodifiedSpriteIndexes: %@\n", v9];

  [v6 appendFormat:@"\thasMoves: %i\n", self->_hasMoves];
  if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    nextSpriteIndexByPreviousSpriteIndex = self->_nextSpriteIndexByPreviousSpriteIndex;
    if (nextSpriteIndexByPreviousSpriteIndex)
    {
      if (self->_numberOfSpritesBeforeChange)
      {
        v11 = 0;
        do
        {
          if (nextSpriteIndexByPreviousSpriteIndex[v11] == -1)
          {
            [v6 appendFormat:@"\t\t%li -> %@\n", v11, @"-"];
          }

          else
          {
            v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
            [v6 appendFormat:@"\t\t%li -> %@\n", v11, v12];
          }

          ++v11;
        }

        while (v11 < self->_numberOfSpritesBeforeChange);
      }
    }
  }

  if (*&self->_layoutVersionBeforeChange != 0)
  {
    [v6 appendFormat:@"\tlayoutVersion: %li->%li\n", self->_layoutVersionBeforeChange, self->_layoutVersionAfterChange];
  }

  [v6 appendString:@">"];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 21) = self->_numberOfSpritesBeforeChange;
  *(v4 + 20) = self->_numberOfSpritesAfterChange;
  v5 = [(NSIndexSet *)self->_spriteIndexesThatWereRemoved copy];
  v6 = *(v4 + 3);
  *(v4 + 3) = v5;

  v7 = [(NSIndexSet *)self->_spriteIndexesThatWereInserted copy];
  v8 = *(v4 + 4);
  *(v4 + 4) = v7;

  v9 = [(NSIndexSet *)self->_spriteIndexesThatWereModified copy];
  v10 = *(v4 + 5);
  *(v4 + 5) = v9;

  *(v4 + 48) = self->_hasMoves;
  if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    [v4 _resizeStorageIfNeeded];
    memcpy(*(v4 + 1), self->_nextSpriteIndexByPreviousSpriteIndex, 4 * self->_numberOfSpritesBeforeChange);
  }

  *(v4 + 11) = self->_layoutVersionBeforeChange;
  *(v4 + 12) = self->_layoutVersionAfterChange;
  return v4;
}

void __38__PXGChangeDetails_arrayChangeDetails__block_invoke(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  v4 = *(a1 + 40);

  CFArrayAppendValue(v4, Value);
}

- (void)applyToDictionary:(id)a3 removalHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    v8 = [v6 copy];
    [v6 removeAllObjects];
    nextSpriteIndexByPreviousSpriteIndex = self->_nextSpriteIndexByPreviousSpriteIndex;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__PXGChangeDetails_applyToDictionary_removalHandler___block_invoke;
    v10[3] = &unk_2782A9078;
    v13 = nextSpriteIndexByPreviousSpriteIndex;
    v12 = v7;
    v11 = v6;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __53__PXGChangeDetails_applyToDictionary_removalHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v7 = a3;
  if (*(a1[6] + 4 * [a2 integerValue]) == -1)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v5 = a1[4];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    [v5 setObject:v7 forKeyedSubscript:v6];
  }
}

- (void)applyToArray:(void *)a3 elementSize:(unint64_t)a4 countAfterChanges:(unint64_t)a5 insertionHandler:(id)a6 modifiedHandler:(id)a7
{
  v13 = a6;
  v14 = a7;
  if (self->_numberOfSpritesAfterChange != a5)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXGChangeDetails.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"countAfterChanges == _numberOfSpritesAfterChange"}];
  }

  numberOfSpritesBeforeChange = self->_numberOfSpritesBeforeChange;
  if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    v16 = numberOfSpritesBeforeChange * a4;
    tempBufferCapacity = self->_tempBufferCapacity;
    if (tempBufferCapacity >= (numberOfSpritesBeforeChange * a4))
    {
      tempBuffer = self->_tempBuffer;
    }

    else
    {
      if (!tempBufferCapacity)
      {
        tempBufferCapacity = 10;
        self->_tempBufferCapacity = 10;
      }

      if (tempBufferCapacity < v16)
      {
        do
        {
          tempBufferCapacity *= 2;
        }

        while (tempBufferCapacity < v16);
        self->_tempBufferCapacity = tempBufferCapacity;
      }

      tempBuffer = malloc_type_realloc(self->_tempBuffer, tempBufferCapacity, 0x649A40F0uLL);
      self->_tempBuffer = tempBuffer;
    }

    memcpy(tempBuffer, a3, numberOfSpritesBeforeChange * a4);
    if (numberOfSpritesBeforeChange)
    {
      nextSpriteIndexByPreviousSpriteIndex = self->_nextSpriteIndexByPreviousSpriteIndex;
      v20 = self->_tempBuffer;
      do
      {
        v22 = *nextSpriteIndexByPreviousSpriteIndex++;
        v21 = v22;
        if (v22 != -1)
        {
          memcpy(a3 + v21 * a4, v20, a4);
        }

        v20 += a4;
        --numberOfSpritesBeforeChange;
      }

      while (numberOfSpritesBeforeChange);
    }

    if (v13)
    {
      spriteIndexesThatWereInserted = self->_spriteIndexesThatWereInserted;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __96__PXGChangeDetails_applyToArray_elementSize_countAfterChanges_insertionHandler_modifiedHandler___block_invoke;
      v28[3] = &unk_2782A9050;
      v29 = v13;
      [(NSIndexSet *)spriteIndexesThatWereInserted enumerateRangesUsingBlock:v28];
    }
  }

  if (v14)
  {
    spriteIndexesThatWereModified = self->_spriteIndexesThatWereModified;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __96__PXGChangeDetails_applyToArray_elementSize_countAfterChanges_insertionHandler_modifiedHandler___block_invoke_2;
    v26[3] = &unk_2782A9050;
    v27 = v14;
    [(NSIndexSet *)spriteIndexesThatWereModified enumerateRangesUsingBlock:v26];
  }
}

- (void)applyToSpriteIndexes:(unsigned int *)a3 atIndexes:(id)a4
{
  v6 = a4;
  if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    nextSpriteIndexByPreviousSpriteIndex = self->_nextSpriteIndexByPreviousSpriteIndex;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__PXGChangeDetails_applyToSpriteIndexes_atIndexes___block_invoke;
    v8[3] = &__block_descriptor_48_e24_v32__0__NSRange_QQ_8_B24l;
    v8[4] = a3;
    v8[5] = nextSpriteIndexByPreviousSpriteIndex;
    [v6 enumerateRangesUsingBlock:v8];
  }
}

uint64_t __51__PXGChangeDetails_applyToSpriteIndexes_atIndexes___block_invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 < a2 + a3)
  {
    v3 = *(result + 40);
    v4 = (*(result + 32) + 4 * a2);
    do
    {
      *v4 = *(v3 + 4 * *v4);
      ++v4;
      --a3;
    }

    while (a3);
  }

  return result;
}

- (id)indexSetAfterApplyingChangeDetails:(id)a3
{
  v4 = a3;
  if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    if (self->_hasMoves)
    {
      nextSpriteIndexByPreviousSpriteIndex = self->_nextSpriteIndexByPreviousSpriteIndex;
      v6 = [MEMORY[0x277CCAB58] indexSet];
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __55__PXGChangeDetails_indexSetAfterApplyingChangeDetails___block_invoke;
      v13 = &unk_2782ABFE0;
      v14 = v6;
      v15 = nextSpriteIndexByPreviousSpriteIndex;
      v7 = v6;
      [v4 enumerateRangesUsingBlock:&v10];
      v8 = [v7 copy];
    }

    else
    {
      v7 = [(PXGChangeDetails *)self arrayChangeDetails];
      v8 = [v7 indexSetAfterApplyingChangesToIndexSet:v4];
    }
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

uint64_t __55__PXGChangeDetails_indexSetAfterApplyingChangeDetails___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  if (a2 + a3 > a2)
  {
    v4 = result;
    v5 = a2;
    v6 = a2 + 1;
    do
    {
      if (*(*(v4 + 40) + 4 * v5) != -1)
      {
        result = [*(v4 + 32) addIndex:?];
      }

      v5 = v6;
    }

    while (v3 > v6++);
  }

  return result;
}

- (PXGChangeDetails)inverse
{
  v3 = objc_alloc_init(PXGChangeDetails);
  v3->_numberOfSpritesBeforeChange = self->_numberOfSpritesAfterChange;
  v3->_numberOfSpritesAfterChange = self->_numberOfSpritesBeforeChange;
  v4 = [(NSIndexSet *)self->_spriteIndexesThatWereInserted copy];
  spriteIndexesThatWereRemoved = v3->_spriteIndexesThatWereRemoved;
  v3->_spriteIndexesThatWereRemoved = v4;

  v6 = [(NSIndexSet *)self->_spriteIndexesThatWereRemoved copy];
  spriteIndexesThatWereInserted = v3->_spriteIndexesThatWereInserted;
  v3->_spriteIndexesThatWereInserted = v6;

  v3->_hasMoves = self->_hasMoves;
  v3->_layoutVersionBeforeChange = self->_layoutVersionAfterChange;
  v3->_layoutVersionAfterChange = self->_layoutVersionBeforeChange;
  if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    v8 = malloc_type_malloc(4 * self->_numberOfSpritesAfterChange, 0x100004052888210uLL);
    v9 = v8;
    if (self->_numberOfSpritesAfterChange)
    {
      v10 = 0;
      do
      {
        v8[v10++] = -1;
        numberOfSpritesAfterChange = self->_numberOfSpritesAfterChange;
      }

      while (v10 < numberOfSpritesAfterChange);
    }

    else
    {
      LODWORD(numberOfSpritesAfterChange) = 0;
    }

    numberOfSpritesBeforeChange = self->_numberOfSpritesBeforeChange;
    if (numberOfSpritesBeforeChange)
    {
      v15 = 0;
      nextSpriteIndexByPreviousSpriteIndex = self->_nextSpriteIndexByPreviousSpriteIndex;
      do
      {
        v17 = nextSpriteIndexByPreviousSpriteIndex[v15];
        if (v17 != -1)
        {
          v8[v17] = v15;
          numberOfSpritesBeforeChange = self->_numberOfSpritesBeforeChange;
        }

        ++v15;
      }

      while (v15 < numberOfSpritesBeforeChange);
      LODWORD(numberOfSpritesAfterChange) = self->_numberOfSpritesAfterChange;
    }

    v3->_nextSpriteIndexByPreviousSpriteIndex = v8;
    v3->_nextSpriteIndexByPreviousSpriteIndexCapacity = numberOfSpritesAfterChange;
    v18 = objc_alloc_init(MEMORY[0x277CCAB58]);
    spriteIndexesThatWereModified = self->_spriteIndexesThatWereModified;
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __27__PXGChangeDetails_inverse__block_invoke;
    v27 = &unk_2782A9008;
    v28 = v18;
    v29 = v9;
    v20 = v18;
    [(NSIndexSet *)spriteIndexesThatWereModified enumerateIndexesUsingBlock:&v24];
    [v20 removeIndex:{0xFFFFFFFFLL, v24, v25, v26, v27}];
    v21 = [v20 copy];
    v22 = v3->_spriteIndexesThatWereModified;
    v3->_spriteIndexesThatWereModified = v21;
  }

  else
  {
    v12 = [(NSIndexSet *)self->_spriteIndexesThatWereModified copy];
    v13 = v3->_spriteIndexesThatWereModified;
    v3->_spriteIndexesThatWereModified = v12;
  }

  return v3;
}

- (void)applySpriteTransferMap:(const unsigned int *)a3
{
  v6 = [(NSIndexSet *)self->_spriteIndexesThatWereRemoved mutableCopy];
  v7 = [(NSIndexSet *)self->_spriteIndexesThatWereInserted mutableCopy];
  v8 = [(NSIndexSet *)self->_spriteIndexesThatWereModified mutableCopy];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  spriteIndexesThatWereRemoved = self->_spriteIndexesThatWereRemoved;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __43__PXGChangeDetails_applySpriteTransferMap___block_invoke;
  v22 = &unk_2782A8FE0;
  v28 = v32;
  v29 = a3;
  v27 = v31;
  v23 = self;
  v10 = v6;
  v24 = v10;
  v11 = v7;
  v25 = v11;
  v30 = a2;
  v12 = v8;
  v26 = v12;
  [(NSIndexSet *)spriteIndexesThatWereRemoved enumerateIndexesUsingBlock:&v19];
  v13 = [v10 copy];
  v14 = self->_spriteIndexesThatWereRemoved;
  self->_spriteIndexesThatWereRemoved = v13;

  v15 = [v11 copy];
  spriteIndexesThatWereInserted = self->_spriteIndexesThatWereInserted;
  self->_spriteIndexesThatWereInserted = v15;

  v17 = [v12 copy];
  spriteIndexesThatWereModified = self->_spriteIndexesThatWereModified;
  self->_spriteIndexesThatWereModified = v17;

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);
}

uint64_t __43__PXGChangeDetails_applySpriteTransferMap___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 64) + 8);
  v3 = *(v2 + 24);
  v4 = *(*(result + 80) + 4 * v3);
  if (v4 != -1)
  {
    v6 = result;
    v7 = *(*(result + 72) + 8);
    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      [*(result + 32) _invalidateLayoutVersions];
      [*(v6 + 32) _invalidateCachedArrayChangeDetails];
      v8 = *(v6 + 32);
      if ((*(v8 + 48) & 1) == 0)
      {
        *(v8 + 48) = 1;
        [*(v6 + 32) _resizeStorageIfNeeded];
      }
    }

    [*(v6 + 40) removeIndex:a2];
    if (([*(v6 + 48) containsIndex:v4] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:*(v6 + 88) object:*(v6 + 32) file:@"PXGChangeDetails.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"[spriteIndexesThatWereInserted containsIndex:mappedSpriteIndex]"}];
    }

    [*(v6 + 48) removeIndex:v4];
    result = [*(v6 + 56) addIndex:v4];
    *(*(*(v6 + 32) + 8) + 4 * a2) = v4;
    v2 = *(*(v6 + 64) + 8);
    v3 = *(v2 + 24);
  }

  *(v2 + 24) = v3 + 1;
  return result;
}

- (_PXGSpriteIndexRange)splitIndexesIntoMovesToEndAndReinsertions:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(PXGChangeDetails *)self _invalidateLayoutVersions];
    [(PXGChangeDetails *)self _invalidateCachedArrayChangeDetails];
    v5 = [(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves];
    numberOfSpritesAfterChange = self->_numberOfSpritesAfterChange;
    self->_numberOfSpritesAfterChange += [v4 count];
    v7 = [(NSIndexSet *)self->_spriteIndexesThatWereInserted mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
    }

    v11 = v9;

    [v11 addIndexes:v4];
    v12 = [v11 copy];
    spriteIndexesThatWereInserted = self->_spriteIndexesThatWereInserted;
    self->_spriteIndexesThatWereInserted = v12;

    v14 = [(NSIndexSet *)self->_spriteIndexesThatWereModified mutableCopy];
    [v14 removeIndexes:v4];
    v15 = [v14 copy];
    spriteIndexesThatWereModified = self->_spriteIndexesThatWereModified;
    self->_spriteIndexesThatWereModified = v15;

    self->_hasMoves = 1;
    [(PXGChangeDetails *)self _resizeStorageIfNeeded];
    if (self->_numberOfSpritesBeforeChange)
    {
      v17 = 0;
      LODWORD(v18) = 0;
      do
      {
        if (v5)
        {
          v19 = self->_nextSpriteIndexByPreviousSpriteIndex[v17];
        }

        else
        {
          v19 = v17;
        }

        v20 = [v4 containsIndex:v19];
        v21 = v18 + numberOfSpritesAfterChange;
        v18 = (v18 + v20);
        if (!v20)
        {
          v21 = v19;
        }

        self->_nextSpriteIndexByPreviousSpriteIndex[v17++] = v21;
      }

      while (v17 < self->_numberOfSpritesBeforeChange);
      v10 = v18 << 32;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    numberOfSpritesAfterChange = 0xFFFFFFFFLL;
  }

  return (v10 | numberOfSpritesAfterChange);
}

- (void)increaseNumberOfSpritesBy:(unsigned int)a3
{
  [(PXGChangeDetails *)self _invalidateLayoutVersions];
  [(PXGChangeDetails *)self _invalidateCachedArrayChangeDetails];
  numberOfSpritesBeforeChange = self->_numberOfSpritesBeforeChange;
  self->_numberOfSpritesAfterChange += a3;
  self->_numberOfSpritesBeforeChange = numberOfSpritesBeforeChange + a3;
  if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    [(PXGChangeDetails *)self _resizeStorageIfNeeded];
    v6 = self->_numberOfSpritesBeforeChange;
    if (numberOfSpritesBeforeChange < v6)
    {
      nextSpriteIndexByPreviousSpriteIndex = self->_nextSpriteIndexByPreviousSpriteIndex;
      v8 = self->_numberOfSpritesAfterChange - v6;
      do
      {
        nextSpriteIndexByPreviousSpriteIndex[numberOfSpritesBeforeChange] = v8 + numberOfSpritesBeforeChange;
        ++numberOfSpritesBeforeChange;
      }

      while (numberOfSpritesBeforeChange < self->_numberOfSpritesBeforeChange);
    }
  }
}

- (void)removeSpritesAtIndexes:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    [(PXGChangeDetails *)self _invalidateLayoutVersions];
    [(PXGChangeDetails *)self _invalidateCachedArrayChangeDetails];
    numberOfSpritesAfterChange = self->_numberOfSpritesAfterChange;
    if ([(PXGChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
    {
      spriteIndexesThatWereRemoved = self->_spriteIndexesThatWereRemoved;
      if (spriteIndexesThatWereRemoved)
      {
        v8 = [(NSIndexSet *)spriteIndexesThatWereRemoved mutableCopy];
        [(NSIndexSet *)v8 addIndexes:v5];
        v9 = [(NSIndexSet *)v8 copy];
        v10 = self->_spriteIndexesThatWereRemoved;
        self->_spriteIndexesThatWereRemoved = v9;
      }

      else
      {
        v20 = [v5 copy];
        v8 = self->_spriteIndexesThatWereRemoved;
        self->_spriteIndexesThatWereRemoved = v20;
      }

      v21 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __43__PXGChangeDetails_removeSpritesAtIndexes___block_invoke;
      v39 = &unk_2782AAF40;
      v22 = v21;
      v40 = v22;
      v41 = self;
      [v5 enumerateIndexesUsingBlock:&v36];
      [v22 removeIndex:{0xFFFFFFFFLL, v36, v37, v38, v39}];
      v23 = [(NSIndexSet *)self->_spriteIndexesThatWereModified px_indexSetAdjustedForDeletions:v22];
      spriteIndexesThatWereModified = self->_spriteIndexesThatWereModified;
      self->_spriteIndexesThatWereModified = v23;

      v25 = [(NSIndexSet *)self->_spriteIndexesThatWereInserted px_indexSetAdjustedForDeletions:v22];
      spriteIndexesThatWereInserted = self->_spriteIndexesThatWereInserted;
      self->_spriteIndexesThatWereInserted = v25;

      v27 = malloc_type_malloc(4 * self->_numberOfSpritesAfterChange, 0x100004052888210uLL);
      if (self->_numberOfSpritesAfterChange)
      {
        v28 = 0;
        v29 = 0;
        do
        {
          v27[v28] = v29;
          v29 += [v22 containsIndex:v28++] ^ 1;
        }

        while (v28 < self->_numberOfSpritesAfterChange);
      }

      numberOfSpritesBeforeChange = self->_numberOfSpritesBeforeChange;
      if (numberOfSpritesBeforeChange)
      {
        v31 = 0;
        nextSpriteIndexByPreviousSpriteIndex = self->_nextSpriteIndexByPreviousSpriteIndex;
        do
        {
          v33 = nextSpriteIndexByPreviousSpriteIndex[v31];
          if (v33 != -1)
          {
            nextSpriteIndexByPreviousSpriteIndex[v31] = v27[v33];
            numberOfSpritesBeforeChange = self->_numberOfSpritesBeforeChange;
          }

          ++v31;
        }

        while (v31 < numberOfSpritesBeforeChange);
      }

      free(v27);
      v19 = [v22 count];
    }

    else
    {
      [(PXGChangeDetails *)self _resizeStorageIfNeeded];
      if (self->_numberOfSpritesBeforeChange)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = [v5 containsIndex:v11];
          if (v13)
          {
            v14 = -1;
          }

          else
          {
            v14 = v12;
          }

          v12 += v13 ^ 1;
          self->_nextSpriteIndexByPreviousSpriteIndex[v11++] = v14;
        }

        while (v11 < self->_numberOfSpritesBeforeChange);
      }

      v15 = [v5 copy];
      v16 = self->_spriteIndexesThatWereRemoved;
      self->_spriteIndexesThatWereRemoved = v15;

      v17 = [(NSIndexSet *)self->_spriteIndexesThatWereModified px_indexSetAdjustedForDeletions:v5];
      v18 = self->_spriteIndexesThatWereModified;
      self->_spriteIndexesThatWereModified = v17;

      v19 = [v5 count];
    }

    v34 = numberOfSpritesAfterChange - v19;
    if (v34 < 0)
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"PXGChangeDetails.m" lineNumber:219 description:{@"Invalid removed indexes, numberOfSpritesAfterChange would be < 0"}];
    }

    self->_numberOfSpritesAfterChange = v34;
  }
}

uint64_t __43__PXGChangeDetails_removeSpritesAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) addIndex:*(*(*(a1 + 40) + 8) + 4 * a2)];
  *(*(*(a1 + 40) + 8) + 4 * a2) = -1;
  return result;
}

- (_PXGSpriteIndexRange)replaceRemovalsWithMovesToEndForIndexes:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2810000000;
  v22 = "";
  v23 = 0xFFFFFFFFLL;
  LODWORD(v23) = self->_numberOfSpritesAfterChange;
  v5 = [(NSIndexSet *)self->_spriteIndexesThatWereRemoved mutableCopy];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __60__PXGChangeDetails_replaceRemovalsWithMovesToEndForIndexes___block_invoke;
  v15 = &unk_2782A8FB8;
  v16 = self;
  v18 = &v19;
  v6 = v5;
  v17 = v6;
  [v4 enumerateIndexesUsingBlock:&v12];
  v7 = v20;
  if (v20[4].length)
  {
    [(PXGChangeDetails *)self _invalidateLayoutVersions:v12];
    [(PXGChangeDetails *)self _invalidateCachedArrayChangeDetails];
    self->_numberOfSpritesAfterChange += v20[4].length;
    v8 = [v6 count];
    if (v8)
    {
      v8 = [v6 copy];
    }

    spriteIndexesThatWereRemoved = self->_spriteIndexesThatWereRemoved;
    self->_spriteIndexesThatWereRemoved = v8;

    self->_hasMoves = 1;
    v7 = v20;
  }

  v10 = v7[4];

  _Block_object_dispose(&v19, 8);
  return v10;
}

uint64_t __60__PXGChangeDetails_replaceRemovalsWithMovesToEndForIndexes___block_invoke(void *a1, uint64_t a2)
{
  result = [*(a1[4] + 24) containsIndex:a2];
  if (result)
  {
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 36);
    v7 = v6 + *(v5 + 32);
    *(v5 + 36) = v6 + 1;
    *(*(a1[4] + 8) + 4 * a2) = v7;
    v8 = a1[5];

    return [v8 removeIndex:a2];
  }

  return result;
}

- (void)configureWithNumberOfSpritesAfterChange:(unsigned int)a3 changeDetails:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(PXGChangeDetails *)self _invalidateLayoutVersions];
  [(PXGChangeDetails *)self _invalidateCachedArrayChangeDetails];
  v55 = self;
  v62 = a3;
  self->_numberOfSpritesAfterChange = a3;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v72 objects:v78 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = *v73;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v73 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v72 + 1) + 8 * i);
        v15 = [v14 insertedIndexes];
        v16 = [v15 count];

        v17 = [v14 removedIndexes];
        v18 = [v17 count];

        if (v11)
        {
          v11 = 1;
        }

        else
        {
          v11 = [v14 hasAnyInsertionsRemovalsOrMoves];
        }

        v10 = v16 + v10 - v18;
      }

      v9 = [v7 countByEnumeratingWithState:&v72 objects:v78 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v19 = v62 - v10;
  if (v19 < 0)
  {
    v54 = [MEMORY[0x277CCA890] currentHandler];
    [v54 handleFailureInMethod:a2 object:v55 file:@"PXGChangeDetails.m" lineNumber:66 description:{@"Invalid change details provided, numberOfSpritesBeforeChange would be < 0"}];
  }

  v20 = v55;
  v55->_numberOfSpritesBeforeChange = v19;
  v58 = [MEMORY[0x277CCAB58] indexSet];
  v21 = [MEMORY[0x277CCAB58] indexSet];
  v59 = [MEMORY[0x277CCAB58] indexSet];
  if (![v7 count])
  {
    goto LABEL_57;
  }

  [(PXGChangeDetails *)v20 _resizeStorageIfNeeded];
  numberOfSpritesBeforeChange = v20->_numberOfSpritesBeforeChange;
  nextSpriteIndexByPreviousSpriteIndex = v20->_nextSpriteIndexByPreviousSpriteIndex;
  if (!v11)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v35 = v7;
    v36 = [v35 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v65;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v65 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v64 + 1) + 8 * j) changedIndexes];
          [v21 addIndexes:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v37);
    }

    if (numberOfSpritesBeforeChange)
    {
      v41 = 0;
      v42 = vdupq_n_s64(numberOfSpritesBeforeChange - 1);
      v43 = xmmword_21AE2D350;
      v44 = xmmword_21AE2D360;
      v45 = nextSpriteIndexByPreviousSpriteIndex + 2;
      v46 = vdupq_n_s64(4uLL);
      do
      {
        v47 = vmovn_s64(vcgeq_u64(v42, v44));
        if (vuzp1_s16(v47, *v42.i8).u8[0])
        {
          *(v45 - 2) = v41;
        }

        if (vuzp1_s16(v47, *&v42).i8[2])
        {
          *(v45 - 1) = v41 + 1;
        }

        if (vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, *&v43))).i32[1])
        {
          *v45 = v41 + 2;
          v45[1] = v41 + 3;
        }

        v41 += 4;
        v43 = vaddq_s64(v43, v46);
        v44 = vaddq_s64(v44, v46);
        v45 += 4;
      }

      while (((numberOfSpritesBeforeChange + 3) & 0x1FFFFFFFCLL) != v41);
    }

    goto LABEL_57;
  }

  [v58 addIndexesInRange:{0, v20->_numberOfSpritesAfterChange}];
  if (!numberOfSpritesBeforeChange)
  {
LABEL_57:
    v24 = 0;
    goto LABEL_58;
  }

  v23 = 0;
  v24 = 0;
  v57 = numberOfSpritesBeforeChange;
  do
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v25 = v7;
    v26 = [v25 countByEnumeratingWithState:&v68 objects:v77 count:16];
    if (v26)
    {
      v27 = v26;
      LOBYTE(v28) = 0;
      v29 = *v69;
      v63 = v23;
      v30 = v23;
      while (2)
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v69 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v68 + 1) + 8 * k);
          if (v24 & 1) != 0 || ([*(*(&v68 + 1) + 8 * k) hasMoves])
          {
            v24 = 1;
          }

          else
          {
            v24 = [v32 hasIncrementalChanges] ^ 1;
          }

          v33 = [v32 indexAfterApplyingChangesToIndex:v30];
          if (v33 == 0x7FFFFFFFFFFFFFFFLL)
          {

            v23 = v63;
            [v59 addIndex:v63];
            LODWORD(v30) = -1;
            numberOfSpritesBeforeChange = v57;
            goto LABEL_39;
          }

          v30 = v33;
          if (v28)
          {
            v28 = 1;
          }

          else
          {
            v34 = [v32 changedIndexes];
            v28 = [v34 containsIndex:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v68 objects:v77 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }

      [v58 removeIndex:v30];
      if (v28)
      {
        [v21 addIndex:v30];
      }

      numberOfSpritesBeforeChange = v57;
      v23 = v63;
    }

    else
    {

      [v58 removeIndex:v23];
      LODWORD(v30) = v23;
    }

LABEL_39:
    nextSpriteIndexByPreviousSpriteIndex[v23++] = v30;
  }

  while (v23 != numberOfSpritesBeforeChange);
LABEL_58:
  v48 = [v58 copy];
  v49 = *(v56 + 32);
  *(v56 + 32) = v48;

  v50 = [v21 copy];
  v51 = *(v56 + 40);
  *(v56 + 40) = v50;

  v52 = [v59 copy];
  v53 = *(v56 + 24);
  *(v56 + 24) = v52;

  *(v56 + 48) = v24 & 1;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXGChangeDetails *)self insertedSpriteIndexes];
  v7 = [v6 count];
  v8 = [(PXGChangeDetails *)self removedSpriteIndexes];
  v9 = [v8 count];
  v10 = [(PXGChangeDetails *)self modifiedSpriteIndexes];
  v11 = [v10 count];
  if (self->_hasMoves)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = v12;
  v14 = [v3 stringWithFormat:@"<%@: %p ins = %lu; del = %lu; mod = %lu; moves = %@>", v5, self, v7, v9, v11, v13];;

  return v14;
}

- (void)dealloc
{
  free(self->_nextSpriteIndexByPreviousSpriteIndex);
  free(self->_tempBuffer);
  v3.receiver = self;
  v3.super_class = PXGChangeDetails;
  [(PXGChangeDetails *)&v3 dealloc];
}

@end