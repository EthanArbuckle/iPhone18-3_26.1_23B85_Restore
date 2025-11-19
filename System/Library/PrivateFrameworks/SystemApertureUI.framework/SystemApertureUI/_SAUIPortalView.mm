@interface _SAUIPortalView
- (id)portalLayer;
- (void)_configurePortalViewIfNeeded;
- (void)didMoveToWindow;
- (void)setSourceView:(id)a3;
@end

@implementation _SAUIPortalView

- (id)portalLayer
{
  v2 = [(_SAUIPortalView *)self layer];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)_configurePortalViewIfNeeded
{
  v3 = [(UIView *)self->_sourceView layer];
  objc_initWeak(&location, v3);
  v4 = [(_SAUIPortalView *)self portalLayer];
  v5 = [v4 sourceLayer];
  v6 = v5;
  if (v5 == v3)
  {
  }

  else
  {
    v7 = [(_SAUIPortalView *)self portalLayer];
    v8 = CALayerGetContext();

    if (v8)
    {
      if ([MEMORY[0x277CD9FF0] currentState] && objc_msgSend(MEMORY[0x277CD9FF0], "currentPhase") != 2)
      {
        objc_initWeak(&from, self);
        v10 = MEMORY[0x277CD9FF0];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __47___SAUIPortalView__configurePortalViewIfNeeded__block_invoke;
        v11[3] = &unk_279D329B8;
        objc_copyWeak(&v12, &from);
        objc_copyWeak(&v13, &location);
        [v10 addCommitHandler:v11 forPhase:2];
        objc_destroyWeak(&v13);
        objc_destroyWeak(&v12);
        objc_destroyWeak(&from);
      }

      else
      {
        v9 = [(_SAUIPortalView *)self portalLayer];
        [v9 setSourceLayer:v3];
      }
    }
  }

  objc_destroyWeak(&location);
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _SAUIPortalView;
  [(_SAUIPortalView *)&v3 didMoveToWindow];
  [(_SAUIPortalView *)self _configurePortalViewIfNeeded];
}

- (void)setSourceView:(id)a3
{
  v5 = a3;
  if (self->_sourceView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sourceView, a3);
    [(_SAUIPortalView *)self _configurePortalViewIfNeeded];
    v5 = v6;
  }
}

@end