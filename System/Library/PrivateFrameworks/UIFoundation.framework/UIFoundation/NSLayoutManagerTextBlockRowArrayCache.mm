@interface NSLayoutManagerTextBlockRowArrayCache
- (NSLayoutManagerTextBlockRowArrayCache)initWithRowCharRange:(_NSRange)range containerWidth:(double)width rowArray:(id)array collapseBorders:(BOOL)borders;
- (void)dealloc;
@end

@implementation NSLayoutManagerTextBlockRowArrayCache

- (NSLayoutManagerTextBlockRowArrayCache)initWithRowCharRange:(_NSRange)range containerWidth:(double)width rowArray:(id)array collapseBorders:(BOOL)borders
{
  length = range.length;
  location = range.location;
  v13.receiver = self;
  v13.super_class = NSLayoutManagerTextBlockRowArrayCache;
  v11 = [(NSLayoutManagerTextBlockRowArrayCache *)&v13 init];
  v11->_rowCharRange.location = location;
  v11->_rowCharRange.length = length;
  v11->_containerWidth = width;
  v11->_rowArray = array;
  v11->_collapseBorders = borders;
  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSLayoutManagerTextBlockRowArrayCache;
  [(NSLayoutManagerTextBlockRowArrayCache *)&v3 dealloc];
}

@end