@interface _UISceneWindowLayerPresentationView
- (_UISceneWindowLayerPresentationView)initWithPresenter:(id)presenter;
- (void)_updatePresentationContextFrom:(id)from toContext:(id)context;
- (void)_updateWindowLayerPresentationContextFrom:(id)from toContext:(id)context;
- (void)_updateWindowLayerRasterizationScaleForCurrentTraitCollection;
@end

@implementation _UISceneWindowLayerPresentationView

- (void)_updateWindowLayerRasterizationScaleForCurrentTraitCollection
{
  layer = [(UIView *)self layer];
  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
  [layer setRasterizationScale:?];
}

- (_UISceneWindowLayerPresentationView)initWithPresenter:(id)presenter
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _UISceneWindowLayerPresentationView;
  v3 = [(_UIScenePresentationView *)&v10 initWithPresenter:presenter];
  v4 = v3;
  if (v3)
  {
    [(_UISceneWindowLayerPresentationView *)v3 _updateWindowLayerRasterizationScaleForCurrentTraitCollection];
    v11[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [(UIView *)v4 registerForTraitChanges:v5 withAction:sel__updateWindowLayerRasterizationScaleForCurrentTraitCollection];

    currentPresentationContext = [(_UIScenePresentationView *)v4 currentPresentationContext];
    windowLayerPresentationContext = [currentPresentationContext windowLayerPresentationContext];
    [(_UISceneWindowLayerPresentationView *)v4 _updateWindowLayerPresentationContextFrom:0 toContext:windowLayerPresentationContext];
  }

  return v4;
}

- (void)_updatePresentationContextFrom:(id)from toContext:(id)context
{
  fromCopy = from;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = _UISceneWindowLayerPresentationView;
  [(_UIScenePresentationView *)&v13 _updatePresentationContextFrom:fromCopy toContext:contextCopy];
  windowLayerPresentationContext = [fromCopy windowLayerPresentationContext];
  windowLayerPresentationContext2 = [contextCopy windowLayerPresentationContext];
  v10 = BSEqualObjects();

  if ((v10 & 1) == 0)
  {
    windowLayerPresentationContext3 = [fromCopy windowLayerPresentationContext];
    windowLayerPresentationContext4 = [contextCopy windowLayerPresentationContext];
    [(_UISceneWindowLayerPresentationView *)self _updateWindowLayerPresentationContextFrom:windowLayerPresentationContext3 toContext:windowLayerPresentationContext4];
  }
}

- (void)_updateWindowLayerPresentationContextFrom:(id)from toContext:(id)context
{
  fromCopy = from;
  contextCopy = context;
  layer = [(UIView *)self layer];
  v8 = objc_opt_class();
  v9 = layer;
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

  [contextCopy postCommitDuration];
  v13 = v12;
  [fromCopy postCommitDuration];
  if (v14 != v13)
  {
    [v11 setPostCommitDuration:v13];
  }

  ignoreAnimations = [contextCopy ignoreAnimations];
  if (ignoreAnimations != [fromCopy ignoreAnimations])
  {
    [v11 setIgnoreAnimations:ignoreAnimations];
  }

  fullyOccluded = [contextCopy fullyOccluded];
  if (fullyOccluded != [fromCopy fullyOccluded] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v11 setFullyOccluded:fullyOccluded];
  }

  flattenMode = [contextCopy flattenMode];
  flattenMode2 = [fromCopy flattenMode];
  v19 = BSEqualObjects();

  if ((v19 & 1) == 0)
  {
    [v11 setFlattenMode:flattenMode];
  }
}

@end