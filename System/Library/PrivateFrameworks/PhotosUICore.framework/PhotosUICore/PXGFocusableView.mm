@interface PXGFocusableView
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)canBecomeFocused;
- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer;
- (CGRect)clippingRect;
- (id)description;
- (void)addHostedLayer:(id)layer;
- (void)didHintFocusMovement:(id)movement;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setUserData:(id)data;
@end

@implementation PXGFocusableView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer
{
  y = center.y;
  x = center.x;
  layerCopy = layer;
  layer = [(PXGFocusableView *)self layer];
  [layer convertPoint:layerCopy fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)addHostedLayer:(id)layer
{
  layerCopy = layer;
  layer = [(PXGFocusableView *)self layer];
  [layer addSublayer:layerCopy];
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  userData = self->_userData;
  if (userData != dataCopy)
  {
    v15 = dataCopy;
    v6 = [(PXGFocusableViewConfiguration *)userData isEqual:dataCopy];
    dataCopy = v15;
    if (!v6)
    {
      v7 = [(PXGFocusableViewConfiguration *)v15 copy];
      v8 = self->_userData;
      self->_userData = v7;

      [(PXGFocusableView *)self setNeedsLayout];
      userData = [(PXGFocusableView *)self userData];
      delegate = [userData delegate];

      *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v11;
      v12 = objc_opt_respondsToSelector();
      delegateFlags = self->_delegateFlags;
      if (v12)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      *&self->_delegateFlags = delegateFlags & 0xFB | v14;
      if (delegateFlags)
      {
        [delegate focusableViewDidUpdateUserInfo:self];
      }

      dataCopy = v15;
    }
  }
}

- (void)didHintFocusMovement:(id)movement
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    movementCopy = movement;
    userData = [(PXGFocusableView *)self userData];
    delegate = [userData delegate];
    [delegate focusableView:self didHintFocusMovement:movementCopy];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  if ((*&self->_delegateFlags & 2) != 0)
  {
    coordinatorCopy = coordinator;
    contextCopy = context;
    userData = [(PXGFocusableView *)self userData];
    delegate = [userData delegate];
    [delegate focusableView:self didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  }
}

- (BOOL)canBecomeFocused
{
  userData = [(PXGFocusableView *)self userData];
  focusability = [userData focusability];

  if (!focusability)
  {
    return 1;
  }

  if (focusability != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGFocusableView.m" lineNumber:119 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (BOOL)_isEligibleForFocusInteraction
{
  userData = [(PXGFocusableView *)self userData];
  focusability = [userData focusability];

  if (focusability == 1)
  {
    return 0;
  }

  if (focusability)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGFocusableView.m" lineNumber:108 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8.receiver = self;
  v8.super_class = PXGFocusableView;
  return [(PXGFocusableView *)&v8 _isEligibleForFocusInteraction];
}

- (id)description
{
  userData = [(PXGFocusableView *)self userData];
  focusability = [userData focusability];
  debugName = [userData debugName];
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  if (focusability)
  {
    if (focusability != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *PXGFocusableViewFocusabilityDescription(PXGFocusableViewFocusability)"];
      [currentHandler handleFailureInFunction:v17 file:@"PXGFocusableView.m" lineNumber:24 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v7 = @"Invisible";
  }

  else
  {
    v7 = @"Default";
  }

  v8 = [v6 initWithFormat:@"; focusability = %@", v7];
  v9 = v8;
  if (debugName)
  {
    [v8 appendFormat:@"; debugName = '%@'", debugName];
  }

  v18.receiver = self;
  v18.super_class = PXGFocusableView;
  v10 = [(PXGFocusableView *)&v18 description];
  v11 = [v10 mutableCopy];
  v12 = [MEMORY[0x1E696AB08] characterSetWithRange:{59, 1}];
  v13 = [v10 rangeOfCharacterFromSet:v12];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 appendString:v9];
  }

  else
  {
    [v11 insertString:v9 atIndex:v13];
  }

  v14 = [v11 copy];

  return v14;
}

@end