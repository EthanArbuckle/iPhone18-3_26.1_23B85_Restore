@interface PXMagazineFrame
- (PXMagazineFrame)initWithWidth:(int64_t)width height:(int64_t)height;
@end

@implementation PXMagazineFrame

- (PXMagazineFrame)initWithWidth:(int64_t)width height:(int64_t)height
{
  v7.receiver = self;
  v7.super_class = PXMagazineFrame;
  result = [(PXMagazineFrame *)&v7 init];
  if (result)
  {
    result->_width = width;
    result->_height = height;
  }

  return result;
}

@end