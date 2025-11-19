@interface PRUISAmbientPosterSceneLayerHostView
- (BOOL)setContextID:(unsigned int)a3 scene:(id)a4;
- (PRUISAmbientPosterSceneLayerHostView)initWithIdentifier:(id)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation PRUISAmbientPosterSceneLayerHostView

- (PRUISAmbientPosterSceneLayerHostView)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRUISAmbientPosterSceneLayerHostView;
  v5 = [(PRUISAmbientPosterSceneLayerHostView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  if ([(PRUISAmbientPosterSceneLayerHostView *)self isActive]!= a3)
  {
    presenter = self->_presenter;
    if (v3)
    {

      [(UIScenePresenter *)presenter activate];
    }

    else
    {

      [(UIScenePresenter *)presenter deactivate];
    }
  }
}

- (BOOL)setContextID:(unsigned int)a3 scene:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (self->_sceneLayerContextID == a3 && self->_scene == v7)
  {
    v19 = 0;
  }

  else
  {
    self->_sceneLayerContextID = a3;
    objc_storeStrong(&self->_scene, a4);
    [(UIView *)self->_sceneLayerView removeFromSuperview];
    sceneLayerView = self->_sceneLayerView;
    self->_sceneLayerView = 0;

    [(UIScenePresenter *)self->_presenter invalidate];
    presenter = self->_presenter;
    self->_presenter = 0;

    if (self->_sceneLayerContextID && self->_scene)
    {
      v11 = [MEMORY[0x1E69DCE98] targetForContextID:?];
      v12 = [(FBScene *)self->_scene uiPresentationManager];
      v13 = [(PRUISAmbientPosterSceneLayerHostView *)self identifier];
      v14 = [v12 createPresenterForLayerTarget:v11 identifier:v13 priority:100];
      v15 = self->_presenter;
      self->_presenter = v14;

      [(UIScenePresenter *)self->_presenter modifyPresentationContext:&__block_literal_global_5];
      v16 = [(UIScenePresenter *)self->_presenter presentationView];
      v17 = self->_sceneLayerView;
      self->_sceneLayerView = v16;

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