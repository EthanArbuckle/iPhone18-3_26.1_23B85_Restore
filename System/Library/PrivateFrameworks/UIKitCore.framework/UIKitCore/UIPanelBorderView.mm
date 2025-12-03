@interface UIPanelBorderView
- (UIPanelBorderView)initWithFrame:(CGRect)frame;
- (id)_cachedBackdropGroupName;
- (void)layoutSubviews;
- (void)setRenderAsShadow:(BOOL)shadow;
- (void)setStatusBarAvoidance:(int64_t)avoidance;
@end

@implementation UIPanelBorderView

- (UIPanelBorderView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = UIPanelBorderView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setAllowsEdgeAntialiasing:1];

    layer2 = [(UIView *)v4 layer];
    [layer2 setHitTestsAsOpaque:1];
  }

  return v4;
}

- (void)setStatusBarAvoidance:(int64_t)avoidance
{
  if (self->_statusBarAvoidance != avoidance)
  {
    self->_statusBarAvoidance = avoidance;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setRenderAsShadow:(BOOL)shadow
{
  self->_renderAsShadow = shadow;
  if (shadow)
  {
    if (qword_1ED49A038 != -1)
    {
      dispatch_once(&qword_1ED49A038, &__block_literal_global_149);
    }

    traitCollection = [(UIView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v5 = &_MergedGlobals_3_6;
    if (userInterfaceStyle == 2)
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
  statusBarAvoidance = [(UIPanelBorderView *)self statusBarAvoidance];
  replicatingView = [(UIPanelBorderView *)self replicatingView];
  v5 = replicatingView;
  if (statusBarAvoidance == 1)
  {

    if (!v5)
    {
      [(UIView *)self bounds];
      v7 = v6;
      window = [(UIView *)self window];
      v9 = __UIStatusBarManagerForWindow(window);
      [v9 statusBarHeight];
      v11 = v10;

      _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
      v13 = -1.0;
      if (_shouldReverseLayoutDirection)
      {
        v13 = 1.0;
      }

      v14 = [[UIPanelBorderReplicatingView alloc] initWithFrame:v7 * v13 replicaOffset:0.0, v7, v11, -(v13 * v7)];
      [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIPanelBorderView *)self setReplicatingView:v14];
      v15 = [[_UIBackdropView alloc] initWithPrivateStyle:-4];
      _cachedBackdropGroupName = [(UIPanelBorderView *)self _cachedBackdropGroupName];
      [(_UIBackdropView *)v15 setGroupName:_cachedBackdropGroupName];

      [(UIView *)v14 addSubview:v15];
      [(UIView *)self addSubview:v14];
    }
  }

  else
  {

    if (v5)
    {
      replicatingView2 = [(UIPanelBorderView *)self replicatingView];
      [replicatingView2 removeFromSuperview];

      [(UIPanelBorderView *)self setReplicatingView:0];
    }
  }
}

- (id)_cachedBackdropGroupName
{
  backdropGroupName = [(UIPanelBorderView *)self backdropGroupName];
  if (!backdropGroupName)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    backdropGroupName = [v4 stringWithFormat:@"%@-%p", v6, self];

    [(UIPanelBorderView *)self setBackdropGroupName:backdropGroupName];
  }

  return backdropGroupName;
}

@end