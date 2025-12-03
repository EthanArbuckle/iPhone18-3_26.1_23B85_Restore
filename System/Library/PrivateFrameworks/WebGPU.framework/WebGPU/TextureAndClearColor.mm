@interface TextureAndClearColor
- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor;
- (TextureAndClearColor)initWithTexture:(id)texture;
@end

@implementation TextureAndClearColor

- (TextureAndClearColor)initWithTexture:(id)texture
{
  textureCopy = texture;
  v10.receiver = self;
  v10.super_class = TextureAndClearColor;
  v6 = [(TextureAndClearColor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_texture, texture);
    *&v7->_clearColor.blue = 0u;
    *&v7->_clearColor.red = 0u;
    v8 = v7;
  }

  return v7;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor
{
  red = self->_clearColor.red;
  green = self->_clearColor.green;
  blue = self->_clearColor.blue;
  alpha = self->_clearColor.alpha;
  result.var3 = alpha;
  result.var2 = blue;
  result.var1 = green;
  result.var0 = red;
  return result;
}

@end