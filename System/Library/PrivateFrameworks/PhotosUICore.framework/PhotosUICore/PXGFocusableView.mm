@interface PXGFocusableView
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)canBecomeFocused;
- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4;
- (CGRect)clippingRect;
- (id)description;
- (void)addHostedLayer:(id)a3;
- (void)didHintFocusMovement:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setUserData:(id)a3;
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

- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXGFocusableView *)self layer];
  [v8 convertPoint:v7 fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)addHostedLayer:(id)a3
{
  v4 = a3;
  v5 = [(PXGFocusableView *)self layer];
  [v5 addSublayer:v4];
}

- (void)setUserData:(id)a3
{
  v4 = a3;
  userData = self->_userData;
  if (userData != v4)
  {
    v15 = v4;
    v6 = [(PXGFocusableViewConfiguration *)userData isEqual:v4];
    v4 = v15;
    if (!v6)
    {
      v7 = [(PXGFocusableViewConfiguration *)v15 copy];
      v8 = self->_userData;
      self->_userData = v7;

      [(PXGFocusableView *)self setNeedsLayout];
      v9 = [(PXGFocusableView *)self userData];
      v10 = [v9 delegate];

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
        [v10 focusableViewDidUpdateUserInfo:self];
      }

      v4 = v15;
    }
  }
}

- (void)didHintFocusMovement:(id)a3
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    v5 = a3;
    v7 = [(PXGFocusableView *)self userData];
    v6 = [v7 delegate];
    [v6 focusableView:self didHintFocusMovement:v5];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  if ((*&self->_delegateFlags & 2) != 0)
  {
    v7 = a4;
    v8 = a3;
    v10 = [(PXGFocusableView *)self userData];
    v9 = [v10 delegate];
    [v9 focusableView:self didUpdateFocusInContext:v8 withAnimationCoordinator:v7];
  }
}

- (BOOL)canBecomeFocused
{
  v4 = [(PXGFocusableView *)self userData];
  v5 = [v4 focusability];

  if (!v5)
  {
    return 1;
  }

  if (v5 != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXGFocusableView.m" lineNumber:119 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (BOOL)_isEligibleForFocusInteraction
{
  v4 = [(PXGFocusableView *)self userData];
  v5 = [v4 focusability];

  if (v5 == 1)
  {
    return 0;
  }

  if (v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXGFocusableView.m" lineNumber:108 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8.receiver = self;
  v8.super_class = PXGFocusableView;
  return [(PXGFocusableView *)&v8 _isEligibleForFocusInteraction];
}

- (id)description
{
  v3 = [(PXGFocusableView *)self userData];
  v4 = [v3 focusability];
  v5 = [v3 debugName];
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  if (v4)
  {
    if (v4 != 1)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *PXGFocusableViewFocusabilityDescription(PXGFocusableViewFocusability)"];
      [v16 handleFailureInFunction:v17 file:@"PXGFocusableView.m" lineNumber:24 description:@"Code which should be unreachable has been reached"];

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
  if (v5)
  {
    [v8 appendFormat:@"; debugName = '%@'", v5];
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