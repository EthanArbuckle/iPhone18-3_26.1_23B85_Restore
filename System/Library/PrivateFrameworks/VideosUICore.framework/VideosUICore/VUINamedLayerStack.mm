@interface VUINamedLayerStack
+ (id)decodedNamedLayerStackWithImage:(id)image size:(CGSize)size cornerRadius:(double)radius;
+ (id)namedLayerStackWithImage:(id)image;
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

+ (id)namedLayerStackWithImage:(id)image
{
  v24 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (imageCopy && (objc_opt_respondsToSelector() & 1) != 0 && [imageCopy _representsLayeredImage])
  {
    imageAsset = [imageCopy imageAsset];
    _layerStack = [imageAsset _layerStack];

    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    layers = [_layerStack layers];
    v8 = [v6 initWithCapacity:{objc_msgSend(layers, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    layers2 = [_layerStack layers];
    v10 = [layers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(layers2);
          }

          v14 = [VUINamedLayerImage namedLayerImageFromNamedLayerImage:*(*(&v19 + 1) + 8 * i)];
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [layers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    if (_layerStack && [v8 count])
    {
      _init = [(VUINamedLayerStack *)[VUIDeflatableNamedLayerImage alloc] _init];
      [_init setLayerStack:_layerStack];
      v16 = [MEMORY[0x277D755B8] imageWithCGImage:{objc_msgSend(imageCopy, "CGImage")}];
      [_init setCornerRadiusFlatImage:v16];

      v17 = [v8 copy];
      [_init setReplacementLayers:v17];

      [_init setOriginalImage:imageCopy];
    }

    else
    {
      _init = 0;
    }
  }

  else
  {
    _init = 0;
  }

  return _init;
}

+ (id)decodedNamedLayerStackWithImage:(id)image size:(CGSize)size cornerRadius:(double)radius
{
  height = size.height;
  width = size.width;
  v32[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (imageCopy && (objc_opt_respondsToSelector() & 1) != 0 && [imageCopy _representsLayeredImage])
  {
    v32[0] = [imageCopy CGImage];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v10 = VUICompositeBitmapImageOfSizeForImages(v9, 0, 0, width, height, radius);

    v26 = [MEMORY[0x277D755B8] imageWithCGImage:v10];
    CGImageRelease(v10);
    imageAsset = [imageCopy imageAsset];
    _layerStack = [imageAsset _layerStack];

    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    layers = [_layerStack layers];
    v15 = [v13 initWithCapacity:{objc_msgSend(layers, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    layers2 = [_layerStack layers];
    v17 = [layers2 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(layers2);
          }

          v21 = [VUINamedLayerImage decodedNamedLayerImageFromNamedLayerImage:*(*(&v27 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [layers2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    if (_layerStack)
    {
      _init = 0;
      v23 = v26;
      if ([v15 count] && v26)
      {
        _init = [objc_alloc(objc_opt_class()) _init];
        [_init setLayerStack:_layerStack];
        [_init setCornerRadiusFlatImage:v26];
        v24 = [v15 copy];
        [_init setReplacementLayers:v24];

        [_init setOriginalImage:imageCopy];
      }
    }

    else
    {
      _init = 0;
      v23 = v26;
    }
  }

  else
  {
    _init = 0;
  }

  return _init;
}

- (NSString)name
{
  layerStack = [(VUINamedLayerStack *)self layerStack];

  if (layerStack)
  {
    layerStack2 = [(VUINamedLayerStack *)self layerStack];
    name = [layerStack2 name];
  }

  else
  {
    layerStack2 = [(VUINamedLayerStack *)self replacementLayers];
    firstObject = [layerStack2 firstObject];
    name = [firstObject name];
  }

  if (name)
  {
    v7 = name;
  }

  else
  {
    v7 = @"VUIDefaultLayerStackName";
  }

  return v7;
}

- (NSArray)layers
{
  replacementLayers = [(VUINamedLayerStack *)self replacementLayers];

  if (replacementLayers)
  {
    replacementLayers2 = [(VUINamedLayerStack *)self replacementLayers];
  }

  else
  {
    layerStack = [(VUINamedLayerStack *)self layerStack];
    replacementLayers2 = [layerStack layers];
  }

  return replacementLayers2;
}

- (CGSize)size
{
  layerStack = [(VUINamedLayerStack *)self layerStack];

  if (layerStack)
  {
    layerStack2 = [(VUINamedLayerStack *)self layerStack];
    [layerStack2 size];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    replacementLayers = [(VUINamedLayerStack *)self replacementLayers];
    layerStack2 = [replacementLayers firstObject];

    [layerStack2 frame];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  layerStack = [(VUINamedLayerStack *)self layerStack];

  if (layerStack)
  {
    layerStack2 = [(VUINamedLayerStack *)self layerStack];
    [layerStack2 scale];
    v5 = v8;
  }

  return v5;
}

- (CGImage)flattenedImage
{
  cornerRadiusFlatImage = [(VUINamedLayerStack *)self cornerRadiusFlatImage];
  cGImage = [cornerRadiusFlatImage CGImage];

  return cGImage;
}

- (id)radiosityImage
{
  layerStack = [(VUINamedLayerStack *)self layerStack];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    layerStack2 = [(VUINamedLayerStack *)self layerStack];
    radiosityImage = [layerStack2 radiosityImage];
  }

  else
  {
    radiosityImage = 0;
  }

  return radiosityImage;
}

- (CGSize)radiosityImageScale
{
  layerStack = [(VUINamedLayerStack *)self layerStack];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    layerStack2 = [(VUINamedLayerStack *)self layerStack];
    [layerStack2 radiosityImageScale];
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