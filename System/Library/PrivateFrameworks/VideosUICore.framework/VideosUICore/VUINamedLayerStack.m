@interface VUINamedLayerStack
+ (id)decodedNamedLayerStackWithImage:(id)a3 size:(CGSize)a4 cornerRadius:(double)a5;
+ (id)namedLayerStackWithImage:(id)a3;
- (CGImage)flattenedImage;
- (CGSize)radiosityImageScale;
- (CGSize)size;
- (NSArray)layers;
- (NSString)name;
- (double)scale;
- (id)_init;
- (id)radiosityImage;
@end

@implementation VUINamedLayerStack

- (id)_init
{
  v3.receiver = self;
  v3.super_class = VUINamedLayerStack;
  return [(VUINamedLayerStack *)&v3 init];
}

+ (id)namedLayerStackWithImage:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 _representsLayeredImage])
  {
    v4 = [v3 imageAsset];
    v5 = [v4 _layerStack];

    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = [v5 layers];
    v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 layers];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [VUINamedLayerImage namedLayerImageFromNamedLayerImage:*(*(&v19 + 1) + 8 * i)];
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    if (v5 && [v8 count])
    {
      v15 = [(VUINamedLayerStack *)[VUIDeflatableNamedLayerImage alloc] _init];
      [v15 setLayerStack:v5];
      v16 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(v3, "CGImage")}];
      [v15 setCornerRadiusFlatImage:v16];

      v17 = [v8 copy];
      [v15 setReplacementLayers:v17];

      [v15 setOriginalImage:v3];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)decodedNamedLayerStackWithImage:(id)a3 size:(CGSize)a4 cornerRadius:(double)a5
{
  height = a4.height;
  width = a4.width;
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0 && [v8 _representsLayeredImage])
  {
    v32[0] = [v8 CGImage];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v10 = VUICompositeBitmapImageOfSizeForImages(v9, 0, 0, width, height, a5);

    v26 = [MEMORY[0x277D755B8] imageWithCGImage:v10];
    CGImageRelease(v10);
    v11 = [v8 imageAsset];
    v12 = [v11 _layerStack];

    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = [v12 layers];
    v15 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [v12 layers];
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [VUINamedLayerImage decodedNamedLayerImageFromNamedLayerImage:*(*(&v27 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    if (v12)
    {
      v22 = 0;
      v23 = v26;
      if ([v15 count] && v26)
      {
        v22 = [objc_alloc(objc_opt_class()) _init];
        [v22 setLayerStack:v12];
        [v22 setCornerRadiusFlatImage:v26];
        v24 = [v15 copy];
        [v22 setReplacementLayers:v24];

        [v22 setOriginalImage:v8];
      }
    }

    else
    {
      v22 = 0;
      v23 = v26;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (NSString)name
{
  v3 = [(VUINamedLayerStack *)self layerStack];

  if (v3)
  {
    v4 = [(VUINamedLayerStack *)self layerStack];
    v5 = [v4 name];
  }

  else
  {
    v4 = [(VUINamedLayerStack *)self replacementLayers];
    v6 = [v4 firstObject];
    v5 = [v6 name];
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"VUIDefaultLayerStackName";
  }

  return v7;
}

- (NSArray)layers
{
  v3 = [(VUINamedLayerStack *)self replacementLayers];

  if (v3)
  {
    v4 = [(VUINamedLayerStack *)self replacementLayers];
  }

  else
  {
    v5 = [(VUINamedLayerStack *)self layerStack];
    v4 = [v5 layers];
  }

  return v4;
}

- (CGSize)size
{
  v3 = [(VUINamedLayerStack *)self layerStack];

  if (v3)
  {
    v4 = [(VUINamedLayerStack *)self layerStack];
    [v4 size];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = [(VUINamedLayerStack *)self replacementLayers];
    v4 = [v9 firstObject];

    [v4 frame];
    v6 = v10;
    v8 = v11;
  }

  v12 = v6;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)scale
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [(VUINamedLayerStack *)self layerStack];

  if (v6)
  {
    v7 = [(VUINamedLayerStack *)self layerStack];
    [v7 scale];
    v5 = v8;
  }

  return v5;
}

- (CGImage)flattenedImage
{
  v2 = [(VUINamedLayerStack *)self cornerRadiusFlatImage];
  v3 = [v2 CGImage];

  return v3;
}

- (id)radiosityImage
{
  v3 = [(VUINamedLayerStack *)self layerStack];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VUINamedLayerStack *)self layerStack];
    v6 = [v5 radiosityImage];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGSize)radiosityImageScale
{
  v3 = [(VUINamedLayerStack *)self layerStack];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VUINamedLayerStack *)self layerStack];
    [v5 radiosityImageScale];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end