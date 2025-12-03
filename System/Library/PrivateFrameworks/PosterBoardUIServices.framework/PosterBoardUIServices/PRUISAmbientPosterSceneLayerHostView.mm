@interface PRUISAmbientPosterSceneLayerHostView
- (BOOL)setContextID:(unsigned int)d scene:(id)scene;
- (PRUISAmbientPosterSceneLayerHostView)initWithIdentifier:(id)identifier;
- (void)setActive:(BOOL)active;
@end

@implementation PRUISAmbientPosterSceneLayerHostView

- (PRUISAmbientPosterSceneLayerHostView)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PRUISAmbientPosterSceneLayerHostView;
  v5 = [(PRUISAmbientPosterSceneLayerHostView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if ([(PRUISAmbientPosterSceneLayerHostView *)self isActive]!= active)
  {
    presenter = self->_presenter;
    if (activeCopy)
    {

      [(UIScenePresenter *)presenter activate];
    }

    else
    {

      [(UIScenePresenter *)presenter deactivate];
    }
  }
}

- (BOOL)setContextID:(unsigned int)d scene:(id)scene
{
  sceneCopy = scene;
  v8 = sceneCopy;
  if (self->_sceneLayerContextID == d && self->_scene == sceneCopy)
  {
    v19 = 0;
  }

  else
  {
    self->_sceneLayerContextID = d;
    objc_storeStrong(&self->_scene, scene);
    [(UIView *)self->_sceneLayerView removeFromSuperview];
    sceneLayerView = self->_sceneLayerView;
    self->_sceneLayerView = 0;

    [(UIScenePresenter *)self->_presenter invalidate];
    presenter = self->_presenter;
    self->_presenter = 0;

    if (self->_sceneLayerContextID && self->_scene)
    {
      v11 = [MEMORY[0x1E69DCE98] targetForContextID:?];
      uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
      identifier = [(PRUISAmbientPosterSceneLayerHostView *)self identifier];
      v14 = [uiPresentationManager createPresenterForLayerTarget:v11 identifier:identifier priority:100];
      v15 = self->_presenter;
      self->_presenter = v14;

      [(UIScenePresenter *)self->_presenter modifyPresentationContext:&__block_literal_global_5];
      presentationView = [(UIScenePresenter *)self->_presenter presentationView];
      v17 = self->_sceneLayerView;
      self->_sceneLayerView = presentationView;

      v18 = self->_sceneLayerView;
      [(PRUISAmbientPosterSceneLayerHostView *)self bounds];
      [(UIView *)v18 setFrame:?];
      [(UIView *)self->_sceneLayerView setAutoresizingMask:18];
      [(PRUISAmbientPosterSceneLayerHostView *)self addSubview:self->_sceneLayerView];
    }

    v19 = 1;
  }

  return v19;
}

void __59__PRUISAmbientPosterSceneLayerHostView_setContextID_scene___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:0];
}

@end