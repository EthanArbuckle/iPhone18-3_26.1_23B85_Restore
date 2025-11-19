@interface SUICFlamesView
- (CGRect)activeFrame;
- (SUICFlamesView)initWithFrame:(CGRect)a3 screen:(id)a4 fidelity:(int64_t)a5;
- (SUICFlamesViewDelegate)flamesDelegate;
- (float)audioLevelForFlamesView:(id)a3;
- (void)didMoveToSuperview;
- (void)flamesViewAuraDidDisplay:(id)a3;
- (void)layoutSubviews;
- (void)setFlamesDelegate:(id)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation SUICFlamesView

- (SUICFlamesView)initWithFrame:(CGRect)a3 screen:(id)a4 fidelity:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = SUICFlamesView;
  v12 = [(SUICFlamesView *)&v18 initWithFrame:x, y, width, height];
  if (v12)
  {
    v13 = +[SUICFlamesView _isMetalAvailable];
    v14 = off_1E81E75F8;
    if (!v13)
    {
      v14 = off_1E81E75F0;
    }

    v15 = [objc_alloc(*v14) initWithFrame:v11 screen:a5 fidelity:{x, y, width, height}];
    flamesView = v12->_flamesView;
    v12->_flamesView = v15;
  }

  return v12;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SUICFlamesView;
  [(SUICFlamesView *)&v4 layoutSubviews];
  flamesView = self->_flamesView;
  [(SUICFlamesView *)self bounds];
  [(SUICFlamesViewProviding *)flamesView setFrame:?];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SUICFlamesView;
  [(SUICFlamesView *)&v5 setHidden:?];
  [(SUICFlamesViewProviding *)self->_flamesView setHidden:v3];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = SUICFlamesView;
  [(SUICFlamesView *)&v4 didMoveToSuperview];
  v3 = [(SUICFlamesView *)self superview];

  if (v3)
  {
    [(SUICFlamesView *)self addSubview:self->_flamesView];
  }

  else
  {
    [(SUICFlamesViewProviding *)self->_flamesView removeFromSuperview];
  }
}

- (void)setFlamesDelegate:(id)a3
{
  objc_storeWeak(&self->_flamesDelegate, a3);
  flamesView = self->_flamesView;
  if (a3)
  {
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  [(SUICFlamesViewProviding *)flamesView setFlamesDelegate:v6];
}

- (CGRect)activeFrame
{
  [(SUICFlamesViewProviding *)self->_flamesView activeFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (float)audioLevelForFlamesView:(id)a3
{
  v4 = [(SUICFlamesView *)self flamesDelegate];
  [v4 audioLevelForFlamesView:self];
  v6 = v5;

  return v6;
}

- (void)flamesViewAuraDidDisplay:(id)a3
{
  v4 = [(SUICFlamesView *)self flamesDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SUICFlamesView *)self flamesDelegate];
    [v6 flamesViewAuraDidDisplay:self];
  }
}

- (SUICFlamesViewDelegate)flamesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flamesDelegate);

  return WeakRetained;
}

@end