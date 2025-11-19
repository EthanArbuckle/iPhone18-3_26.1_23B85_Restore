@interface VUIOverlayWithMaterialRendering
- (CGRect)croppedRect;
- (CGRect)rect;
- (VUIOverlayWithMaterialRendering)init;
- (VUIOverlayWithMaterialRendering)initWithIdentifier:(id)a3 rect:(CGRect)a4 croppedRect:(CGRect)a5;
@end

@implementation VUIOverlayWithMaterialRendering

- (VUIOverlayWithMaterialRendering)initWithIdentifier:(id)a3 rect:(CGRect)a4 croppedRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v14 = a3;
  v19.receiver = self;
  v19.super_class = VUIOverlayWithMaterialRendering;
  v15 = [(VUIOverlayWithMaterialRendering *)&v19 init];
  if (v15)
  {
    v16 = [v14 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_rect.origin.x = v12;
    v15->_rect.origin.y = v11;
    v15->_rect.size.width = v10;
    v15->_rect.size.height = v9;
    v15->_croppedRect.origin.x = x;
    v15->_croppedRect.origin.y = y;
    v15->_croppedRect.size.width = width;
    v15->_croppedRect.size.height = height;
    v15->_backdropStyle = 4001;
  }

  return v15;
}

- (VUIOverlayWithMaterialRendering)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)croppedRect
{
  x = self->_croppedRect.origin.x;
  y = self->_croppedRect.origin.y;
  width = self->_croppedRect.size.width;
  height = self->_croppedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end