@interface PXGAnimationDataStore
- (NSIndexSet)activeGroupIndexes;
- (NSString)diagnosticDescription;
- (PXGAnimationDataStore)init;
- (id)spriteIndexesExpiringAtTime:(double)a3;
- (unsigned)checkOutGroup;
- (void)_resizeStorageToGroupIndex:(unsigned __int16)a3;
- (void)applySpriteChangeDetails:(id)a3;
- (void)dealloc;
- (void)increaseMappedSpriteCountBy:(unsigned int)a3 usingAnimationIndex:(unsigned __int16)a4;
- (void)setMappedAnimationCount:(unsigned __int16)a3;
- (void)setMappedSpriteCount:(unsigned int)a3;
- (void)setSpriteCount:(unsigned int)a3;
@end

@implementation PXGAnimationDataStore

- (PXGAnimationDataStore)init
{
  v7.receiver = self;
  v7.super_class = PXGAnimationDataStore;
  v2 = [(PXGAnimationDataStore *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
    activeGroupIndexes = v2->_activeGroupIndexes;
    v2->_activeGroupIndexes = v3;

    [(PXGAnimationDataStore *)v2 _resizeStorageToGroupIndex:0];
    groupInfos = v2->_groupInfos;
    *(&groupInfos->var6 + 4) = 0u;
    *&groupInfos->var4.var1 = 0u;
    *&groupInfos->var5 = 0u;
    *&groupInfos->var0 = 0u;
    *&groupInfos->var2 = 0u;
  }

  return v2;
}

- (NSIndexSet)activeGroupIndexes
{
  v2 = [(NSMutableIndexSet *)self->_activeGroupIndexes copy];

  return v2;
}

- (NSString)diagnosticDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p\n", v5, self];

  v7 = [(PXGAnimationDataStore *)self spriteCount];
  v8 = v7;
  [v6 appendFormat:@"%li sprites:\n", v7];
  v9 = [(PXGAnimationDataStore *)self spriteInfos];
  if (v7)
  {
    v10 = v9;
    for (i = 0; i != v7; ++i)
    {
      memcpy(__dst, v10, sizeof(__dst));
      v12 = PXGAnimationSpriteInfoDescription(__dst);
      [v6 appendFormat:@"\t%li\t%@\n", i, v12];

      v10 = (v10 + 307);
    }

    [v6 appendFormat:@"Animation indexes:\n"];
    v13 = 0;
    do
    {
      [v6 appendFormat:@"\t%li\t%hu\n", v13, self->_animationIndexBySpriteIndex[v13]];
      ++v13;
    }

    while (v8 != v13);
  }

  else
  {
    [v6 appendFormat:@"Animation indexes:\n"];
  }

  [v6 appendFormat:@"%li active groups:\n", -[NSMutableIndexSet count](self->_activeGroupIndexes, "count")];
  activeGroupIndexes = self->_activeGroupIndexes;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__PXGAnimationDataStore_diagnosticDescription__block_invoke;
  v18[3] = &unk_2782AAF40;
  v15 = v6;
  v19 = v15;
  v20 = self;
  [(NSMutableIndexSet *)activeGroupIndexes enumerateIndexesUsingBlock:v18];
  [v15 appendString:@">"];
  v16 = v15;

  return v15;
}

void __46__PXGAnimationDataStore_diagnosticDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = ([*(a1 + 40) groupInfos] + 76 * a2);
  v5 = v4[3];
  v8[2] = v4[2];
  v9[0] = v5;
  *(v9 + 12) = *(v4 + 60);
  v6 = v4[1];
  v8[0] = *v4;
  v8[1] = v6;
  v7 = PXGAnimationGroupInfoDescription(v8);
  [v3 appendFormat:@"\t%li\t%@\n", a2, v7];
}

- (void)setMappedAnimationCount:(unsigned __int16)a3
{
  v3 = a3;
  mappedAnimationCount = self->_mappedAnimationCount;
  self->_mappedAnimationCount = a3;
  mappedAnimationCapacity = self->_mappedAnimationCapacity;
  if (mappedAnimationCapacity < a3)
  {
    if (self->_mappedAnimationCapacity)
    {
      do
      {
        LOWORD(mappedAnimationCapacity) = 2 * mappedAnimationCapacity;
      }

      while ((mappedAnimationCapacity & 0xFFFE) < a3);
    }

    else
    {
      LOWORD(mappedAnimationCapacity) = a3;
    }

    self->_mappedAnimationCapacity = mappedAnimationCapacity;
    self->_groupIndexByAnimationIndex = malloc_type_realloc(self->_groupIndexByAnimationIndex, 2 * mappedAnimationCapacity, 0x42760281uLL);
  }

  if (mappedAnimationCount < v3)
  {
    v7 = &self->_groupIndexByAnimationIndex[mappedAnimationCount];

    bzero(v7, 2 * (v3 - mappedAnimationCount));
  }
}

- (void)increaseMappedSpriteCountBy:(unsigned int)a3 usingAnimationIndex:(unsigned __int16)a4
{
  v7 = [(PXGAnimationDataStore *)self mappedSpriteCount];
  v8 = v7 + a3;
  [(PXGAnimationDataStore *)self setMappedSpriteCount:v8];
  if (v7 < v8)
  {
    v9 = 0;
    v10 = v8 - v7;
    v11 = vdupq_n_s64(v10 - 1);
    v12 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = &self->_animationIndexBySpriteIndex[v7 + 4];
    do
    {
      v14 = vdupq_n_s64(v9);
      v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_21AE2D360)));
      if (vuzp1_s8(vuzp1_s16(v15, *v11.i8), *v11.i8).u8[0])
      {
        *(v13 - 4) = a4;
      }

      if (vuzp1_s8(vuzp1_s16(v15, *&v11), *&v11).i8[1])
      {
        *(v13 - 3) = a4;
      }

      if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_21AE2D350)))), *&v11).i8[2])
      {
        *(v13 - 2) = a4;
        *(v13 - 1) = a4;
      }

      v16 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_21AE2D340)));
      if (vuzp1_s8(*&v11, vuzp1_s16(v16, *&v11)).i32[1])
      {
        *v13 = a4;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(v16, *&v11)).i8[5])
      {
        v13[1] = a4;
      }

      if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_21AE2D330))))).i8[6])
      {
        v13[2] = a4;
        v13[3] = a4;
      }

      v9 += 8;
      v13 += 8;
    }

    while (v12 != v9);
  }
}

- (void)setMappedSpriteCount:(unsigned int)a3
{
  self->_mappedSpriteCount = a3;
  mappedSpriteCapacity = self->_mappedSpriteCapacity;
  if (mappedSpriteCapacity < a3)
  {
    if (mappedSpriteCapacity)
    {
      do
      {
        mappedSpriteCapacity *= 2;
      }

      while (mappedSpriteCapacity < a3);
    }

    else
    {
      mappedSpriteCapacity = a3;
    }

    self->_mappedSpriteCapacity = mappedSpriteCapacity;
    self->_animationIndexBySpriteIndex = malloc_type_realloc(self->_animationIndexBySpriteIndex, 2 * mappedSpriteCapacity, 0x42760281uLL);
  }
}

- (void)_resizeStorageToGroupIndex:(unsigned __int16)a3
{
  v3 = a3 + 1;
  groupCapacity = self->_groupCapacity;
  if (groupCapacity < (a3 + 1))
  {
    if (!self->_groupCapacity)
    {
      groupCapacity = 10;
      self->_groupCapacity = 10;
    }

    if (groupCapacity < v3)
    {
      do
      {
        LOWORD(groupCapacity) = 2 * groupCapacity;
      }

      while ((groupCapacity & 0xFFFE) < v3);
      self->_groupCapacity = groupCapacity;
    }

    self->_groupInfos = malloc_type_realloc(self->_groupInfos, 76 * groupCapacity, 0x42760281uLL);
  }
}

- (unsigned)checkOutGroup
{
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = [(NSMutableIndexSet *)self->_activeGroupIndexes containsIndex:v3++];
  }

  while ((v5 & 1) != 0);
  [(PXGAnimationDataStore *)self _resizeStorageToGroupIndex:v4];
  [(NSMutableIndexSet *)self->_activeGroupIndexes addIndex:v4];
  return v4;
}

- (id)spriteIndexesExpiringAtTime:(double)a3
{
  v5 = [(PXGAnimationDataStore *)self spriteCount];
  v6 = [(PXGAnimationDataStore *)self spriteInfos];
  v7 = [(PXGAnimationDataStore *)self groupInfos];
  if (v5)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = &v6->var23.var1 + 2;
    do
    {
      if (*v11)
      {
        v12 = v8 + 76 * *(v11 - 1);
        if (*(v12 + 2) <= a3 && !*(v12 + 52))
        {
          if (!v10)
          {
            v10 = [MEMORY[0x277CCAB58] indexSet];
          }

          [v10 addIndex:v9];
        }
      }

      ++v9;
      v11 += 307;
    }

    while (v5 != v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)applySpriteChangeDetails:(id)a3
{
  v4 = a3;
  -[PXGAnimationDataStore setSpriteCount:](self, "setSpriteCount:", [v4 numberOfSpritesAfterChange] - objc_msgSend(v4, "numberOfSpritesBeforeChange") + -[PXGAnimationDataStore spriteCount](self, "spriteCount"));
  spriteInfos = self->_spriteInfos;
  v6 = [(PXGAnimationDataStore *)self spriteCount];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PXGAnimationDataStore_applySpriteChangeDetails___block_invoke;
  v7[3] = &unk_2782A7EA8;
  v7[4] = self;
  [v4 applyToArray:spriteInfos elementSize:307 countAfterChanges:v6 insertionHandler:v7 modifiedHandler:0];
}

uint64_t __50__PXGAnimationDataStore_applySpriteChangeDetails___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = (HIDWORD(a2) + a2);
  if (v2 > a2)
  {
    v3 = v2 - a2;
    v4 = 307 * a2;
    do
    {
      v5 = *(*(result + 32) + 48) + v4;
      *(v5 + 272) = 0uLL;
      *(v5 + 288) = 0uLL;
      *(v5 + 240) = 0uLL;
      *(v5 + 256) = 0uLL;
      *(v5 + 208) = 0uLL;
      *(v5 + 224) = 0uLL;
      *(v5 + 176) = 0uLL;
      *(v5 + 192) = 0uLL;
      *(v5 + 144) = 0uLL;
      *(v5 + 160) = 0uLL;
      *(v5 + 112) = 0uLL;
      *(v5 + 128) = 0uLL;
      *(v5 + 80) = 0uLL;
      *(v5 + 96) = 0uLL;
      *(v5 + 48) = 0uLL;
      *(v5 + 64) = 0uLL;
      *(v5 + 16) = 0uLL;
      *(v5 + 32) = 0uLL;
      *v5 = 0uLL;
      *(v5 + 303) = 0;
      v4 += 307;
      --v3;
    }

    while (v3);
  }

  return result;
}

- (void)setSpriteCount:(unsigned int)a3
{
  self->_spriteCount = a3;
  spriteCapacity = self->_spriteCapacity;
  if (spriteCapacity < a3)
  {
    if (spriteCapacity)
    {
      do
      {
        spriteCapacity *= 2;
      }

      while (spriteCapacity < a3);
    }

    else
    {
      spriteCapacity = a3;
    }

    self->_spriteCapacity = spriteCapacity;
    self->_spriteInfos = malloc_type_realloc(self->_spriteInfos, 307 * spriteCapacity, 0x42760281uLL);
  }
}

- (void)dealloc
{
  free(self->_spriteInfos);
  free(self->_groupInfos);
  free(self->_animationIndexBySpriteIndex);
  free(self->_groupIndexByAnimationIndex);
  v3.receiver = self;
  v3.super_class = PXGAnimationDataStore;
  [(PXGAnimationDataStore *)&v3 dealloc];
}

@end