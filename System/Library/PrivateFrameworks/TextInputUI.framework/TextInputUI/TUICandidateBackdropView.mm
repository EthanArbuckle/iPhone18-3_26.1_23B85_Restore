@interface TUICandidateBackdropView
- (BOOL)_needsBackdropView;
- (TUICandidateBackdropView)initWithCoder:(id)a3;
- (TUICandidateBackdropView)initWithFrame:(CGRect)a3;
- (TUICandidateBackdropViewDelegate)delegate;
- (int64_t)backdropViewStyle;
- (void)_setRenderConfig:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setStyle:(id)a3;
@end

@implementation TUICandidateBackdropView

- (TUICandidateBackdropViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setRenderConfig:(id)a3
{
  v7.receiver = self;
  v7.super_class = TUICandidateBackdropView;
  v4 = a3;
  [(TUICandidateBackdropView *)&v7 _setRenderConfig:v4];
  v5 = [v4 animatedBackground];

  if (v5)
  {
    v6 = [(TUICandidateBackdropView *)self backdropView];
    [v6 transitionToStyle:{-[TUICandidateBackdropView backdropViewStyle](self, "backdropViewStyle")}];
  }
}

- (void)setStyle:(id)a3
{
  v3 = a3;
  v8 = a3;
  v5 = self->_style;
  objc_storeStrong(&self->_style, v3);
  LODWORD(v3) = [(TUICandidateViewStyle *)v5 darkBackdrop];
  if (v3 != [v8 darkBackdrop] || (v6 = objc_msgSend(v8, "columnsCount"), v6 != -[TUICandidateViewStyle columnsCount](v5, "columnsCount")))
  {
    v7 = [(TUICandidateBackdropView *)self backdropView];
    [v7 transitionToStyle:{-[TUICandidateBackdropView backdropViewStyle](self, "backdropViewStyle")}];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = TUICandidateBackdropView;
  [(TUICandidateBackdropView *)&v5 didMoveToWindow];
  v3 = [(TUICandidateBackdropView *)self _inheritedRenderConfig];

  if (v3)
  {
    v4 = [(TUICandidateBackdropView *)self backdropView];
    [v4 transitionToStyle:{-[TUICandidateBackdropView backdropViewStyle](self, "backdropViewStyle")}];
  }
}

- (BOOL)_needsBackdropView
{
  v3 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  v4 = [(TUICandidateBackdropView *)self delegate];
  if (v4)
  {
    v5 = [(TUICandidateBackdropView *)self delegate];
    v6 = [v5 candidateBackdropViewShouldShowBackdropView:self];
  }

  else
  {
    v6 = 0;
  }

  if (v3 == 1 || v6)
  {
    v8 = [(TUICandidateBackdropView *)self _inheritedRenderConfig];
    v7 = [v8 isFloating] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (int64_t)backdropViewStyle
{
  v3 = [(TUICandidateBackdropView *)self style];
  if ([v3 darkBackdrop])
  {
    v4 = 2030;
  }

  else
  {
    v4 = 3901;
  }

  v5 = [(TUICandidateBackdropView *)self _inheritedRenderConfig];

  if (v5)
  {
    v6 = [(TUICandidateBackdropView *)self _inheritedRenderConfig];
    v7 = [v6 backdropStyle];

    if (v7 == 3904)
    {
      v4 = 3903;
    }

    else
    {
      v4 = v7;
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
  v3 = [(TUICandidateBackdropView *)self backdropView];

  if (!v3)
  {
    v4 = [(TUICandidateBackdropView *)self backdropViewStyle];
    v5 = objc_alloc(MEMORY[0x1E69DCB90]);
    [(TUICandidateBackdropView *)self bounds];
    v6 = [v5 initWithFrame:v4 style:?];
    [(TUICandidateBackdropView *)self setBackdropView:v6];

    v7 = [(TUICandidateBackdropView *)self _inheritedRenderConfig];
    v8 = [v7 colorAdaptiveBackground];

    if (v8)
    {
      v9 = [(TUICandidateBackdropView *)self backdropView];
      v10 = [v9 layer];
      [v10 setHitTestsAsOpaque:1];
    }

    v11 = [(TUICandidateBackdropView *)self backdropView];
    [v11 transitionToStyle:v4];

    v12 = [(TUICandidateBackdropView *)self backdropView];
    [(TUICandidateBackdropView *)self addSubview:v12];

    v13 = [(TUICandidateBackdropView *)self backdropView];
    [v13 setAutoresizingMask:18];
  }
}

- (TUICandidateBackdropView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateBackdropView;
  v3 = [(TUICandidateBackdropView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateBackdropView *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateBackdropView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateBackdropView;
  v3 = [(TUICandidateBackdropView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateBackdropView *)v3 commonInit];
  }

  return v4;
}

@end