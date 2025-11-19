@interface PXGEngineRecordingDataStoreEvent
+ (id)eventWithTextures:(id)a3 dataStore:(id)a4 spriteIndexes:(id)a5 screenScale:(double)a6;
- (PXGEngineRecordingDataStoreEvent)initWithTextures:(id)a3 dataStore:(id)a4 spriteIndexes:(id)a5 screenScale:(double)a6;
- (id)serializable;
- (void)dealloc;
@end

@implementation PXGEngineRecordingDataStoreEvent

- (id)serializable
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSIndexSet count](self->_spriteIndexes, "count")}];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSIndexSet count](self->_spriteIndexes, "count")}];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSIndexSet count](self->_spriteIndexes, "count")}];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSIndexSet count](self->_spriteIndexes, "count")}];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSIndexSet count](self->_spriteIndexes, "count")}];
  spriteIndexes = self->_spriteIndexes;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __48__PXGEngineRecordingDataStoreEvent_serializable__block_invoke;
  v28[3] = &unk_2782AB280;
  v28[4] = self;
  v22 = v3;
  v29 = v22;
  v21 = v4;
  v30 = v21;
  v20 = v5;
  v31 = v20;
  v19 = v6;
  v32 = v19;
  [(NSIndexSet *)spriteIndexes enumerateIndexesUsingBlock:v28];
  if (self->_textureInfoCount >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = self->_textureInfoSprites[v10];
      if ([(NSIndexSet *)self->_spriteIndexes containsIndex:v11])
      {
        v12 = objc_alloc_init(PXGSpriteTextureInfoSerializable);
        v13 = &self->_textureInfos[v9];
        v14 = *&v13[6].var0;
        v26 = *&v13[4].var0;
        v27 = v14;
        v15 = *&v13[2].var0;
        v24 = *&v13->var0;
        v25 = v15;
        v23[0] = v24;
        v23[1] = v15;
        v23[2] = v26;
        v23[3] = v14;
        [(PXGSpriteTextureInfoSerializable *)v12 setSpriteTextureInfo:v23];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
        [v7 setObject:v12 forKey:v16];
      }

      ++v10;
      v9 += 8;
    }

    while (self->_textureInfoCount > v10);
  }

  v17 = objc_alloc_init(PXGEngineRecordingDataStoreSerializable);
  [(PXGEngineRecordingDataStoreSerializable *)v17 setSpriteStyles:v22];
  [(PXGEngineRecordingDataStoreSerializable *)v17 setSpriteInfos:v21];
  [(PXGEngineRecordingDataStoreSerializable *)v17 setSpriteGeometries:v20];
  [(PXGEngineRecordingDataStoreSerializable *)v17 setSpriteEntities:v19];
  [(PXGEngineRecordingDataStoreSerializable *)v17 setSpriteTextureInfos:v7];

  return v17;
}

void __48__PXGEngineRecordingDataStoreEvent_serializable__block_invoke(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(PXGSpriteStyleSerializable);
  v5 = (*(a1[4] + 40) + 160 * a2);
  v6 = v5[7];
  v43 = v5[6];
  v44 = v6;
  v7 = v5[9];
  v45 = v5[8];
  v46 = v7;
  v8 = v5[3];
  v39 = v5[2];
  v40 = v8;
  v9 = v5[5];
  v41 = v5[4];
  v42 = v9;
  v10 = v5[1];
  v37 = *v5;
  v38 = v10;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v27 = v37;
  v28 = v10;
  [(PXGSpriteStyleSerializable *)v4 setSpriteStyle:&v27];
  v11 = a1[5];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v11 setObject:v4 forKey:v12];

  v13 = objc_alloc_init(PXGSpriteInfoSerializable);
  v14 = *(a1[4] + 48) + 40 * a2;
  v26 = *(v14 + 32);
  v25 = *(v14 + 16);
  v27 = *v14;
  v28 = v25;
  *&v29 = v26;
  [(PXGSpriteInfoSerializable *)v13 setSpriteInfo:&v27];
  v15 = a1[6];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v15 setObject:v13 forKey:v16];

  v17 = objc_alloc_init(PXGSpriteGeometrySerializable);
  v18 = (*(a1[4] + 56) + 32 * a2);
  v24 = v18[1];
  v27 = *v18;
  v28 = v24;
  [(PXGSpriteGeometrySerializable *)v17 setSpriteGeometry:&v27, v27, v24];
  v19 = a1[7];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v19 setObject:v17 forKey:v20];

  v21 = objc_alloc_init(PXGSpriteEntitySerializable);
  [(PXGSpriteEntitySerializable *)v21 setSpriteEntity:*(*(a1[4] + 64) + 4 * a2)];
  v22 = a1[8];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v22 setObject:v21 forKey:v23];
}

- (void)dealloc
{
  free(self->_styles);
  free(self->_infos);
  free(self->_geometries);
  free(self->_entities);
  free(self->_textureInfos);
  free(self->_textureInfoSprites);
  v3.receiver = self;
  v3.super_class = PXGEngineRecordingDataStoreEvent;
  [(PXGEngineRecordingDataStoreEvent *)&v3 dealloc];
}

- (PXGEngineRecordingDataStoreEvent)initWithTextures:(id)a3 dataStore:(id)a4 spriteIndexes:(id)a5 screenScale:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = PXGEngineRecordingDataStoreEvent;
  v13 = [(PXGTungstenRecordingEvent *)&v24 initWithComponent:0 eventName:@"dataStore"];
  if (v13)
  {
    v14 = [v11 count];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = v14;
    v15 = 4 * v14;
    v13->_entities = malloc_type_malloc(v15, 0x100004052888210uLL);
    v13->_geometries = malloc_type_malloc(32 * v14, 0x1000040E0EAB150uLL);
    v13->_styles = malloc_type_malloc(160 * v14, 0x1000040FE7FAB29uLL);
    v13->_infos = malloc_type_malloc(40 * v14, 0x100004081CBAE78uLL);
    v13->_textureInfos = malloc_type_malloc(v14 << 6, 0x1000040FB6E31C6uLL);
    v13->_textureInfoSprites = malloc_type_malloc(v15, 0x100004052888210uLL);
    memcpy(v13->_entities, [v11 entities], v15);
    memcpy(v13->_geometries, [v11 geometries], 32 * v14);
    memcpy(v13->_styles, [v11 styles], 160 * v14);
    memcpy(v13->_infos, [v11 infos], 40 * v14);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__PXGEngineRecordingDataStoreEvent_initWithTextures_dataStore_spriteIndexes_screenScale___block_invoke;
    v18[3] = &unk_2782AB258;
    v19 = v12;
    v21 = v23;
    v16 = v13;
    v20 = v16;
    v22 = a6;
    [v10 enumerateKeysAndObjectsUsingBlock:v18];
    objc_storeStrong(v16 + 11, a5);

    _Block_object_dispose(v23, 8);
  }

  return v13;
}

void __89__PXGEngineRecordingDataStoreEvent_initWithTextures_dataStore_spriteIndexes_screenScale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([a2 intValue] & 0xFD) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        v9 = 0;
        v26 = v7;
        do
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * v9);
          v11 = *(a1 + 32);
          v12 = [v10 spriteIndexes];
          v13 = [v11 px_intersectionWithIndexSet:v12];

          if ([v10 isCaptureTexture])
          {
            v14 = [v10 spriteGeometries] == 0;
          }

          else
          {
            v14 = 0;
          }

          if ([v13 count] && !v14)
          {
            v15 = [v10 spriteCount];
            v16 = v15;
            v17 = *(a1 + 40);
            v18 = *(*(*(a1 + 48) + 8) + 24);
            v19 = *(v17 + 96) + v15;
            if (v18 < v19)
            {
              if (v18)
              {
                do
                {
                  v18 *= 2;
                }

                while (v18 < v19);
              }

              else
              {
                v18 = *(v17 + 96) + v15;
              }

              *(v17 + 72) = malloc_type_realloc(*(v17 + 72), v18 << 6, 0x42760281uLL);
              *(*(*(a1 + 48) + 8) + 24) = v18;
              v20 = *(a1 + 40);
              *(v20 + 80) = malloc_type_realloc(*(v20 + 80), 4 * *(*(*(a1 + 48) + 8) + 24), 0x42760281uLL);
            }

            v21 = *(a1 + 40);
            v22 = v21[12];
            v23 = v21[10] + 4 * v22;
            v24 = v21[9] + (v22 << 6);
            [v10 getSpriteIndexes:v23 maxSpriteCount:v16];
            [v10 getTextureInfos:v24 forSpriteIndexes:v23 geometries:*(*(a1 + 40) + 56) spriteStyles:*(*(a1 + 40) + 40) spriteInfos:*(*(a1 + 40) + 48) screenScale:v16 count:*(a1 + 56)];
            *(*(a1 + 40) + 96) += v16;
            v7 = v26;
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v7);
    }

    v5 = v25;
  }
}

+ (id)eventWithTextures:(id)a3 dataStore:(id)a4 spriteIndexes:(id)a5 screenScale:(double)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[PXGEngineRecordingDataStoreEvent alloc] initWithTextures:v11 dataStore:v10 spriteIndexes:v9 screenScale:a6];

  return v12;
}

@end