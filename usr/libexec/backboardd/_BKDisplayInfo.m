@interface _BKDisplayInfo
- (CGRect)normalizedDigitizerRect;
- (CGSize)size;
- (_BKDisplayInfo)init;
- (id)description;
@end

@implementation _BKDisplayInfo

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)normalizedDigitizerRect
{
  x = self->_normalizedDigitizerRect.origin.x;
  y = self->_normalizedDigitizerRect.origin.y;
  width = self->_normalizedDigitizerRect.size.width;
  height = self->_normalizedDigitizerRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  windowServerDisplay = self->_windowServerDisplay;
  size = self->_size;
  scale = self->_scale;
  v5 = sub_100027F18(self->_nativeRotation);
  v6 = [NSString stringWithFormat:@"CAWindowServerDisplay:%p size:{%g, %g} scale:%g nativeRotation:%@ normalizedDigitizerRect:{{%g, %g}, {%g, %g}} external:%d", windowServerDisplay, size, *&scale, v5, *&self->_normalizedDigitizerRect.origin.x, *&self->_normalizedDigitizerRect.origin.y, *&self->_normalizedDigitizerRect.size.width, *&self->_normalizedDigitizerRect.size.height, self->_external];

  return v6;
}

- (_BKDisplayInfo)init
{
  v8.receiver = self;
  v8.super_class = _BKDisplayInfo;
  result = [(_BKDisplayInfo *)&v8 init];
  if (result)
  {
    result->_normalizedDigitizerRect.origin.x = 0.0;
    result->_normalizedDigitizerRect.origin.y = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    result->_normalizedDigitizerRect.size = _Q0;
  }

  return result;
}

@end