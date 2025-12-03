@interface SBSystemApertureSceneElementScenePresenterView
- (void)_updateTraits;
- (void)dealloc;
- (void)invalidatePresenter;
- (void)layoutSubviews;
- (void)setScene:(id)scene;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBSystemApertureSceneElementScenePresenterView

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  if (self->_scene != sceneCopy)
  {
    objc_storeStrong(&self->_scene, scene);
    [(UIScenePresenter *)self->_scenePresenter invalidate];
    [(UIView *)self->_sceneContentView removeFromSuperview];
    sceneContentView = self->_sceneContentView;
    self->_sceneContentView = 0;

    scenePresenter = self->_scenePresenter;
    self->_scenePresenter = 0;

    scene = self->_scene;
    if (scene)
    {
      [(FBScene *)scene addObserver:self];
      v8 = self->_scenePresenter;
      if (!v8)
      {
        uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
        v10 = [uiPresentationManager createPresenterWithIdentifier:@"default"];
        v11 = self->_scenePresenter;
        self->_scenePresenter = v10;

        v8 = self->_scenePresenter;
      }

      [(UIScenePresenter *)v8 modifyPresentationContext:&__block_literal_global_0];
      [(UIScenePresenter *)self->_scenePresenter activate];
      presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
      v13 = self->_sceneContentView;
      self->_sceneContentView = presentationView;

      [(SBSystemApertureSceneElementScenePresenterView *)self insertSubview:self->_sceneContentView atIndex:0];
      [(SBSystemApertureSceneElementScenePresenterView *)self _updateTraits];
    }
  }
}

void __59__SBSystemApertureSceneElementScenePresenterView_setScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBSystemApertureSceneElementScenePresenterView;
  [(SBSystemApertureSceneElementScenePresenterView *)&v4 layoutSubviews];
  sceneContentView = self->_sceneContentView;
  [(SBSystemApertureSceneElementScenePresenterView *)self bounds];
  [(UIView *)sceneContentView setFrame:?];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = SBSystemApertureSceneElementScenePresenterView;
  changeCopy = change;
  [(SBSystemApertureSceneElementScenePresenterView *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(SBSystemApertureSceneElementScenePresenterView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v6)
  {
    [(SBSystemApertureSceneElementScenePresenterView *)self _updateTraits];
  }
}

- (void)_updateTraits
{
  scene = self->_scene;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SBSystemApertureSceneElementScenePresenterView__updateTraits__block_invoke;
  v3[3] = &unk_27836AE28;
  v3[4] = self;
  [(FBScene *)scene updateSettingsWithBlock:v3];
}

void __63__SBSystemApertureSceneElementScenePresenterView__updateTraits__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v9 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [*(a1 + 32) traitCollection];
  v8 = [v7 userInterfaceStyle];

  [v6 setUserInterfaceStyle:v8];
}

- (void)invalidatePresenter
{
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;
}

- (void)dealloc
{
  [(SBSystemApertureSceneElementScenePresenterView *)self invalidatePresenter];
  v3.receiver = self;
  v3.super_class = SBSystemApertureSceneElementScenePresenterView;
  [(SBSystemApertureSceneElementScenePresenterView *)&v3 dealloc];
}

@end