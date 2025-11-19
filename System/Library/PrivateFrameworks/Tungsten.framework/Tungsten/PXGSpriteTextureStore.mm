@interface PXGSpriteTextureStore
- (PXGSpriteTextureStore)init;
- (id)storedTextureForTexture:(id)a3 key:(id)a4 presentationType:(unsigned __int8)a5 policy:(unsigned __int8)a6;
- (void)enumerateTexturesWithHandler:(id)a3;
@end

@implementation PXGSpriteTextureStore

- (PXGSpriteTextureStore)init
{
  v7.receiver = self;
  v7.super_class = PXGSpriteTextureStore;
  v2 = [(PXGSpriteTextureStore *)&v7 init];
  if (v2)
  {
    for (i = 8; i != 32; i += 8)
    {
      v4 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
      v5 = *(&v2->super.isa + i);
      *(&v2->super.isa + i) = v4;
    }
  }

  return v2;
}

- (void)enumerateTexturesWithHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0;
  v16 = 0;
  textureByKeyByPresentationType = self->_textureByKeyByPresentationType;
  do
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSMapTable *)textureByKeyByPresentationType[v5] objectEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v11), &v16);
        if (v16)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (v5 > 1)
    {
      break;
    }

    ++v5;
  }

  while ((v16 & 1) == 0);
}

- (id)storedTextureForTexture:(id)a3 key:(id)a4 presentationType:(unsigned __int8)a5 policy:(unsigned __int8)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (v6 || ([(PXGSpriteTextureStore *)self textureForKey:v11 presentationType:v7], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [(PXGSpriteTextureStore *)self storeTexture:v10 forKey:v11 presentationType:v7];
    v12 = v10;
  }

  return v12;
}

@end