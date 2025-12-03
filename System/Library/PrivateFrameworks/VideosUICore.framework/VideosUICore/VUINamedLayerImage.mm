@interface VUINamedLayerImage
+ (id)decodedNamedLayerImageFromNamedLayerImage:(id)image;
+ (id)namedLayerImageFromNamedLayerImage:(id)image;
- (BOOL)fixedFrame;
- (CGRect)frame;
- (NSString)name;
- (double)opacity;
- (id)_init;
@end

@implementation VUINamedLayerImage

- (id)_init
{
  v3.receiver = self;
  v3.super_class = VUINamedLayerImage;
  result = [(VUINamedLayerImage *)&v3 init];
  if (result)
  {
    *(result + 2) = 0;
  }

  return result;
}

+ (id)namedLayerImageFromNamedLayerImage:(id)image
{
  if (image)
  {
    imageCopy = image;
    _init = [objc_alloc(objc_opt_class()) _init];
    [_init setNamedLayerImage:imageCopy];
  }

  else
  {
    _init = 0;
  }

  return _init;
}

+ (id)decodedNamedLayerImageFromNamedLayerImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    _init = [objc_alloc(objc_opt_class()) _init];
    [_init setNamedLayerImage:imageCopy];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([imageCopy imageObj], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      v7 = [VUIGraphicsImageRenderer decodedImage:v5 opaque:0];
    }

    else
    {
      v7 = 0;
    }

    [_init setDecodedImage:v7];
  }

  else
  {
    _init = 0;
  }

  return _init;
}

- (NSString)name
{
  namedLayerImage = [(VUINamedLayerImage *)self namedLayerImage];

  if (namedLayerImage)
  {
    namedLayerImage2 = [(VUINamedLayerImage *)self namedLayerImage];
    name = [namedLayerImage2 name];
  }

  else
  {
    name = @"VUIDefaultLayerName";
  }

  return name;
}

- (CGRect)frame
{
  namedLayerImage = [(VUINamedLayerImage *)self namedLayerImage];

  if (namedLayerImage)
  {
    namedLayerImage2 = [(VUINamedLayerImage *)self namedLayerImage];
    [namedLayerImage2 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    decodedImage = [(VUINamedLayerImage *)self decodedImage];

    if (!decodedImage)
    {
      v6 = *MEMORY[0x277CBF3A0];
      v8 = *(MEMORY[0x277CBF3A0] + 8);
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      v12 = *(MEMORY[0x277CBF3A0] + 24);
      goto LABEL_6;
    }

    v6 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    namedLayerImage2 = [(VUINamedLayerImage *)self decodedImage];
    [namedLayerImage2 size];
    v10 = v14;
    v12 = v15;
  }

LABEL_6:
  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (double)opacity
{
  namedLayerImage = [(VUINamedLayerImage *)self namedLayerImage];

  if (!namedLayerImage)
  {
    return 1.0;
  }

  namedLayerImage2 = [(VUINamedLayerImage *)self namedLayerImage];
  [namedLayerImage2 opacity];
  v6 = v5;

  return v6;
}

- (BOOL)fixedFrame
{
  namedLayerImage = [(VUINamedLayerImage *)self namedLayerImage];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  namedLayerImage2 = [(VUINamedLayerImage *)self namedLayerImage];
  fixedFrame = [namedLayerImage2 fixedFrame];

  return fixedFrame;
}

@end