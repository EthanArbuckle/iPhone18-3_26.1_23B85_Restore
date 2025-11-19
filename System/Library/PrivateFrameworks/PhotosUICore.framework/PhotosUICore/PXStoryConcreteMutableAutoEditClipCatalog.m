@interface PXStoryConcreteMutableAutoEditClipCatalog
- (void)addClip:(id)a3;
- (void)composeClipsInRange:(_NSRange)a3;
- (void)enumerateMutableClipsUsingBlock:(id)a3;
- (void)enumeratePairsOfMutableClipsUsingBlock:(id)a3;
- (void)updateClipAtIndex:(int64_t)a3 usingBlock:(id)a4;
- (void)updateClipForDisplayAsset:(id)a3 usingBlock:(id)a4;
@end

@implementation PXStoryConcreteMutableAutoEditClipCatalog

- (void)composeClipsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v26 = *MEMORY[0x1E69E9840];
  v18 = [(NSMutableArray *)self->super._orderedClips subarrayWithRange:?];
  v6 = [PXStoryConcreteAutoEditClip composedClipWithClips:?];
  [(NSMutableArray *)self->super._orderedClips removeObjectsInRange:location, length];
  v17 = v6;
  [(NSMutableArray *)self->super._orderedClips insertObject:v6 atIndex:location];
  while (location < [(NSMutableArray *)self->super._orderedClips count])
  {
    v7 = [(NSMutableArray *)self->super._orderedClips objectAtIndexedSubscript:location];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v7;
    obj = [v7 displayAssets];
    v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
          clipIndicesByAssetUUID = self->super._clipIndicesByAssetUUID;
          v15 = v12;
          if (objc_opt_respondsToSelector())
          {
            [v15 alternateUUID];
          }

          else
          {
            [v15 uuid];
          }
          v16 = ;

          [(NSMutableDictionary *)clipIndicesByAssetUUID setObject:v13 forKeyedSubscript:v16];
          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    ++location;
  }
}

- (void)enumeratePairsOfMutableClipsUsingBlock:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__182318;
  v19 = __Block_byref_object_dispose__182319;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  orderedClips = self->super._orderedClips;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PXStoryConcreteMutableAutoEditClipCatalog_enumeratePairsOfMutableClipsUsingBlock___block_invoke;
  v7[3] = &unk_1E7740ED8;
  v6 = v4;
  v8 = v6;
  v9 = &v15;
  v10 = &v11;
  [(NSMutableArray *)orderedClips enumerateObjectsUsingBlock:v7];
  if (v16[5] && (v12[3] & 1) == 0)
  {
    v6[2](v6);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

void __84__PXStoryConcreteMutableAutoEditClipCatalog_enumeratePairsOfMutableClipsUsingBlock___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  (*(a1[4] + 16))();
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  *(*(a1[6] + 8) + 24) = *a4;
}

- (void)enumerateMutableClipsUsingBlock:(id)a3
{
  v4 = a3;
  orderedClips = self->super._orderedClips;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PXStoryConcreteMutableAutoEditClipCatalog_enumerateMutableClipsUsingBlock___block_invoke;
  v7[3] = &unk_1E7740EB0;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)orderedClips enumerateObjectsUsingBlock:v7];
}

- (void)updateClipAtIndex:(int64_t)a3 usingBlock:(id)a4
{
  orderedClips = self->super._orderedClips;
  v6 = a4;
  v7 = [(NSMutableArray *)orderedClips objectAtIndexedSubscript:a3];
  v6[2](v6, v7);
}

- (void)updateClipForDisplayAsset:(id)a3 usingBlock:(id)a4
{
  v11 = a4;
  clipIndicesByAssetUUID = self->super._clipIndicesByAssetUUID;
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v7 alternateUUID];
  }

  else
  {
    [v7 uuid];
  }
  v8 = ;

  v9 = [(NSMutableDictionary *)clipIndicesByAssetUUID objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = -[NSMutableArray objectAtIndexedSubscript:](self->super._orderedClips, "objectAtIndexedSubscript:", [v9 unsignedIntegerValue]);
    v11[2](v11, v10);
  }
}

- (void)addClip:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = a3;
  obj = [v13 displayAssets];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        clipIndicesByAssetUUID = self->super._clipIndicesByAssetUUID;
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->super._orderedClips, "count")}];
        v11 = v8;
        if (objc_opt_respondsToSelector())
        {
          [v11 alternateUUID];
        }

        else
        {
          [v11 uuid];
        }
        v12 = ;

        [(NSMutableDictionary *)clipIndicesByAssetUUID setObject:v10 forKey:v12];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->super._orderedClips addObject:v13];
}

@end