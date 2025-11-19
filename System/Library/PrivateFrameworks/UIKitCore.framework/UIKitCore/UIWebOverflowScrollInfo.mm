@interface UIWebOverflowScrollInfo
- (BOOL)coalesceScrollForNode:(id)a3 offset:(CGPoint)a4 isUserScroll:(BOOL)a5;
- (CGPoint)offset;
- (UIWebOverflowScrollInfo)initWithNode:(id)a3 offset:(CGPoint)a4 isUserScroll:(BOOL)a5;
- (void)dealloc;
@end

@implementation UIWebOverflowScrollInfo

- (UIWebOverflowScrollInfo)initWithNode:(id)a3 offset:(CGPoint)a4 isUserScroll:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v11.receiver = self;
  v11.super_class = UIWebOverflowScrollInfo;
  v9 = [(UIWebOverflowScrollInfo *)&v11 init];
  if (v9)
  {
    v9->_node = a3;
    v9->_offset.x = x;
    v9->_offset.y = y;
    v9->_isUserScroll = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIWebOverflowScrollInfo;
  [(UIWebOverflowScrollInfo *)&v3 dealloc];
}

- (BOOL)coalesceScrollForNode:(id)a3 offset:(CGPoint)a4 isUserScroll:(BOOL)a5
{
  if (self->_node != a3 || self->_isUserScroll != a5)
  {
    return 0;
  }

  self->_offset = a4;
  return 1;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end