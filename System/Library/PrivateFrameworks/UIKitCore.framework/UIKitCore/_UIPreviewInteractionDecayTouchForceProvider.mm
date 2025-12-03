@interface _UIPreviewInteractionDecayTouchForceProvider
- (CGPoint)locationInCoordinateSpace:(id)space;
- (_UIPreviewInteractionDecayTouchForceProvider)initWithTouchForceProvider:(id)provider;
- (void)cancelInteraction;
@end

@implementation _UIPreviewInteractionDecayTouchForceProvider

- (_UIPreviewInteractionDecayTouchForceProvider)initWithTouchForceProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionDecayTouchForceProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"touchForceProvider"}];
  }

  v18.receiver = self;
  v18.super_class = _UIPreviewInteractionDecayTouchForceProvider;
  v7 = [(_UIPreviewInteractionDecayTouchForceProvider *)&v18 init];
  v8 = v7;
  if (v7)
  {
    v7->_active = 1;
    objc_storeStrong(&v7->_touchForceProvider, provider);
    [providerCopy touchForce];
    v8->_initialTouchForce = v9;
    mainScreen = [objc_opt_self() mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
    coordinateSpace = v8->_coordinateSpace;
    v8->_coordinateSpace = fixedCoordinateSpace;

    [providerCopy locationInCoordinateSpace:v8->_coordinateSpace];
    v8->_location.x = v13;
    v8->_location.y = v14;
    v15 = v8;
  }

  return v8;
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  [(UICoordinateSpace *)self->_coordinateSpace convertPoint:space toCoordinateSpace:self->_location.x, self->_location.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)cancelInteraction
{
  [(_UIPreviewInteractionDecayTouchForceProvider *)self setActive:0];
  touchForceProvider = self->_touchForceProvider;

  [(_UIPreviewInteractionTouchForceProviding *)touchForceProvider cancelInteraction];
}

@end