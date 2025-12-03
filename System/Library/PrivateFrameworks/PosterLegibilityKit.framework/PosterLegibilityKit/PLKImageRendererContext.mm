@interface PLKImageRendererContext
- (CGRect)contentRect;
- (id)currentImage;
@end

@implementation PLKImageRendererContext

- (id)currentImage
{
  overrideCurrentImage = self->_overrideCurrentImage;
  if (overrideCurrentImage)
  {
    currentImage = overrideCurrentImage;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLKImageRendererContext;
    currentImage = [(UIGraphicsImageRendererContext *)&v5 currentImage];
  }

  return currentImage;
}

- (CGRect)contentRect
{
  p_contentRect = &self->_contentRect;
  if (CGRectEqualToRect(*MEMORY[0x277CBF3A0], self->_contentRect))
  {
    format = [(UIGraphicsRendererContext *)self format];
    [format bounds];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = p_contentRect->origin.x;
    y = p_contentRect->origin.y;
    width = p_contentRect->size.width;
    height = p_contentRect->size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end