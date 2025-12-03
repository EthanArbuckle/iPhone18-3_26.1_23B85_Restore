@interface PXGLayoutSnapshot
- (CGRect)visibleRect;
- (NSDictionary)spriteIndexesByObjectIdentifier;
- (PXGLayoutSnapshot)init;
- (PXGLayoutSnapshot)initWithLayout:(id)layout spriteDataStore:(id)store;
- (PXGSpriteDataStore)spriteDataStore;
- (void)applyViewportShift:(CGPoint)shift;
- (void)enumerateObjectIdentifiersForInfos:(id *)infos count:(unsigned int)count usingBlock:(id)block;
- (void)enumerateObjectIdentifiersForSpriteIndexes:(id)indexes infos:(id *)infos usingBlock:(id)block;
- (void)enumerateSpritesWithObjectIdentifier:(id)identifier usingBlock:(id)block;
- (void)releaseSpriteDataStore;
@end

@implementation PXGLayoutSnapshot

- (PXGSpriteDataStore)spriteDataStore
{
  spriteDataStore = self->_spriteDataStore;
  if (!spriteDataStore)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayoutSnapshot.m" lineNumber:56 description:@"Attempting to access the sprite data store after it has been released and reused."];

    spriteDataStore = self->_spriteDataStore;
  }

  return spriteDataStore;
}

- (void)releaseSpriteDataStore
{
  spriteDataStore = self->_spriteDataStore;
  self->_spriteDataStore = 0;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)enumerateSpritesWithObjectIdentifier:(id)identifier usingBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  spriteDataStore = [(PXGLayoutSnapshot *)self spriteDataStore];
  if (spriteDataStore)
  {
    spriteIndexesByObjectIdentifier = [(PXGLayoutSnapshot *)self spriteIndexesByObjectIdentifier];
    v10 = [spriteIndexesByObjectIdentifier objectForKeyedSubscript:identifierCopy];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__PXGLayoutSnapshot_enumerateSpritesWithObjectIdentifier_usingBlock___block_invoke;
    v11[3] = &unk_2782A91D0;
    v11[4] = self;
    v12 = blockCopy;
    [v10 enumerateIndexesUsingBlock:v11];
  }
}

uint64_t __69__PXGLayoutSnapshot_enumerateSpritesWithObjectIdentifier_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) spriteDataStore];
  v5 = v4;
  if (v4)
  {
    [v4 spriteAtIndex:a2];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v6 = *(*(&v12 + 1) + 24);
  v7 = *(a1 + 40);
  v8 = *(v7 + 16);
  v10[0] = v11;
  v10[1] = v12;
  return v8(v7, a2, v10, v6);
}

- (void)enumerateObjectIdentifiersForInfos:(id *)infos count:(unsigned int)count usingBlock:(id)block
{
  blockCopy = block;
  v9 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, count}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__PXGLayoutSnapshot_enumerateObjectIdentifiersForInfos_count_usingBlock___block_invoke;
  v11[3] = &unk_2782A91A8;
  v12 = blockCopy;
  v10 = blockCopy;
  [(PXGLayoutSnapshot *)self enumerateObjectIdentifiersForSpriteIndexes:v9 infos:infos usingBlock:v11];
}

- (void)enumerateObjectIdentifiersForSpriteIndexes:(id)indexes infos:(id *)infos usingBlock:(id)block
{
  indexesCopy = indexes;
  blockCopy = block;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__6967;
  v17[4] = __Block_byref_object_dispose__6968;
  v18 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__PXGLayoutSnapshot_enumerateObjectIdentifiersForSpriteIndexes_infos_usingBlock___block_invoke;
  v11[3] = &unk_2782A9180;
  infosCopy = infos;
  v13 = v17;
  v11[4] = self;
  v10 = blockCopy;
  v12 = v10;
  v14 = v16;
  [indexesCopy enumerateRangesUsingBlock:v11];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
}

void __81__PXGLayoutSnapshot_enumerateObjectIdentifiersForSpriteIndexes_infos_usingBlock___block_invoke(void *a1, unint64_t a2, uint64_t a3)
{
  if (a2 < a2 + a3)
  {
    v3 = a3;
    v4 = a2;
    v6 = 40 * a2 + 24;
    do
    {
      v7 = a1[8];
      v8 = *(v7 + v6 + 1);
      if (v8 != [*(*(a1[6] + 8) + 40) dataSourceIdentifier])
      {
        v9 = *(a1[4] + 32);
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
        v11 = [v9 objectForKeyedSubscript:v10];
        v12 = *(a1[6] + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }

      v14 = *(*(a1[6] + 8) + 40);
      if (v14)
      {
        v15 = *(v7 + v6);
        if ([v14 dataSourceIdentifier] == BYTE1(v15) && v15 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          v17 = [*(*(a1[6] + 8) + 40) objectIdentifierForSpriteTag:*(v7 + v6)];
          (*(a1[5] + 16))();
        }
      }

      ++*(*(a1[7] + 8) + 24);
      ++v4;
      v6 += 40;
      --v3;
    }

    while (v3);
  }
}

- (NSDictionary)spriteIndexesByObjectIdentifier
{
  spriteIndexesByObjectIdentifier = self->_spriteIndexesByObjectIdentifier;
  if (!spriteIndexesByObjectIdentifier)
  {
    spriteDataStore = [(PXGLayoutSnapshot *)self spriteDataStore];
    if (spriteDataStore)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      infos = [spriteDataStore infos];
      v7 = [spriteDataStore count];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __52__PXGLayoutSnapshot_spriteIndexesByObjectIdentifier__block_invoke;
      v12[3] = &unk_2782A9158;
      v13 = v5;
      v8 = v5;
      [(PXGLayoutSnapshot *)self enumerateObjectIdentifiersForInfos:infos count:v7 usingBlock:v12];
      v9 = [v8 copy];
      v10 = self->_spriteIndexesByObjectIdentifier;
      self->_spriteIndexesByObjectIdentifier = v9;
    }

    spriteIndexesByObjectIdentifier = self->_spriteIndexesByObjectIdentifier;
  }

  return spriteIndexesByObjectIdentifier;
}

void __52__PXGLayoutSnapshot_spriteIndexesByObjectIdentifier__block_invoke(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v8 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = v6;
    [v6 addIndex:a4];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndex:a4];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

- (void)applyViewportShift:(CGPoint)shift
{
  y = shift.y;
  x = shift.x;
  self->_visibleRect = CGRectOffset(self->_visibleRect, shift.x, shift.y);
  spriteDataStore = [(PXGLayoutSnapshot *)self spriteDataStore];
  v5 = spriteDataStore;
  if (spriteDataStore)
  {
    v13 = spriteDataStore;
    v6 = spriteDataStore;
    geometries = [v13 geometries];
    v8 = [v13 count];
    v5 = v13;
    v9.f64[0] = x;
    if (v8)
    {
      v10 = v8;
      v9.f64[1] = y;
      do
      {
        *geometries = vaddq_f64(v9, *geometries);
        geometries += 2;
        --v10;
      }

      while (v10);
    }
  }
}

- (PXGLayoutSnapshot)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGLayoutSnapshot.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXGLayoutSnapshot init]"}];

  abort();
}

- (PXGLayoutSnapshot)initWithLayout:(id)layout spriteDataStore:(id)store
{
  layoutCopy = layout;
  storeCopy = store;
  v31.receiver = self;
  v31.super_class = PXGLayoutSnapshot;
  v9 = [(PXGLayoutSnapshot *)&v31 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __52__PXGLayoutSnapshot_initWithLayout_spriteDataStore___block_invoke;
    v26[3] = &unk_2782A9130;
    v12 = v10;
    v27 = v12;
    v13 = v11;
    v28 = v13;
    v30 = a2;
    v14 = v9;
    v29 = v14;
    [layoutCopy enumerateDescendantsLayoutsUsingBlock:v26];
    v15 = [v12 copy];
    identifierSourceByDataSourceIdentifier = v14->_identifierSourceByDataSourceIdentifier;
    v14->_identifierSourceByDataSourceIdentifier = v15;

    v17 = [v13 copy];
    identifierSourceByDataSourceIdentifierHash = v14->_identifierSourceByDataSourceIdentifierHash;
    v14->_identifierSourceByDataSourceIdentifierHash = v17;

    [layoutCopy visibleRect];
    v14->_visibleRect.origin.x = v19;
    v14->_visibleRect.origin.y = v20;
    v14->_visibleRect.size.width = v21;
    v14->_visibleRect.size.height = v22;
    objc_storeStrong(&v14->_spriteDataStore, store);
    numberOfSprites = [layoutCopy numberOfSprites];
    if (numberOfSprites != [storeCopy count])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v14 file:@"PXGLayoutSnapshot.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"layout.numberOfSprites == spriteDataStore.count"}];
    }
  }

  return v9;
}

void __52__PXGLayoutSnapshot_initWithLayout_spriteDataStore___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a2 layoutSnapshotDataSource];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "dataSourceIdentifier")}];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "dataSourceIdentifier")}];
      [v8 setObject:v4 forKeyedSubscript:v9];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v4, "dataSourceIdentifier")}];
      v11 = [*(a1 + 40) objectForKeyedSubscript:v10];

      if (v11)
      {
        v12 = PXAssertGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v13 = [*(*(a1 + 48) + 24) allKeys];
          v14 = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v13;
          _os_log_fault_impl(&dword_21AD38000, v12, OS_LOG_TYPE_FAULT, "Data Source identifier hash collision %@. %@", &v14, 0x16u);
        }
      }

      [*(a1 + 40) setObject:v4 forKeyedSubscript:v10];
    }
  }
}

@end