@interface SUICFlamesView
- (CGRect)activeFrame;
- (SUICFlamesView)initWithFrame:(CGRect)frame screen:(id)screen fidelity:(int64_t)fidelity;
- (SUICFlamesViewDelegate)flamesDelegate;
- (float)audioLevelForFlamesView:(id)view;
- (void)didMoveToSuperview;
- (void)flamesViewAuraDidDisplay:(id)display;
- (void)layoutSubviews;
- (void)setFlamesDelegate:(id)delegate;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SUICFlamesView

- (SUICFlamesView)initWithFrame:(CGRect)frame screen:(id)screen fidelity:(int64_t)fidelity
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  screenCopy = screen;
  v18.receiver = self;
  v18.super_class = SUICFlamesView;
  height = [(SUICFlamesView *)&v18 initWithFrame:x, y, width, height];
  if (height)
  {
    v13 = +[SUICFlamesView _isMetalAvailable];
    v14 = off_1E81E75F8;
    if (!v13)
    {
      v14 = off_1E81E75F0;
    }

    v15 = [objc_alloc(*v14) initWithFrame:screenCopy screen:fidelity fidelity:{x, y, width, height}];
    flamesView = height->_flamesView;
    height->_flamesView = v15;
  }

  return height;
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

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = SUICFlamesView;
  [(SUICFlamesView *)&v5 setHidden:?];
  [(SUICFlamesViewProviding *)self->_flamesView setHidden:hiddenCopy];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = SUICFlamesView;
  [(SUICFlamesView *)&v4 didMoveToSuperview];
  superview = [(SUICFlamesView *)self superview];

  if (superview)
  {
    [(SUICFlamesView *)self addSubview:self->_flamesView];
  }

  else
  {
    [(SUICFlamesViewProviding *)self->_flamesView removeFromSuperview];
  }
}

- (void)setFlamesDelegate:(id)delegate
{
  objc_storeWeak(&self->_flamesDelegate, delegate);
  flamesView = self->_flamesView;
  if (delegate)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [(SUICFlamesViewProviding *)flamesView setFlamesDelegate:selfCopy];
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

- (float)audioLevelForFlamesView:(id)view
{
  flamesDelegate = [(SUICFlamesView *)self flamesDelegate];
  [flamesDelegate audioLevelForFlamesView:self];
  v6 = v5;

  return v6;
}

- (void)flamesViewAuraDidDisplay:(id)display
{
  flamesDelegate = [(SUICFlamesView *)self flamesDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    flamesDelegate2 = [(SUICFlamesView *)self flamesDelegate];
    [flamesDelegate2 flamesViewAuraDidDisplay:self];
  }
}

- (SUICFlamesViewDelegate)flamesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flamesDelegate);

  return WeakRetained;
}

@end