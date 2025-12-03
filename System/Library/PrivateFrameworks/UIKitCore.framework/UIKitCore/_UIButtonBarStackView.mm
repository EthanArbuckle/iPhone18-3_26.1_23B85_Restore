@interface _UIButtonBarStackView
- (NSString)description;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)updateConstraints;
@end

@implementation _UIButtonBarStackView

- (void)updateConstraints
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42___UIButtonBarStackView_updateConstraints__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
  v3.receiver = self;
  v3.super_class = _UIButtonBarStackView;
  [(UIStackView *)&v3 updateConstraints];
}

- (void)layoutSubviews
{
  v3 = +[UIView areAnimationsEnabled];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [UIView setAnimationsEnabled:0];
  }

  v6.receiver = self;
  v6.super_class = _UIButtonBarStackView;
  [(UIView *)&v6 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  [WeakRetained _updateHitRects];

  v5 = objc_loadWeakRetained(&self->_buttonBar);
  [v5 _buttonBarStackViewDidLayoutSubviews:self];

  [UIView setAnimationsEnabled:v3];
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = _UIButtonBarStackView;
  v3 = [(UIStackView *)&v7 description];
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  weakRetained = [v3 stringByAppendingFormat:@" buttonBar=%p", WeakRetained];

  return weakRetained;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  requestCopy = request;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  v12 = [WeakRetained pointerInteraction:interactionCopy regionForRequest:requestCopy defaultRegion:regionCopy];

  return v12;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  v9 = [WeakRetained pointerInteraction:interactionCopy styleForRegion:regionCopy];

  return v9;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  regionCopy = region;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  [WeakRetained pointerInteraction:interactionCopy willEnterRegion:regionCopy animator:animatorCopy];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  regionCopy = region;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  [WeakRetained pointerInteraction:interactionCopy willExitRegion:regionCopy animator:animatorCopy];
}

@end