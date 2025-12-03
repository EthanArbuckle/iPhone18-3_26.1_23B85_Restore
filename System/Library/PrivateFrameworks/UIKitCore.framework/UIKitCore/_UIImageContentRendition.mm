@interface _UIImageContentRendition
+ (id)renditionWithContentProvider:(uint64_t)provider;
+ (id)renditionWithContentProvider:(void *)provider color:;
+ (id)renditionWithContentProvider:(void *)provider color:(void *)color effects:;
+ (id)renditionWithContentProvider:(void *)provider color:(void *)color effects:(int)effects drawMode:;
- (uint64_t)CGImage;
- (uint64_t)drawInContext:(uint64_t)result;
- (void)dealloc;
- (void)rbSymbolConfiguration;
@end

@implementation _UIImageContentRendition

- (uint64_t)CGImage
{
  if (result)
  {
    v1 = result;
    result = *(result + 8);
    if (!result)
    {
      cGImageProvider = [(_UIImageContentProvider *)*(v1 + 32) CGImageProvider];
      v3 = cGImageProvider[2]();
      *(v1 + 8) = CGImageRetain(v3);

      return *(v1 + 8);
    }
  }

  return result;
}

- (void)dealloc
{
  CGImage = self->_CGImage;
  if (CGImage)
  {
    CGImageRelease(CGImage);
  }

  v4.receiver = self;
  v4.super_class = _UIImageContentRendition;
  [(_UIImageContentRendition *)&v4 dealloc];
}

+ (id)renditionWithContentProvider:(uint64_t)provider
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(_UIImageContentRendition *)v3 renditionWithContentProvider:v2 color:0];

  return v4;
}

+ (id)renditionWithContentProvider:(void *)provider color:
{
  providerCopy = provider;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(_UIImageContentRendition *)v6 renditionWithContentProvider:v5 color:providerCopy effects:0];

  return v7;
}

+ (id)renditionWithContentProvider:(void *)provider color:(void *)color effects:
{
  colorCopy = color;
  providerCopy = provider;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = [(_UIImageContentRendition *)v9 renditionWithContentProvider:v8 color:providerCopy effects:colorCopy drawMode:0];

  return v10;
}

+ (id)renditionWithContentProvider:(void *)provider color:(void *)color effects:(int)effects drawMode:
{
  v8 = a2;
  providerCopy = provider;
  colorCopy = color;
  objc_opt_self();
  v11 = objc_opt_new();
  v12 = *(v11 + 32);
  *(v11 + 32) = v8;
  v13 = v8;

  v14 = *(v11 + 40);
  *(v11 + 40) = providerCopy;
  v15 = providerCopy;

  v16 = *(v11 + 48);
  *(v11 + 48) = colorCopy;

  *(v11 + 24) = effects;

  return v11;
}

- (uint64_t)drawInContext:(uint64_t)result
{
  if (result)
  {
    v1 = *(result + 32);
    if (v1)
    {
      result = *(v1 + 24);
      if (result)
      {
        return (*(result + 16))();
      }
    }
  }

  return result;
}

- (void)rbSymbolConfiguration
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      rbSymbolConfigurationProvider = [(_UIImageContentProvider *)self[4] rbSymbolConfigurationProvider];
      v5 = rbSymbolConfigurationProvider[2]();
      v6 = selfCopy[2];
      selfCopy[2] = v5;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

@end