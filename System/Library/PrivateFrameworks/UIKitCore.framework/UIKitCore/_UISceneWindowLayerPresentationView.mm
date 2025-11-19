@interface _UISceneWindowLayerPresentationView
- (_UISceneWindowLayerPresentationView)initWithPresenter:(id)a3;
- (void)_updatePresentationContextFrom:(id)a3 toContext:(id)a4;
- (void)_updateWindowLayerPresentationContextFrom:(id)a3 toContext:(id)a4;
- (void)_updateWindowLayerRasterizationScaleForCurrentTraitCollection;
@end

@implementation _UISceneWindowLayerPresentationView

- (void)_updateWindowLayerRasterizationScaleForCurrentTraitCollection
{
  v4 = [(UIView *)self layer];
  v3 = [(UIView *)self traitCollection];
  [v3 displayScale];
  [v4 setRasterizationScale:?];
}

- (_UISceneWindowLayerPresentationView)initWithPresenter:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _UISceneWindowLayerPresentationView;
  v3 = [(_UIScenePresentationView *)&v10 initWithPresenter:a3];
  v4 = v3;
  if (v3)
  {
    [(_UISceneWindowLayerPresentationView *)v3 _updateWindowLayerRasterizationScaleForCurrentTraitCollection];
    v11[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [(UIView *)v4 registerForTraitChanges:v5 withAction:sel__updateWindowLayerRasterizationScaleForCurrentTraitCollection];

    v7 = [(_UIScenePresentationView *)v4 currentPresentationContext];
    v8 = [v7 windowLayerPresentationContext];
    [(_UISceneWindowLayerPresentationView *)v4 _updateWindowLayerPresentationContextFrom:0 toContext:v8];
  }

  return v4;
}

- (void)_updatePresentationContextFrom:(id)a3 toContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _UISceneWindowLayerPresentationView;
  [(_UIScenePresentationView *)&v13 _updatePresentationContextFrom:v6 toContext:v7];
  v8 = [v6 windowLayerPresentationContext];
  v9 = [v7 windowLayerPresentationContext];
  v10 = BSEqualObjects();

  if ((v10 & 1) == 0)
  {
    v11 = [v6 windowLayerPresentationContext];
    v12 = [v7 windowLayerPresentationContext];
    [(_UISceneWindowLayerPresentationView *)self _updateWindowLayerPresentationContextFrom:v11 toContext:v12];
  }
}

- (void)_updateWindowLayerPresentationContextFrom:(id)a3 toContext:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(UIView *)self layer];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v6 postCommitDuration];
  v13 = v12;
  [v20 postCommitDuration];
  if (v14 != v13)
  {
    [v11 setPostCommitDuration:v13];
  }

  v15 = [v6 ignoreAnimations];
  if (v15 != [v20 ignoreAnimations])
  {
    [v11 setIgnoreAnimations:v15];
  }

  v16 = [v6 fullyOccluded];
  if (v16 != [v20 fullyOccluded] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v11 setFullyOccluded:v16];
  }

  v17 = [v6 flattenMode];
  v18 = [v20 flattenMode];
  v19 = BSEqualObjects();

  if ((v19 & 1) == 0)
  {
    [v11 setFlattenMode:v17];
  }
}

@end