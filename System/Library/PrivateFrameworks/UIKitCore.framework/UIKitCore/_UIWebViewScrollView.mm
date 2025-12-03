@interface _UIWebViewScrollView
- (_UIWebViewScrollView)initWithFrame:(CGRect)frame;
- (void)_setContentInsetAdjustmentBehaviorInternal:(int64_t)internal;
- (void)_setWebView:(id)view;
- (void)_weaklySetBouncesHorizontally:(BOOL)horizontally;
- (void)dealloc;
- (void)setBounces:(BOOL)bounces;
- (void)setBouncesHorizontally:(BOOL)horizontally;
- (void)setBouncesVertically:(BOOL)vertically;
- (void)setContentInsetAdjustmentBehavior:(int64_t)behavior;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIWebViewScrollView

- (_UIWebViewScrollView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIWebViewScrollView;
  v3 = [(UIWebScrollView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v3->_forwarder = objc_alloc_init(_UIWebViewScrollViewDelegateForwarder);
    v3->_contentInsetAdjustmentBehaviorWasExternallyOverridden = [(UIScrollView *)v3 contentInsetAdjustmentBehavior]!= UIScrollViewContentInsetAdjustmentAutomatic;
  }

  return v3;
}

- (void)dealloc
{
  self->_forwarder = 0;
  v3.receiver = self;
  v3.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v3 dealloc];
}

- (void)_weaklySetBouncesHorizontally:(BOOL)horizontally
{
  if (!self->_bouncesSetExplicitly)
  {
    v3.receiver = self;
    v3.super_class = _UIWebViewScrollView;
    [(UIScrollView *)&v3 setBouncesHorizontally:horizontally];
  }
}

- (void)setBounces:(BOOL)bounces
{
  v4.receiver = self;
  v4.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v4 setBounces:bounces];
  self->_bouncesSetExplicitly = 1;
}

- (void)setBouncesVertically:(BOOL)vertically
{
  v4.receiver = self;
  v4.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v4 setBouncesVertically:vertically];
  self->_bouncesSetExplicitly = 1;
}

- (void)setBouncesHorizontally:(BOOL)horizontally
{
  v4.receiver = self;
  v4.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v4 setBouncesHorizontally:horizontally];
  self->_bouncesSetExplicitly = 1;
}

- (void)setDelegate:(id)delegate
{
  [(_UIWebViewScrollViewDelegateForwarder *)self->_forwarder setDelegate:delegate];
  v6.receiver = self;
  v6.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v6 setDelegate:0];
  forwarder = self->_forwarder;
  v5.receiver = self;
  v5.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v5 setDelegate:forwarder];
}

- (void)_setWebView:(id)view
{
  [(_UIWebViewScrollViewDelegateForwarder *)self->_forwarder setWebView:view];
  v6.receiver = self;
  v6.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v6 setDelegate:0];
  forwarder = self->_forwarder;
  v5.receiver = self;
  v5.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v5 setDelegate:forwarder];
}

- (void)setContentInsetAdjustmentBehavior:(int64_t)behavior
{
  self->_contentInsetAdjustmentBehaviorWasExternallyOverridden = 1;
  v3.receiver = self;
  v3.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v3 setContentInsetAdjustmentBehavior:behavior];
}

- (void)_setContentInsetAdjustmentBehaviorInternal:(int64_t)internal
{
  v3.receiver = self;
  v3.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v3 setContentInsetAdjustmentBehavior:internal];
}

@end