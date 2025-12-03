@interface _UIOShowTouchAction_TestingOnly
- (_UIOShowTouchAction_TestingOnly)initWithPoint:(CGPoint)point inView:(id)view;
- (void)_removeIndicatorView;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIOShowTouchAction_TestingOnly

- (_UIOShowTouchAction_TestingOnly)initWithPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v8 = +[_UIOServerActionOriginContext defaultOriginContext];
  v9 = [v8 mutableCopy];

  [v9 setLayerReferencePoint:{x, y}];
  layer = [viewCopy layer];

  [v9 setLayerId:CALayerGetRenderId()];
  v11 = [(_UIOServerAction *)self initWithOriginContext:v9 info:0 responder:0];

  return v11;
}

- (void)_removeIndicatorView
{
  v2[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55___UIOShowTouchAction_TestingOnly__removeIndicatorView__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55___UIOShowTouchAction_TestingOnly__removeIndicatorView__block_invoke_2;
  v2[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:0 delay:v3 options:v2 animations:0.3 completion:1.0];
}

- (void)performActionFromConnection:(id)connection
{
  server = [connection server];
  v5 = [server displayDelegateForAction:self];

  rootViewController = [v5 rootViewController];
  view = [rootViewController view];

  originContext = [(_UIOServerAction *)self originContext];
  [originContext translatedReferencePointForDestinationView:view];
  v10 = v9;
  v12 = v11;

  v13 = [[UIView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
  indicatorView = self->_indicatorView;
  self->_indicatorView = v13;

  layer = [(UIView *)self->_indicatorView layer];
  [layer setCornerRadius:50.0];

  [(UIView *)self->_indicatorView setCenter:v10, v12];
  v16 = +[UIColor redColor];
  [(UIView *)self->_indicatorView setBackgroundColor:v16];

  [view addSubview:self->_indicatorView];
  CGAffineTransformMakeScale(&v21, 4.0, 4.0);
  v17 = self->_indicatorView;
  v20 = v21;
  [(UIView *)v17 setTransform:&v20];
  [(UIView *)self->_indicatorView setAlpha:0.0];
  v18[4] = self;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63___UIOShowTouchAction_TestingOnly_performActionFromConnection___block_invoke;
  v19[3] = &unk_1E70F3590;
  v19[4] = self;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63___UIOShowTouchAction_TestingOnly_performActionFromConnection___block_invoke_2;
  v18[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:0 delay:v19 usingSpringWithDamping:v18 initialSpringVelocity:0.6 options:0.0 animations:1.0 completion:100.0];
}

@end