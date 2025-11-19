@interface UIPanelBorderView
- (UIPanelBorderView)initWithFrame:(CGRect)a3;
- (id)_cachedBackdropGroupName;
- (void)layoutSubviews;
- (void)setRenderAsShadow:(BOOL)a3;
- (void)setStatusBarAvoidance:(int64_t)a3;
@end

@implementation UIPanelBorderView

- (UIPanelBorderView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = UIPanelBorderView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsEdgeAntialiasing:1];

    v6 = [(UIView *)v4 layer];
    [v6 setHitTestsAsOpaque:1];
  }

  return v4;
}

- (void)setStatusBarAvoidance:(int64_t)a3
{
  if (self->_statusBarAvoidance != a3)
  {
    self->_statusBarAvoidance = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setRenderAsShadow:(BOOL)a3
{
  self->_renderAsShadow = a3;
  if (a3)
  {
    if (qword_1ED49A038 != -1)
    {
      dispatch_once(&qword_1ED49A038, &__block_literal_global_149);
    }

    v6 = [(UIView *)self traitCollection];
    v4 = [v6 userInterfaceStyle];
    v5 = &_MergedGlobals_3_6;
    if (v4 == 2)
    {
      v5 = &qword_1ED49A030;
    }

    [(UIView *)self setBackgroundColor:*v5];
  }
}

void __39__UIPanelBorderView_setRenderAsShadow___block_invoke()
{
  v0 = [UIColor colorWithWhite:0.0 alpha:0.16];
  v1 = _MergedGlobals_3_6;
  _MergedGlobals_3_6 = v0;

  v2 = +[UIColor opaqueSeparatorColor];
  v3 = qword_1ED49A030;
  qword_1ED49A030 = v2;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = UIPanelBorderView;
  [(UIView *)&v18 layoutSubviews];
  v3 = [(UIPanelBorderView *)self statusBarAvoidance];
  v4 = [(UIPanelBorderView *)self replicatingView];
  v5 = v4;
  if (v3 == 1)
  {

    if (!v5)
    {
      [(UIView *)self bounds];
      v7 = v6;
      v8 = [(UIView *)self window];
      v9 = __UIStatusBarManagerForWindow(v8);
      [v9 statusBarHeight];
      v11 = v10;

      v12 = [(UIView *)self _shouldReverseLayoutDirection];
      v13 = -1.0;
      if (v12)
      {
        v13 = 1.0;
      }

      v14 = [[UIPanelBorderReplicatingView alloc] initWithFrame:v7 * v13 replicaOffset:0.0, v7, v11, -(v13 * v7)];
      [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIPanelBorderView *)self setReplicatingView:v14];
      v15 = [[_UIBackdropView alloc] initWithPrivateStyle:-4];
      v16 = [(UIPanelBorderView *)self _cachedBackdropGroupName];
      [(_UIBackdropView *)v15 setGroupName:v16];

      [(UIView *)v14 addSubview:v15];
      [(UIView *)self addSubview:v14];
    }
  }

  else
  {

    if (v5)
    {
      v17 = [(UIPanelBorderView *)self replicatingView];
      [v17 removeFromSuperview];

      [(UIPanelBorderView *)self setReplicatingView:0];
    }
  }
}

- (id)_cachedBackdropGroupName
{
  v3 = [(UIPanelBorderView *)self backdropGroupName];
  if (!v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v3 = [v4 stringWithFormat:@"%@-%p", v6, self];

    [(UIPanelBorderView *)self setBackdropGroupName:v3];
  }

  return v3;
}

@end