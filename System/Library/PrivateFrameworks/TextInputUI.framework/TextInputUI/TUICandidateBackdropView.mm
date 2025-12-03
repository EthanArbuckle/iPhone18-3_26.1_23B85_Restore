@interface TUICandidateBackdropView
- (BOOL)_needsBackdropView;
- (TUICandidateBackdropView)initWithCoder:(id)coder;
- (TUICandidateBackdropView)initWithFrame:(CGRect)frame;
- (TUICandidateBackdropViewDelegate)delegate;
- (int64_t)backdropViewStyle;
- (void)_setRenderConfig:(id)config;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setStyle:(id)style;
@end

@implementation TUICandidateBackdropView

- (TUICandidateBackdropViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setRenderConfig:(id)config
{
  v7.receiver = self;
  v7.super_class = TUICandidateBackdropView;
  configCopy = config;
  [(TUICandidateBackdropView *)&v7 _setRenderConfig:configCopy];
  animatedBackground = [configCopy animatedBackground];

  if (animatedBackground)
  {
    backdropView = [(TUICandidateBackdropView *)self backdropView];
    [backdropView transitionToStyle:{-[TUICandidateBackdropView backdropViewStyle](self, "backdropViewStyle")}];
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  styleCopy2 = style;
  v5 = self->_style;
  objc_storeStrong(&self->_style, styleCopy);
  LODWORD(styleCopy) = [(TUICandidateViewStyle *)v5 darkBackdrop];
  if (styleCopy != [styleCopy2 darkBackdrop] || (v6 = objc_msgSend(styleCopy2, "columnsCount"), v6 != -[TUICandidateViewStyle columnsCount](v5, "columnsCount")))
  {
    backdropView = [(TUICandidateBackdropView *)self backdropView];
    [backdropView transitionToStyle:{-[TUICandidateBackdropView backdropViewStyle](self, "backdropViewStyle")}];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = TUICandidateBackdropView;
  [(TUICandidateBackdropView *)&v5 didMoveToWindow];
  _inheritedRenderConfig = [(TUICandidateBackdropView *)self _inheritedRenderConfig];

  if (_inheritedRenderConfig)
  {
    backdropView = [(TUICandidateBackdropView *)self backdropView];
    [backdropView transitionToStyle:{-[TUICandidateBackdropView backdropViewStyle](self, "backdropViewStyle")}];
  }
}

- (BOOL)_needsBackdropView
{
  v3 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  delegate = [(TUICandidateBackdropView *)self delegate];
  if (delegate)
  {
    delegate2 = [(TUICandidateBackdropView *)self delegate];
    v6 = [delegate2 candidateBackdropViewShouldShowBackdropView:self];
  }

  else
  {
    v6 = 0;
  }

  if (v3 == 1 || v6)
  {
    _inheritedRenderConfig = [(TUICandidateBackdropView *)self _inheritedRenderConfig];
    v7 = [_inheritedRenderConfig isFloating] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (int64_t)backdropViewStyle
{
  style = [(TUICandidateBackdropView *)self style];
  if ([style darkBackdrop])
  {
    v4 = 2030;
  }

  else
  {
    v4 = 3901;
  }

  _inheritedRenderConfig = [(TUICandidateBackdropView *)self _inheritedRenderConfig];

  if (_inheritedRenderConfig)
  {
    _inheritedRenderConfig2 = [(TUICandidateBackdropView *)self _inheritedRenderConfig];
    backdropStyle = [_inheritedRenderConfig2 backdropStyle];

    if (backdropStyle == 3904)
    {
      v4 = 3903;
    }

    else
    {
      v4 = backdropStyle;
    }

    if (v4 == 3908)
    {
      if ([(TUICandidateBackdropView *)self _needsBackdropView])
      {
        return 3908;
      }

      else
      {
        return 3903;
      }
    }
  }

  return v4;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = TUICandidateBackdropView;
  [(TUICandidateBackdropView *)&v14 layoutSubviews];
  backdropView = [(TUICandidateBackdropView *)self backdropView];

  if (!backdropView)
  {
    backdropViewStyle = [(TUICandidateBackdropView *)self backdropViewStyle];
    v5 = objc_alloc(MEMORY[0x1E69DCB90]);
    [(TUICandidateBackdropView *)self bounds];
    v6 = [v5 initWithFrame:backdropViewStyle style:?];
    [(TUICandidateBackdropView *)self setBackdropView:v6];

    _inheritedRenderConfig = [(TUICandidateBackdropView *)self _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      backdropView2 = [(TUICandidateBackdropView *)self backdropView];
      layer = [backdropView2 layer];
      [layer setHitTestsAsOpaque:1];
    }

    backdropView3 = [(TUICandidateBackdropView *)self backdropView];
    [backdropView3 transitionToStyle:backdropViewStyle];

    backdropView4 = [(TUICandidateBackdropView *)self backdropView];
    [(TUICandidateBackdropView *)self addSubview:backdropView4];

    backdropView5 = [(TUICandidateBackdropView *)self backdropView];
    [backdropView5 setAutoresizingMask:18];
  }
}

- (TUICandidateBackdropView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUICandidateBackdropView;
  v3 = [(TUICandidateBackdropView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateBackdropView *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateBackdropView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUICandidateBackdropView;
  v3 = [(TUICandidateBackdropView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateBackdropView *)v3 commonInit];
  }

  return v4;
}

@end