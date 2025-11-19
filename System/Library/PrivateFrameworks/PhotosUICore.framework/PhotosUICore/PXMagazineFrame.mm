@interface PXMagazineFrame
- (PXMagazineFrame)initWithWidth:(int64_t)a3 height:(int64_t)a4;
@end

@implementation PXMagazineFrame

- (PXMagazineFrame)initWithWidth:(int64_t)a3 height:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PXMagazineFrame;
  result = [(PXMagazineFrame *)&v7 init];
  if (result)
  {
    result->_width = a3;
    result->_height = a4;
  }

  return result;
}

@end