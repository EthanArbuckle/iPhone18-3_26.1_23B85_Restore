@interface PXGOverlayTextureManager
- (id)overlayTexturesByPresentationTypeForTextures:(id)textures spriteDataStore:(id)store;
@end

@implementation PXGOverlayTextureManager

- (id)overlayTexturesByPresentationTypeForTextures:(id)textures spriteDataStore:(id)store
{
  v30 = *MEMORY[0x277D85DE8];
  texturesCopy = textures;
  storeCopy = store;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [texturesCopy objectForKeyedSubscript:&unk_282C7F5E0];
  if (v8)
  {
    v23 = dictionary;
    v24 = texturesCopy;
    array = [MEMORY[0x277CBEB18] array];
    infos = [storeCopy infos];
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
            spriteIndexes = [v16 spriteIndexes];
            firstIndex = [spriteIndexes firstIndex];

            v19 = infos + 40 * firstIndex;
            if (*(v19 + 1) == 2 && (*(v19 + 34) & 0x10) == 0)
            {
              v20 = [[PXGRemoteEffectOverlayTexture alloc] initWithMetalSpriteTexture:v16];
              [array addObject:v20];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    dictionary = v23;
    [v23 setObject:array forKeyedSubscript:&unk_282C7F5F8];

    texturesCopy = v24;
    v8 = v22;
  }

  return dictionary;
}

@end