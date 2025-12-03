@interface GQHWrapSandbag
- (GQHWrapSandbag)initWithSize:(CGSize)size floatsLeft:(BOOL)left;
@end

@implementation GQHWrapSandbag

- (GQHWrapSandbag)initWithSize:(CGSize)size floatsLeft:(BOOL)left
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = GQHWrapSandbag;
  result = [(GQHWrapSandbag *)&v8 init];
  if (result)
  {
    result->mSize.width = width;
    result->mSize.height = height;
    result->mFloatsLeft = left;
  }

  return result;
}

@end