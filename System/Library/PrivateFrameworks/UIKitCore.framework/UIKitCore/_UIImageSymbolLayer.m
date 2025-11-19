@interface _UIImageSymbolLayer
+ (id)_symbolLayerWithImage:(id)a3 color:(id)a4 offset:(CGPoint)a5 scaleFactor:(double)a6;
+ (id)_symbolLayerWithName:(id)a3 color:(id)a4;
+ (id)_symbolLayerWithName:(id)a3 color:(id)a4 offset:(CGPoint)a5 scaleFactor:(double)a6;
+ (id)_symbolLayerWithSystemName:(id)a3 color:(id)a4;
+ (id)_symbolLayerWithSystemName:(id)a3 color:(id)a4 offset:(CGPoint)a5 scaleFactor:(double)a6;
- (BOOL)isSystemImage;
- (CGPoint)offset;
- (NSString)name;
@end

@implementation _UIImageSymbolLayer

+ (id)_symbolLayerWithImage:(id)a3 color:(id)a4 offset:(CGPoint)a5 scaleFactor:(double)a6
{
  y = a5.y;
  x = a5.x;
  v10 = a3;
  v11 = a4;
  v12 = objc_opt_new();
  if ([v10 _isSymbolImage])
  {
    v13 = [v10 imageAsset];
    [v12 setAsset:v13];

    v14 = [v10 content];
    [v12 setContent:v14];

    [v12 setColor:v11];
    [v12 setOffset:{x, y}];
    [v12 setScaleFactor:a6];
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
  v2 = [(_UIImageSymbolLayer *)self asset];
  v3 = [v2 assetName];

  return v3;
}

- (BOOL)isSystemImage
{
  v2 = [(_UIImageSymbolLayer *)self asset];
  v3 = [v2 _assetManager];
  v4 = [v3 _managingCoreGlyphs];

  return v4;
}

+ (id)_symbolLayerWithSystemName:(id)a3 color:(id)a4
{
  v6 = a4;
  v7 = [UIImage systemImageNamed:a3];
  v8 = [a1 _symbolLayerWithImage:v7 color:v6 offset:*MEMORY[0x1E695EFF8] scaleFactor:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];

  return v8;
}

+ (id)_symbolLayerWithSystemName:(id)a3 color:(id)a4 offset:(CGPoint)a5 scaleFactor:(double)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a4;
  v12 = [UIImage systemImageNamed:a3];
  v13 = [a1 _symbolLayerWithImage:v12 color:v11 offset:x scaleFactor:{y, a6}];

  return v13;
}

+ (id)_symbolLayerWithName:(id)a3 color:(id)a4
{
  v6 = a4;
  v7 = [UIImage imageNamed:a3];
  v8 = [a1 _symbolLayerWithImage:v7 color:v6 offset:*MEMORY[0x1E695EFF8] scaleFactor:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];

  return v8;
}

+ (id)_symbolLayerWithName:(id)a3 color:(id)a4 offset:(CGPoint)a5 scaleFactor:(double)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a4;
  v12 = [UIImage imageNamed:a3];
  v13 = [a1 _symbolLayerWithImage:v12 color:v11 offset:x scaleFactor:{y, a6}];

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