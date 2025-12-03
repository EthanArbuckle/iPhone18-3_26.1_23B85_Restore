@interface SUCanvasMaskProvider
- (CGPath)copyPathForMaskWithSize:(CGSize)size;
- (SUCanvasMaskProvider)initWithFunction:(id)function;
- (id)copyMaskImageWithSize:(CGSize)size;
- (void)dealloc;
@end

@implementation SUCanvasMaskProvider

- (SUCanvasMaskProvider)initWithFunction:(id)function
{
  v4 = [(SUCanvasMaskProvider *)self init];
  if (v4)
  {
    v4->_function = function;
  }

  return v4;
}

- (void)dealloc
{
  self->_function = 0;
  v3.receiver = self;
  v3.super_class = SUCanvasMaskProvider;
  [(SUCanvasMaskProvider *)&v3 dealloc];
}

- (id)copyMaskImageWithSize:(CGSize)size
{
  v3 = [(SUScriptCanvasFunction *)self->_function copyResultForSize:size.width, size.height];
  canvasImage = [v3 canvasImage];

  return canvasImage;
}

- (CGPath)copyPathForMaskWithSize:(CGSize)size
{
  v3 = [(SUScriptCanvasFunction *)self->_function copyResultForSize:size.width, size.height];
  canvasPath = [v3 canvasPath];
  v5 = canvasPath;
  if (canvasPath)
  {
    CGPathRetain(canvasPath);
  }

  return v5;
}

@end