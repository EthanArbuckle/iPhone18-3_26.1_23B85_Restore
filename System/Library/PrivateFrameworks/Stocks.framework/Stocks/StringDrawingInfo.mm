@interface StringDrawingInfo
+ (id)stringDrawingInfoWithString:(id)string color:(id)color font:(id)font size:(CGSize)size;
- (CGSize)size;
@end

@implementation StringDrawingInfo

+ (id)stringDrawingInfoWithString:(id)string color:(id)color font:(id)font size:(CGSize)size
{
  height = size.height;
  width = size.width;
  fontCopy = font;
  colorCopy = color;
  stringCopy = string;
  v13 = objc_alloc_init(StringDrawingInfo);
  [(StringDrawingInfo *)v13 setString:stringCopy];

  [(StringDrawingInfo *)v13 setColor:colorCopy];
  [(StringDrawingInfo *)v13 setFont:fontCopy];

  [(StringDrawingInfo *)v13 setSize:width, height];

  return v13;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end