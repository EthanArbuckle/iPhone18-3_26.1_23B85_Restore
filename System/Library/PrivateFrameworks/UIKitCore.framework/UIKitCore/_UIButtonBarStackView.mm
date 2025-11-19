@interface _UIButtonBarStackView
- (NSString)description;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
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
  v5 = [v3 stringByAppendingFormat:@" buttonBar=%p", WeakRetained];

  return v5;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  v12 = [WeakRetained pointerInteraction:v10 regionForRequest:v9 defaultRegion:v8];

  return v12;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  v9 = [WeakRetained pointerInteraction:v7 styleForRegion:v6];

  return v9;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  [WeakRetained pointerInteraction:v10 willEnterRegion:v9 animator:v8];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonBar);
  [WeakRetained pointerInteraction:v10 willExitRegion:v9 animator:v8];
}

@end