@interface PUPosterDebugRect
- (CGRect)rect;
- (PUPosterDebugRect)initWithIdentifier:(id)identifier rect:(CGRect)rect color:(id)color borderWidth:(double)width;
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

- (PUPosterDebugRect)initWithIdentifier:(id)identifier rect:(CGRect)rect color:(id)color borderWidth:(double)width
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  identifierCopy = identifier;
  colorCopy = color;
  v19.receiver = self;
  v19.super_class = PUPosterDebugRect;
  v15 = [(PUPosterDebugRect *)&v19 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_rect.origin.x = x;
    v15->_rect.origin.y = y;
    v15->_rect.size.width = width;
    v15->_rect.size.height = height;
    objc_storeStrong(&v15->_color, color);
    v15->_borderWidth = width;
  }

  return v15;
}

@end