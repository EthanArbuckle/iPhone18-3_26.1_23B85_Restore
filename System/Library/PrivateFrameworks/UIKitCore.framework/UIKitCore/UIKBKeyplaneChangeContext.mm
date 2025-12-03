@interface UIKBKeyplaneChangeContext
+ (id)keyplaneChangeContext;
+ (id)keyplaneChangeContextWithSize:(CGSize)size;
- (CGSize)size;
@end

@implementation UIKBKeyplaneChangeContext

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)keyplaneChangeContext
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)keyplaneChangeContextWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(objc_opt_class());
  [v5 setSize:{width, height}];

  return v5;
}

@end