@interface UISSlotEmptyContent
+ (id)contentWithSize:(CGSize)a3;
- (CGSize)contentSize;
- (UISSlotEmptyContent)initWithSize:(CGSize)a3;
@end

@implementation UISSlotEmptyContent

+ (id)contentWithSize:(CGSize)a3
{
  v3 = [[a1 alloc] initWithSize:{a3.width, a3.height}];

  return v3;
}

- (UISSlotEmptyContent)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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