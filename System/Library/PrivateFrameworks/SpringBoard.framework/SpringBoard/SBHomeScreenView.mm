@interface SBHomeScreenView
- (SBHomeScreenView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)setIconContentView:(id)view;
- (void)setUsesGlassGroup:(BOOL)group;
- (void)updateGlassGroup;
@end

@implementation SBHomeScreenView

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SBHomeScreenView;
  [(SBHomeScreenView *)&v12 layoutSubviews];
  [(SBHomeScreenView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  statusBarLegibilityView = [(SBHomeScreenView *)self statusBarLegibilityView];
  [statusBarLegibilityView setFrame:{v4, v6, v8, v10}];
}

- (SBHomeScreenView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SBHomeScreenView;
  v3 = [(SBHomeScreenView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D65F50]);
    statusBarLegibilityView = v3->_statusBarLegibilityView;
    v3->_statusBarLegibilityView = v4;

    [(SBHomeScreenView *)v3 addSubview:v3->_statusBarLegibilityView];
    v3->_usesGlassGroup = 1;
    [(SBHomeScreenView *)v3 updateGlassGroup];
  }

  return v3;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  window = [(SBHomeScreenView *)self window];
  v9 = window;
  if (window)
  {
    [window bounds];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  [(SBHomeScreenView *)self transform];
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  v16 = *MEMORY[0x277CBF2C0];
  v17 = v14;
  v18 = *(MEMORY[0x277CBF2C0] + 32);
  [(SBHomeScreenView *)self setTransform:&v16];
  v15.receiver = self;
  v15.super_class = SBHomeScreenView;
  [(SBHomeScreenView *)&v15 setFrame:x, y, width, height];
  v16 = v19;
  v17 = v20;
  v18 = v21;
  [(SBHomeScreenView *)self setTransform:&v16];
}

- (void)didMoveToWindow
{
  v13.receiver = self;
  v13.super_class = SBHomeScreenView;
  [(SBHomeScreenView *)&v13 didMoveToWindow];
  window = [(SBHomeScreenView *)self window];
  v4 = window;
  if (window)
  {
    [window bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(SBHomeScreenView *)self frame];
    v15.origin.x = v6;
    v15.origin.y = v8;
    v15.size.width = v10;
    v15.size.height = v12;
    if (!CGRectEqualToRect(v14, v15))
    {
      [(SBHomeScreenView *)self setFrame:v6, v8, v10, v12];
    }
  }
}

- (void)setUsesGlassGroup:(BOOL)group
{
  if (self->_usesGlassGroup != group)
  {
    self->_usesGlassGroup = group;
    [(SBHomeScreenView *)self updateGlassGroup];
  }
}

- (void)setIconContentView:(id)view
{
  viewCopy = view;
  iconContentView = self->_iconContentView;
  if (iconContentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)iconContentView removeFromSuperview];
    objc_storeStrong(&self->_iconContentView, view);
    viewCopy = v7;
    if (v7)
    {
      [(SBHomeScreenView *)self addSubview:v7];
      [(SBHomeScreenView *)self updateGlassGroup];
      viewCopy = v7;
    }
  }
}

- (void)updateGlassGroup
{
  if ([(SBHomeScreenView *)self usesGlassGroup])
  {
    v4 = objc_alloc_init(MEMORY[0x277D763B8]);
  }

  else
  {
    v4 = 0;
  }

  iconContentView = [(SBHomeScreenView *)self iconContentView];
  [iconContentView _setBackground:v4];
}

@end