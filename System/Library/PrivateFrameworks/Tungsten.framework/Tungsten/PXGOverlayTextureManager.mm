@interface PXGOverlayTextureManager
- (id)overlayTexturesByPresentationTypeForTextures:(id)a3 spriteDataStore:(id)a4;
@end

@implementation PXGOverlayTextureManager

- (id)overlayTexturesByPresentationTypeForTextures:(id)a3 spriteDataStore:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v5 objectForKeyedSubscript:&unk_282C7F5E0];
  if (v8)
  {
    v23 = v7;
    v24 = v5;
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [v6 infos];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          if (([v16 isAtlas] & 1) == 0)
          {
            v17 = [v16 spriteIndexes];
            v18 = [v17 firstIndex];

            v19 = v10 + 40 * v18;
            if (*(v19 + 1) == 2 && (*(v19 + 34) & 0x10) == 0)
            {
              v20 = [[PXGRemoteEffectOverlayTexture alloc] initWithMetalSpriteTexture:v16];
              [v9 addObject:v20];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v7 = v23;
    [v23 setObject:v9 forKeyedSubscript:&unk_282C7F5F8];

    v5 = v24;
    v8 = v22;
  }

  return v7;
}

@end