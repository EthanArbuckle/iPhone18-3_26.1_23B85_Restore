@interface UISSlotEmptyContent
+ (id)contentWithSize:(CGSize)size;
- (CGSize)contentSize;
- (UISSlotEmptyContent)initWithSize:(CGSize)size;
@end

@implementation UISSlotEmptyContent

+ (id)contentWithSize:(CGSize)size
{
  v3 = [[self alloc] initWithSize:{size.width, size.height}];

  return v3;
}

- (UISSlotEmptyContent)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = UISSlotEmptyContent;
  result = [(UISSlotEmptyContent *)&v6 init];
  if (result)
  {
    result->_contentSize.width = width;
    result->_contentSize.height = height;
  }

  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end