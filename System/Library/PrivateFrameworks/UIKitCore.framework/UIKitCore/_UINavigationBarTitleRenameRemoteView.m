@interface _UINavigationBarTitleRenameRemoteView
- (CGSize)intrinsicContentSize;
- (_UINavigationBarTitleRenameRemoteView)initWithSession:(id)a3;
- (void)_connect;
- (void)_disconnect;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHorizontalTextInset:(double)a3;
- (void)setIntrinsicContentSize:(CGSize)a3;
- (void)setNeedsMetricsUpdate;
- (void)setPortalView:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)updateMetrics;
- (void)updateMetricsIfNeeded;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UINavigationBarTitleRenameRemoteView

- (_UINavigationBarTitleRenameRemoteView)initWithSession:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenameRemoteView.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"[session isKindOfClass:[_UINavigationBarTitleRenamerRemoteSession class]]"}];
  }

  v11.receiver = self;
  v11.super_class = _UINavigationBarTitleRenameRemoteView;
  v7 = [(UIView *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_session, a3);
    v8->_textAlignment = 4;
  }

  return v8;
}

- (void)willMoveToWindow:(id)a3
{
  v6 = a3;
  v4 = [(UIView *)self window];

  v5 = v6;
  if (v6)
  {
    if (v4)
    {
      goto LABEL_7;
    }

    [(_UINavigationBarTitleRenameRemoteView *)self _connect];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    [(_UINavigationBarTitleRenameRemoteView *)self _disconnect];
  }

  v5 = v6;
LABEL_7:
}

- (void)setPortalView:(id)a3
{
  v5 = a3;
  portalView = self->_portalView;
  if (portalView != v5)
  {
    v7 = v5;
    [(UIView *)portalView removeFromSuperview];
    [(UIView *)self bounds];
    [(_UIPortalView *)v7 setFrame:?];
    [(UIView *)v7 setAutoresizingMask:18];
    [(UIView *)self addSubview:v7];
    objc_storeStrong(&self->_portalView, a3);
    v5 = v7;
  }
}

- (void)setIntrinsicContentSize:(CGSize)a3
{
  if (a3.width != self->_intrinsicContentSize.width || a3.height != self->_intrinsicContentSize.height)
  {
    self->_intrinsicContentSize = a3;
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
    v3 = [(_UINavigationBarTitleRenameRemoteView *)self portalView];

    if (v3)
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
  v12 = [(_UINavigationBarTitleRenameRemoteView *)self textAlignment];
  v13 = [(_UINavigationBarTitleRenameRemoteView *)self session];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __54___UINavigationBarTitleRenameRemoteView_updateMetrics__block_invoke;
  v20 = &unk_1E7103698;
  objc_copyWeak(&v21, &location);
  v14 = [(_UIONavigationBarTitleRenamerViewMetricsUpdateAction *)v3 initWithFrame:v12 textAlignment:v13 session:&v17 responseHandler:v5, v7, v9, v11];

  v15 = [(_UINavigationBarTitleRenameRemoteView *)self session:v17];
  v16 = [v15 overlayService];
  [v16 sendOverlayAction:v14];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenameRemoteView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UINavigationBarTitleRenameRemoteView *)self setNeedsMetricsUpdate];
}

- (void)setCenter:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenameRemoteView;
  [(UIView *)&v4 setCenter:a3.x, a3.y];
  [(_UINavigationBarTitleRenameRemoteView *)self setNeedsMetricsUpdate];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenameRemoteView;
  [(UIView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UINavigationBarTitleRenameRemoteView *)self setNeedsMetricsUpdate];
}

- (void)_connect
{
  v4 = [(_UINavigationBarTitleRenameRemoteView *)self portalView];

  if (v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenameRemoteView.m" lineNumber:165 description:@"Remote view is already connected."];
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
  v3 = [(_UINavigationBarTitleRenameRemoteView *)self session];
  [v3 cancelSession];

  v4 = [(_UINavigationBarTitleRenameRemoteView *)self portalView];
  [v4 removeFromSuperview];

  [(_UINavigationBarTitleRenameRemoteView *)self setPortalView:0];
}

- (void)setHorizontalTextInset:(double)a3
{
  if (self->_horizontalTextInset != a3)
  {
    self->_horizontalTextInset = a3;
    horizontalTextInsetDidChangeCallback = self->_horizontalTextInsetDidChangeCallback;
    if (horizontalTextInsetDidChangeCallback)
    {
      horizontalTextInsetDidChangeCallback[2]();
    }
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(_UINavigationBarTitleRenameRemoteView *)self setNeedsMetricsUpdate];
  }
}

@end