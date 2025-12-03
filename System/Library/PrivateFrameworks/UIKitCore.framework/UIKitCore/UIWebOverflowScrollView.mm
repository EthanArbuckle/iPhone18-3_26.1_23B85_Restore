@interface UIWebOverflowScrollView
- (BOOL)fixUpViewAfterInsertion;
- (UIWebOverflowScrollView)initWithLayer:(id)layer node:(id)node webBrowserView:(id)view;
- (id)superview;
- (void)dealloc;
- (void)replaceLayer:(id)layer;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation UIWebOverflowScrollView

- (UIWebOverflowScrollView)initWithLayer:(id)layer node:(id)node webBrowserView:(id)view
{
  [layer bounds];
  v12.receiver = self;
  v12.super_class = UIWebOverflowScrollView;
  v9 = [(UIScrollView *)&v12 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    [(UIWebOverflowScrollView *)v9 replaceLayer:layer];
    v10->_webBrowserView = view;
    v10->_scrollListener = [[UIWebOverflowScrollListener alloc] initWithScrollView:v10];
    [(UIWebOverflowScrollView *)v10 setNode:node];
    [(UIScrollView *)v10 setDirectionalLockEnabled:1];
    [(UIScrollView *)v10 setScrollsToTop:0];
    [(UIScrollView *)v10 setContentInsetAdjustmentBehavior:2];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIWebOverflowScrollView;
  [(UIScrollView *)&v3 dealloc];
}

- (void)replaceLayer:(id)layer
{
  [(UIView *)self _replaceLayer:?];

  [(UIWebOverflowScrollView *)self setWebLayer:layer];
}

- (id)superview
{
  superlayer = [(CALayer *)[(UIView *)self layer] superlayer];
  if (superlayer)
  {
    superlayer2 = superlayer;
    while (1)
    {
      if ([(CALayer *)superlayer2 delegate])
      {
        [(CALayer *)superlayer2 delegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      superlayer2 = [(CALayer *)superlayer2 superlayer];
      if (!superlayer2)
      {
        goto LABEL_6;
      }
    }

    return [(CALayer *)superlayer2 delegate];
  }

  else
  {
LABEL_6:
    if (self->_beingRemoved)
    {
      return self->_webBrowserView;
    }

    else
    {
      return 0;
    }
  }
}

- (BOOL)fixUpViewAfterInsertion
{
  superview = [(UIWebOverflowScrollView *)self superview];
  if (superview)
  {
    [(UIView *)self _webCustomViewWasAddedAsSubviewOfView:?];
    v4 = ([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1 && [(UIWebOverflowScrollView *)self superview]== self->_webBrowserView;
    [(UIScrollView *)self setScrollsToTop:v4];
    [(UIView *)self _invalidateSubviewCache];
  }

  return superview != 0;
}

- (void)setContentOffset:(CGPoint)offset
{
  v4.receiver = self;
  v4.super_class = UIWebOverflowScrollView;
  [(UIScrollView *)&v4 setContentOffset:offset.x, offset.y];
  [(UIWebBrowserView *)self->_webBrowserView _overflowScrollView:self scrollOffsetChangedForNode:self->_node whileScrolling:1];
}

@end