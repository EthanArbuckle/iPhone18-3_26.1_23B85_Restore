@interface _UIImageSymbolLayer
+ (id)_symbolLayerWithImage:(id)image color:(id)color offset:(CGPoint)offset scaleFactor:(double)factor;
+ (id)_symbolLayerWithName:(id)name color:(id)color;
+ (id)_symbolLayerWithName:(id)name color:(id)color offset:(CGPoint)offset scaleFactor:(double)factor;
+ (id)_symbolLayerWithSystemName:(id)name color:(id)color;
+ (id)_symbolLayerWithSystemName:(id)name color:(id)color offset:(CGPoint)offset scaleFactor:(double)factor;
- (BOOL)isSystemImage;
- (CGPoint)offset;
- (NSString)name;
@end

@implementation _UIImageSymbolLayer

+ (id)_symbolLayerWithImage:(id)image color:(id)color offset:(CGPoint)offset scaleFactor:(double)factor
{
  y = offset.y;
  x = offset.x;
  imageCopy = image;
  colorCopy = color;
  v12 = objc_opt_new();
  if ([imageCopy _isSymbolImage])
  {
    imageAsset = [imageCopy imageAsset];
    [v12 setAsset:imageAsset];

    content = [imageCopy content];
    [v12 setContent:content];

    [v12 setColor:colorCopy];
    [v12 setOffset:{x, y}];
    [v12 setScaleFactor:factor];
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSString)name
{
  asset = [(_UIImageSymbolLayer *)self asset];
  assetName = [asset assetName];

  return assetName;
}

- (BOOL)isSystemImage
{
  asset = [(_UIImageSymbolLayer *)self asset];
  _assetManager = [asset _assetManager];
  _managingCoreGlyphs = [_assetManager _managingCoreGlyphs];

  return _managingCoreGlyphs;
}

+ (id)_symbolLayerWithSystemName:(id)name color:(id)color
{
  colorCopy = color;
  v7 = [UIImage systemImageNamed:name];
  v8 = [self _symbolLayerWithImage:v7 color:colorCopy offset:*MEMORY[0x1E695EFF8] scaleFactor:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];

  return v8;
}

+ (id)_symbolLayerWithSystemName:(id)name color:(id)color offset:(CGPoint)offset scaleFactor:(double)factor
{
  y = offset.y;
  x = offset.x;
  colorCopy = color;
  v12 = [UIImage systemImageNamed:name];
  v13 = [self _symbolLayerWithImage:v12 color:colorCopy offset:x scaleFactor:{y, factor}];

  return v13;
}

+ (id)_symbolLayerWithName:(id)name color:(id)color
{
  colorCopy = color;
  v7 = [UIImage imageNamed:name];
  v8 = [self _symbolLayerWithImage:v7 color:colorCopy offset:*MEMORY[0x1E695EFF8] scaleFactor:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];

  return v8;
}

+ (id)_symbolLayerWithName:(id)name color:(id)color offset:(CGPoint)offset scaleFactor:(double)factor
{
  y = offset.y;
  x = offset.x;
  colorCopy = color;
  v12 = [UIImage imageNamed:name];
  v13 = [self _symbolLayerWithImage:v12 color:colorCopy offset:x scaleFactor:{y, factor}];

  return v13;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end