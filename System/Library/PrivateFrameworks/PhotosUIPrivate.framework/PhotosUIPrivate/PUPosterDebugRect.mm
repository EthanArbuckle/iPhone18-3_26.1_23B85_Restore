@interface PUPosterDebugRect
- (CGRect)rect;
- (PUPosterDebugRect)initWithIdentifier:(id)a3 rect:(CGRect)a4 color:(id)a5 borderWidth:(double)a6;
@end

@implementation PUPosterDebugRect

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

- (PUPosterDebugRect)initWithIdentifier:(id)a3 rect:(CGRect)a4 color:(id)a5 borderWidth:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v19.receiver = self;
  v19.super_class = PUPosterDebugRect;
  v15 = [(PUPosterDebugRect *)&v19 init];
  if (v15)
  {
    v16 = [v13 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_rect.origin.x = x;
    v15->_rect.origin.y = y;
    v15->_rect.size.width = width;
    v15->_rect.size.height = height;
    objc_storeStrong(&v15->_color, a5);
    v15->_borderWidth = a6;
  }

  return v15;
}

@end