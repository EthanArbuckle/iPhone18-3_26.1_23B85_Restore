@interface _UINavigationBarTitleRenameRemoteView
- (CGSize)intrinsicContentSize;
- (_UINavigationBarTitleRenameRemoteView)initWithSession:(id)session;
- (void)_connect;
- (void)_disconnect;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setHorizontalTextInset:(double)inset;
- (void)setIntrinsicContentSize:(CGSize)size;
- (void)setNeedsMetricsUpdate;
- (void)setPortalView:(id)view;
- (void)setTextAlignment:(int64_t)alignment;
- (void)updateMetrics;
- (void)updateMetricsIfNeeded;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UINavigationBarTitleRenameRemoteView

- (_UINavigationBarTitleRenameRemoteView)initWithSession:(id)session
{
  sessionCopy = session;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenameRemoteView.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"[session isKindOfClass:[_UINavigationBarTitleRenamerRemoteSession class]]"}];
  }

  v11.receiver = self;
  v11.super_class = _UINavigationBarTitleRenameRemoteView;
  v7 = [(UIView *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_session, session);
    v8->_textAlignment = 4;
  }

  return v8;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  window = [(UIView *)self window];

  v5 = windowCopy;
  if (windowCopy)
  {
    if (window)
    {
      goto LABEL_7;
    }

    [(_UINavigationBarTitleRenameRemoteView *)self _connect];
  }

  else
  {
    if (!window)
    {
      goto LABEL_7;
    }

    [(_UINavigationBarTitleRenameRemoteView *)self _disconnect];
  }

  v5 = windowCopy;
LABEL_7:
}

- (void)setPortalView:(id)view
{
  viewCopy = view;
  portalView = self->_portalView;
  if (portalView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)portalView removeFromSuperview];
    [(UIView *)self bounds];
    [(_UIPortalView *)v7 setFrame:?];
    [(UIView *)v7 setAutoresizingMask:18];
    [(UIView *)self addSubview:v7];
    objc_storeStrong(&self->_portalView, view);
    viewCopy = v7;
  }
}

- (void)setIntrinsicContentSize:(CGSize)size
{
  if (size.width != self->_intrinsicContentSize.width || size.height != self->_intrinsicContentSize.height)
  {
    self->_intrinsicContentSize = size;
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setNeedsMetricsUpdate
{
  if ((*&self->_flags & 1) == 0)
  {
    portalView = [(_UINavigationBarTitleRenameRemoteView *)self portalView];

    if (portalView)
    {
      *&self->_flags |= 1u;

      [(_UINavigationBarTitleRenameRemoteView *)self performSelector:sel_updateMetricsIfNeeded withObject:0 afterDelay:0.0];
    }
  }
}

- (void)updateMetricsIfNeeded
{
  if (*&self->_flags)
  {
    [(_UINavigationBarTitleRenameRemoteView *)self updateMetrics];
  }
}

- (void)updateMetrics
{
  *&self->_flags &= ~1u;
  [MEMORY[0x1E696AF00] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  objc_initWeak(&location, self);
  v3 = [_UIONavigationBarTitleRenamerViewMetricsUpdateAction alloc];
  [(UIView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  textAlignment = [(_UINavigationBarTitleRenameRemoteView *)self textAlignment];
  session = [(_UINavigationBarTitleRenameRemoteView *)self session];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __54___UINavigationBarTitleRenameRemoteView_updateMetrics__block_invoke;
  v20 = &unk_1E7103698;
  objc_copyWeak(&v21, &location);
  v14 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)v3 initWithFrame:textAlignment textAlignment:session session:&v17 responseHandler:v5, v7, v9, v11];

  v15 = [(_UINavigationBarTitleRenameRemoteView *)self session:v17];
  overlayService = [v15 overlayService];
  [overlayService sendOverlayAction:v14];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenameRemoteView;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UINavigationBarTitleRenameRemoteView *)self setNeedsMetricsUpdate];
}

- (void)setCenter:(CGPoint)center
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenameRemoteView;
  [(UIView *)&v4 setCenter:center.x, center.y];
  [(_UINavigationBarTitleRenameRemoteView *)self setNeedsMetricsUpdate];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenameRemoteView;
  [(UIView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_UINavigationBarTitleRenameRemoteView *)self setNeedsMetricsUpdate];
}

- (void)_connect
{
  portalView = [(_UINavigationBarTitleRenameRemoteView *)self portalView];

  if (portalView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenameRemoteView.m" lineNumber:165 description:@"Remote view is already connected."];
  }

  v5 = [_UIPortalView alloc];
  [(UIView *)self bounds];
  v7 = [(_UIPortalView *)v5 initWithFrame:?];
  [(_UIPortalView *)v7 setName:@"_UINavigationBarTitleRenameRemoteView.textfield"];
  [(UIView *)v7 setAutoresizingMask:0];
  [(_UIPortalView *)v7 setHidesSourceView:1];
  [(_UIPortalView *)v7 setAllowsHitTesting:1];
  [(_UIPortalView *)v7 _setAllowedInContextTransform:1];
  [(_UINavigationBarTitleRenameRemoteView *)self setPortalView:v7];
  [(_UINavigationBarTitleRenameRemoteView *)self updateMetrics];
}

- (void)_disconnect
{
  session = [(_UINavigationBarTitleRenameRemoteView *)self session];
  [session cancelSession];

  portalView = [(_UINavigationBarTitleRenameRemoteView *)self portalView];
  [portalView removeFromSuperview];

  [(_UINavigationBarTitleRenameRemoteView *)self setPortalView:0];
}

- (void)setHorizontalTextInset:(double)inset
{
  if (self->_horizontalTextInset != inset)
  {
    self->_horizontalTextInset = inset;
    horizontalTextInsetDidChangeCallback = self->_horizontalTextInsetDidChangeCallback;
    if (horizontalTextInsetDidChangeCallback)
    {
      horizontalTextInsetDidChangeCallback[2]();
    }
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(_UINavigationBarTitleRenameRemoteView *)self setNeedsMetricsUpdate];
  }
}

@end