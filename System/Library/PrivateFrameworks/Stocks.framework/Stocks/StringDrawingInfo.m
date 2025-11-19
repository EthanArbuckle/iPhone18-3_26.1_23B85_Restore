@interface StringDrawingInfo
+ (id)stringDrawingInfoWithString:(id)a3 color:(id)a4 font:(id)a5 size:(CGSize)a6;
- (CGSize)size;
@end

@implementation StringDrawingInfo

+ (id)stringDrawingInfoWithString:(id)a3 color:(id)a4 font:(id)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(StringDrawingInfo);
  [(StringDrawingInfo *)v13 setString:v12];

  [(StringDrawingInfo *)v13 setColor:v11];
  [(StringDrawingInfo *)v13 setFont:v10];

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