@interface PXGSpriteTextureStore
- (PXGSpriteTextureStore)init;
- (id)storedTextureForTexture:(id)texture key:(id)key presentationType:(unsigned __int8)type policy:(unsigned __int8)policy;
- (void)enumerateTexturesWithHandler:(id)handler;
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
      weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
      v5 = *(&v2->super.isa + i);
      *(&v2->super.isa + i) = weakToWeakObjectsMapTable;
    }
  }

  return v2;
}

- (void)enumerateTexturesWithHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = 0;
  v16 = 0;
  textureByKeyByPresentationType = self->_textureByKeyByPresentationType;
  do
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    objectEnumerator = [(NSMapTable *)textureByKeyByPresentationType[v5] objectEnumerator];
    v8 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        handlerCopy[2](handlerCopy, *(*(&v12 + 1) + 8 * v11), &v16);
        if (v16)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v17 count:16];
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

- (id)storedTextureForTexture:(id)texture key:(id)key presentationType:(unsigned __int8)type policy:(unsigned __int8)policy
{
  policyCopy = policy;
  typeCopy = type;
  textureCopy = texture;
  keyCopy = key;
  if (policyCopy || ([(PXGSpriteTextureStore *)self textureForKey:keyCopy presentationType:typeCopy], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [(PXGSpriteTextureStore *)self storeTexture:textureCopy forKey:keyCopy presentationType:typeCopy];
    v12 = textureCopy;
  }

  return v12;
}

@end