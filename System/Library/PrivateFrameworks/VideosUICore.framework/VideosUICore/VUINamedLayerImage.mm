@interface VUINamedLayerImage
+ (id)decodedNamedLayerImageFromNamedLayerImage:(id)a3;
+ (id)namedLayerImageFromNamedLayerImage:(id)a3;
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

+ (id)namedLayerImageFromNamedLayerImage:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [objc_alloc(objc_opt_class()) _init];
    [v4 setNamedLayerImage:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)decodedNamedLayerImageFromNamedLayerImage:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(objc_opt_class()) _init];
    [v4 setNamedLayerImage:v3];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 imageObj], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      v7 = [VUIGraphicsImageRenderer decodedImage:v5 opaque:0];
    }

    else
    {
      v7 = 0;
    }

    [v4 setDecodedImage:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)name
{
  v3 = [(VUINamedLayerImage *)self namedLayerImage];

  if (v3)
  {
    v4 = [(VUINamedLayerImage *)self namedLayerImage];
    v5 = [v4 name];
  }

  else
  {
    v5 = @"VUIDefaultLayerName";
  }

  return v5;
}

- (CGRect)frame
{
  v3 = [(VUINamedLayerImage *)self namedLayerImage];

  if (v3)
  {
    v4 = [(VUINamedLayerImage *)self namedLayerImage];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [(VUINamedLayerImage *)self decodedImage];

    if (!v13)
    {
      v6 = *MEMORY[0x277CBF3A0];
      v8 = *(MEMORY[0x277CBF3A0] + 8);
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      v12 = *(MEMORY[0x277CBF3A0] + 24);
      goto LABEL_6;
    }

    v6 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    v4 = [(VUINamedLayerImage *)self decodedImage];
    [v4 size];
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
  v3 = [(VUINamedLayerImage *)self namedLayerImage];

  if (!v3)
  {
    return 1.0;
  }

  v4 = [(VUINamedLayerImage *)self namedLayerImage];
  [v4 opacity];
  v6 = v5;

  return v6;
}

- (BOOL)fixedFrame
{
  v3 = [(VUINamedLayerImage *)self namedLayerImage];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(VUINamedLayerImage *)self namedLayerImage];
  v6 = [v5 fixedFrame];

  return v6;
}

@end