@interface NSLayoutManagerTextBlockHelper
- (NSLayoutManagerTextBlockHelper)initWithTextBlock:(id)a3 layoutRect:(CGRect)a4 boundsRect:(CGRect)a5;
- (void)dealloc;
@end

@implementation NSLayoutManagerTextBlockHelper

- (NSLayoutManagerTextBlockHelper)initWithTextBlock:(id)a3 layoutRect:(CGRect)a4 boundsRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v16.receiver = self;
  v16.super_class = NSLayoutManagerTextBlockHelper;
  v14 = [(NSLayoutManagerTextBlockHelper *)&v16 init];
  v14->_block = a3;
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