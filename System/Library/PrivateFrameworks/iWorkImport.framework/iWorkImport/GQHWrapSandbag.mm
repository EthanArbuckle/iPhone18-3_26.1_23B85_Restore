@interface GQHWrapSandbag
- (GQHWrapSandbag)initWithSize:(CGSize)a3 floatsLeft:(BOOL)a4;
@end

@implementation GQHWrapSandbag

- (GQHWrapSandbag)initWithSize:(CGSize)a3 floatsLeft:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = GQHWrapSandbag;
  result = [(GQHWrapSandbag *)&v8 init];
  if (result)
  {
    result->mSize.width = width;
    result->mSize.height = height;
    result->mFloatsLeft = a4;
  }

  return result;
}

@end