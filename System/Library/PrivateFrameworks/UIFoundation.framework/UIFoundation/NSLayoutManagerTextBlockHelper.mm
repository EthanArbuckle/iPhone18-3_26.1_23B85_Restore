@interface NSLayoutManagerTextBlockHelper
- (NSLayoutManagerTextBlockHelper)initWithTextBlock:(id)block layoutRect:(CGRect)rect boundsRect:(CGRect)boundsRect;
- (void)dealloc;
@end

@implementation NSLayoutManagerTextBlockHelper

- (NSLayoutManagerTextBlockHelper)initWithTextBlock:(id)block layoutRect:(CGRect)rect boundsRect:(CGRect)boundsRect
{
  height = boundsRect.size.height;
  width = boundsRect.size.width;
  y = boundsRect.origin.y;
  x = boundsRect.origin.x;
  v9 = rect.size.height;
  v10 = rect.size.width;
  v11 = rect.origin.y;
  v12 = rect.origin.x;
  v16.receiver = self;
  v16.super_class = NSLayoutManagerTextBlockHelper;
  v14 = [(NSLayoutManagerTextBlockHelper *)&v16 init];
  v14->_block = block;
  v14->_layoutRect.origin.x = v12;
  v14->_layoutRect.origin.y = v11;
  v14->_layoutRect.size.width = v10;
  v14->_layoutRect.size.height = v9;
  v14->_boundsRect.origin.x = x;
  v14->_boundsRect.origin.y = y;
  v14->_boundsRect.size.width = width;
  v14->_boundsRect.size.height = height;
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSLayoutManagerTextBlockHelper;
  [(NSLayoutManagerTextBlockHelper *)&v3 dealloc];
}

@end