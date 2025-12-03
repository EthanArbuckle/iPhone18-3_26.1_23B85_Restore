@interface UIWebOverflowScrollInfo
- (BOOL)coalesceScrollForNode:(id)node offset:(CGPoint)offset isUserScroll:(BOOL)scroll;
- (CGPoint)offset;
- (UIWebOverflowScrollInfo)initWithNode:(id)node offset:(CGPoint)offset isUserScroll:(BOOL)scroll;
- (void)dealloc;
@end

@implementation UIWebOverflowScrollInfo

- (UIWebOverflowScrollInfo)initWithNode:(id)node offset:(CGPoint)offset isUserScroll:(BOOL)scroll
{
  y = offset.y;
  x = offset.x;
  v11.receiver = self;
  v11.super_class = UIWebOverflowScrollInfo;
  v9 = [(UIWebOverflowScrollInfo *)&v11 init];
  if (v9)
  {
    v9->_node = node;
    v9->_offset.x = x;
    v9->_offset.y = y;
    v9->_isUserScroll = scroll;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIWebOverflowScrollInfo;
  [(UIWebOverflowScrollInfo *)&v3 dealloc];
}

- (BOOL)coalesceScrollForNode:(id)node offset:(CGPoint)offset isUserScroll:(BOOL)scroll
{
  if (self->_node != node || self->_isUserScroll != scroll)
  {
    return 0;
  }

  self->_offset = offset;
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