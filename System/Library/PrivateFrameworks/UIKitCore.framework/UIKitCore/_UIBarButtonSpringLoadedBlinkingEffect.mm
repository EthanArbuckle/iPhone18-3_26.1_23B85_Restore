@interface _UIBarButtonSpringLoadedBlinkingEffect
- (void)_prepareLayer:(id)layer forView:(id)view;
@end

@implementation _UIBarButtonSpringLoadedBlinkingEffect

- (void)_prepareLayer:(id)layer forView:(id)view
{
  layerCopy = layer;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    visualProvider = [viewCopy visualProvider];
    v9 = [visualProvider pointerShapeInContainer:viewCopy];

    [v9 rect];
    [layerCopy setFrame:?];
    cornerCurve = [v9 cornerCurve];
    [layerCopy setCornerCurve:cornerCurve];

    [v9 cornerRadius];
    [layerCopy setCornerRadius:?];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UIBarButtonSpringLoadedBlinkingEffect;
    [(_UISpringLoadedBlinkingEffect *)&v11 _prepareLayer:layerCopy forView:viewCopy];
  }
}

@end