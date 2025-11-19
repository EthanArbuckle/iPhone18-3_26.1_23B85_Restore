@interface _UIWebViewScrollView
- (_UIWebViewScrollView)initWithFrame:(CGRect)a3;
- (void)_setContentInsetAdjustmentBehaviorInternal:(int64_t)a3;
- (void)_setWebView:(id)a3;
- (void)_weaklySetBouncesHorizontally:(BOOL)a3;
- (void)dealloc;
- (void)setBounces:(BOOL)a3;
- (void)setBouncesHorizontally:(BOOL)a3;
- (void)setBouncesVertically:(BOOL)a3;
- (void)setContentInsetAdjustmentBehavior:(int64_t)a3;
- (void)setDelegate:(id)a3;
@end

@implementation _UIWebViewScrollView

- (_UIWebViewScrollView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UIWebViewScrollView;
  v3 = [(UIWebScrollView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)_weaklySetBouncesHorizontally:(BOOL)a3
{
  if (!self->_bouncesSetExplicitly)
  {
    v3.receiver = self;
    v3.super_class = _UIWebViewScrollView;
    [(UIScrollView *)&v3 setBouncesHorizontally:a3];
  }
}

- (void)setBounces:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v4 setBounces:a3];
  self->_bouncesSetExplicitly = 1;
}

- (void)setBouncesVertically:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v4 setBouncesVertically:a3];
  self->_bouncesSetExplicitly = 1;
}

- (void)setBouncesHorizontally:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v4 setBouncesHorizontally:a3];
  self->_bouncesSetExplicitly = 1;
}

- (void)setDelegate:(id)a3
{
  [(_UIWebViewScrollViewDelegateForwarder *)self->_forwarder setDelegate:a3];
  v6.receiver = self;
  v6.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v6 setDelegate:0];
  forwarder = self->_forwarder;
  v5.receiver = self;
  v5.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v5 setDelegate:forwarder];
}

- (void)_setWebView:(id)a3
{
  [(_UIWebViewScrollViewDelegateForwarder *)self->_forwarder setWebView:a3];
  v6.receiver = self;
  v6.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v6 setDelegate:0];
  forwarder = self->_forwarder;
  v5.receiver = self;
  v5.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v5 setDelegate:forwarder];
}

- (void)setContentInsetAdjustmentBehavior:(int64_t)a3
{
  self->_contentInsetAdjustmentBehaviorWasExternallyOverridden = 1;
  v3.receiver = self;
  v3.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v3 setContentInsetAdjustmentBehavior:a3];
}

- (void)_setContentInsetAdjustmentBehaviorInternal:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = _UIWebViewScrollView;
  [(UIScrollView *)&v3 setContentInsetAdjustmentBehavior:a3];
}

@end