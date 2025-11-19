@interface _UIWebFindOnPageHighlightBubbleView
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setHighlightedContent:(CGImage *)a3 withOrigin:(CGPoint)a4;
@end

@implementation _UIWebFindOnPageHighlightBubbleView

- (void)drawRect:(CGRect)a3
{
  [(UIView *)self bounds:a3.origin.x];
  v14 = CGRectInset(v13, 6.0, 6.0);
  v15 = CGRectInset(v14, -3.5, -1.5);
  v11 = [UIBezierPath bezierPathWithRoundedRect:v15.origin.x cornerRadius:v15.origin.y, v15.size.width, v15.size.height, 3.0];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v5);
  v6 = [UIColor colorWithRed:1.0 green:0.894117647 blue:0.219607843 alpha:1.0];
  [v6 set];

  [v11 fill];
  CGContextRestoreGState(v5);
  if (self->_highlightedContent)
  {
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
    v9 = 1.0 / v8;

    v10 = round(v9 * CGImageGetWidth(self->_highlightedContent));
    v16.size.height = round(v9 * CGImageGetHeight(self->_highlightedContent));
    v16.origin.x = self->_highlightedContentOrigin.x;
    v16.origin.y = self->_highlightedContentOrigin.y;
    v16.size.width = v10;
    CGContextDrawImage(v5, v16, self->_highlightedContent);
  }
}

- (void)setHighlightedContent:(CGImage *)a3 withOrigin:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  highlightedContent = self->_highlightedContent;
  if (highlightedContent)
  {
    CFRelease(highlightedContent);
  }

  self->_highlightedContent = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  self->_highlightedContentOrigin.x = x;
  self->_highlightedContentOrigin.y = y;
}

- (void)dealloc
{
  highlightedContent = self->_highlightedContent;
  if (highlightedContent)
  {
    CFRelease(highlightedContent);
  }

  v4.receiver = self;
  v4.super_class = _UIWebFindOnPageHighlightBubbleView;
  [(UIView *)&v4 dealloc];
}

@end