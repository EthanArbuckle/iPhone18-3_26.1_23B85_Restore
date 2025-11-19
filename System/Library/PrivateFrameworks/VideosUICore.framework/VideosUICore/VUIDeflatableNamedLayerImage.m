@interface VUIDeflatableNamedLayerImage
- (void)_deflateLayerStack;
- (void)_inflateLayerStack;
@end

@implementation VUIDeflatableNamedLayerImage

- (void)_inflateLayerStack
{
  v3 = [(VUINamedLayerStack *)self originalImage];
  v4 = [v3 imageAsset];
  v5 = [v4 _layerStack];

  v6 = [v5 layers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__VUIDeflatableNamedLayerImage__inflateLayerStack__block_invoke;
  v7[3] = &unk_279E21438;
  v7[4] = self;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __50__VUIDeflatableNamedLayerImage__inflateLayerStack__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v9 imageObj];
  }

  else
  {
    v5 = 0;
  }

  v6 = [VUIGraphicsImageRenderer decodedImage:v5 opaque:0];

  v7 = [*(a1 + 32) layers];
  v8 = [v7 objectAtIndexedSubscript:a3];
  [v8 setDecodedImage:v6];
}

- (void)_deflateLayerStack
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(VUINamedLayerStack *)self layers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setDecodedImage:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end