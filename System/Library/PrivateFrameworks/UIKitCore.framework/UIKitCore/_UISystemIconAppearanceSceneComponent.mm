@interface _UISystemIconAppearanceSceneComponent
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (_DWORD)appearance;
- (_UISystemIconAppearanceSceneComponent)initWithScene:(id)scene;
- (id)_getCurrentIconAppearance;
- (void)_beginObservingSystemIconAppearanceChanges;
- (void)_stopObservingSystemIconAppearanceChanges;
- (void)_systemIconAppearanceDidChange;
@end

@implementation _UISystemIconAppearanceSceneComponent

- (_UISystemIconAppearanceSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _UISystemIconAppearanceSceneComponent;
  v5 = [(_UISystemIconAppearanceSceneComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

- (id)_getCurrentIconAppearance
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = objc_opt_class();
  v4 = WeakRetained;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

  if (v6)
  {
    traitCollection = [v6 traitCollection];
    v8 = [traitCollection objectForTrait:getSBSUITraitHomeScreenIconStyleClass()];

    if (v8)
    {
      v9 = [_UISystemIconAppearance appearanceWithSBSHomeScreenIconStyleConfiguration:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_DWORD)appearance
{
  if (self)
  {
    selfCopy = self;
    if (!self[4])
    {
      _getCurrentIconAppearance = [self _getCurrentIconAppearance];
      v4 = *(selfCopy + 4);
      *(selfCopy + 4) = _getCurrentIconAppearance;

      [selfCopy _beginObservingSystemIconAppearanceChanges];
      selfCopy[4] = 1;
    }

    self = *(selfCopy + 4);
    v1 = vars8;
  }

  return self;
}

- (void)_beginObservingSystemIconAppearanceChanges
{
  v11[1] = *MEMORY[0x1E69E9840];
  _scene = [(_UISystemIconAppearanceSceneComponent *)self _scene];
  v4 = objc_opt_class();
  v5 = _scene;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v11[0] = getSBSUITraitHomeScreenIconStyleClass();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [v7 registerForTraitChanges:v8 withTarget:self action:sel__systemIconAppearanceDidChange];
    sceneTraitObserver = self->_sceneTraitObserver;
    self->_sceneTraitObserver = v9;
  }
}

- (void)_stopObservingSystemIconAppearanceChanges
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v4 = objc_opt_class();
  v5 = WeakRetained;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  v7 = v8;
  if (v8)
  {
    [v8 unregisterForTraitChanges:self->_sceneTraitObserver];
    v7 = v8;
  }
}

- (void)_systemIconAppearanceDidChange
{
  _getCurrentIconAppearance = [(_UISystemIconAppearanceSceneComponent *)self _getCurrentIconAppearance];
  v4 = self->_appearance;
  v5 = _getCurrentIconAppearance;
  v9 = v5;
  if (v4 == v5)
  {

LABEL_10:
    goto LABEL_11;
  }

  if (!v5 || !v4)
  {

    goto LABEL_8;
  }

  v6 = [(_UISystemIconAppearance *)v4 isEqual:v5];

  if (!v6)
  {
LABEL_8:
    objc_storeStrong(&self->_appearance, _getCurrentIconAppearance);
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v4 = objc_loadWeakRetained(&self->_scene);
    [(_UISystemIconAppearance *)v4 _componentDidUpdateTraitOverrides:self];
    goto LABEL_10;
  }

LABEL_11:
}

- (UITraitCollection)_traitOverrides
{
  appearance = self->_appearance;
  if (appearance)
  {
    v4 = [UITraitCollection _traitCollectionWithSystemIconAppearance:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end