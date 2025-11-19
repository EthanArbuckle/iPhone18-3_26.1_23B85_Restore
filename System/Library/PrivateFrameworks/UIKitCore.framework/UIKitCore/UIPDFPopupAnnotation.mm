@interface UIPDFPopupAnnotation
- (CGRect)adjustedBounds;
- (CGRect)bounds;
- (UIPDFPopupAnnotation)init;
- (UIPDFPopupAnnotation)initWithAnnotationDictionary:(CGPDFDictionary *)a3;
@end

@implementation UIPDFPopupAnnotation

- (UIPDFPopupAnnotation)initWithAnnotationDictionary:(CGPDFDictionary *)a3
{
  v5.receiver = self;
  v5.super_class = UIPDFPopupAnnotation;
  result = [(UIPDFAnnotation *)&v5 initWithAnnotationDictionary:a3];
  if (result)
  {
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->_adjustedBounds.origin = *MEMORY[0x1E695F050];
    result->_adjustedBounds.size = v4;
  }

  return result;
}

- (UIPDFPopupAnnotation)init
{
  v4.receiver = self;
  v4.super_class = UIPDFPopupAnnotation;
  result = [(UIPDFAnnotation *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x1E695F050] + 16);
    result->_adjustedBounds.origin = *MEMORY[0x1E695F050];
    result->_adjustedBounds.size = v3;
  }

  return result;
}

- (CGRect)bounds
{
  p_adjustedBounds = &self->_adjustedBounds;
  if (CGRectIsNull(self->_adjustedBounds))
  {
    v8.receiver = self;
    v8.super_class = UIPDFPopupAnnotation;
    [(UIPDFAnnotation *)&v8 bounds];
  }

  else
  {
    x = p_adjustedBounds->origin.x;
    y = p_adjustedBounds->origin.y;
    width = p_adjustedBounds->size.width;
    height = p_adjustedBounds->size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adjustedBounds
{
  x = self->_adjustedBounds.origin.x;
  y = self->_adjustedBounds.origin.y;
  width = self->_adjustedBounds.size.width;
  height = self->_adjustedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end