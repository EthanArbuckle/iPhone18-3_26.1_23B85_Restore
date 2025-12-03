@interface _UIBackdropViewLayer
- (void)dealloc;
- (void)renderInContext:(CGContext *)context;
@end

@implementation _UIBackdropViewLayer

- (void)renderInContext:(CGContext *)context
{
  backdropView = [(_UIBackdropViewLayer *)self backdropView];
  [backdropView willCallRenderInContextOnBackdropViewLayer];

  v7.receiver = self;
  v7.super_class = _UIBackdropViewLayer;
  [(_UIBackdropViewLayer *)&v7 renderInContext:context];
  backdropView2 = [(_UIBackdropViewLayer *)self backdropView];
  [backdropView2 didCallRenderInContextOnBackdropViewLayer];
}

- (void)dealloc
{
  self->_backdropView = 0;
  v2.receiver = self;
  v2.super_class = _UIBackdropViewLayer;
  [(_UIBackdropViewLayer *)&v2 dealloc];
}

@end