@interface TSWPUIGraphicalAttachment
- (CGSize)size;
- (id)rendererForAttachment;
- (void)invalidate;
@end

@implementation TSWPUIGraphicalAttachment

- (id)rendererForAttachment
{
  v2 = objc_opt_new();

  return v2;
}

- (void)invalidate
{
  parentStorage = [(TSWPAttachment *)self parentStorage];
  findCharIndex = [(TSWPAttachment *)self findCharIndex];

  [(TSWPStorage *)parentStorage p_didChangeRange:findCharIndex delta:1 broadcastKind:0, 1];
}

- (CGSize)size
{
  v2 = 100.0;
  v3 = 30.0;
  result.height = v2;
  result.width = v3;
  return result;
}

@end