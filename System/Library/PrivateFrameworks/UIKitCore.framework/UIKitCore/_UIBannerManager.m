@interface _UIBannerManager
- (_UIBannerManager)initWithScene:(id)a3;
- (id)bannerWithContent:(id)a3;
- (void)_createWindowIfNeeded;
- (void)_setScene:(id)a3;
@end

@implementation _UIBannerManager

- (_UIBannerManager)initWithScene:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIBannerManager;
  v3 = a3;
  v4 = [(_UIBannerManager *)&v6 init];
  [(_UIBannerManager *)v4 _setScene:v3, v6.receiver, v6.super_class];

  return v4;
}

- (void)_setScene:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"_UIBannerManager.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"scene == nil || [scene isKindOfClass:[UIWindowScene class]]"}];
    }
  }

  windowScene = self->_windowScene;
  self->_windowScene = v5;
}

- (void)_createWindowIfNeeded
{
  if (!self->_window)
  {
    v4 = objc_alloc_init(_UIBannerWindow);
    window = self->_window;
    self->_window = v4;

    [(UIWindow *)self->_window setWindowScene:self->_windowScene];
    v6 = [_UIBannerContainerView alloc];
    v7 = [(_UIBannerContainerView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    containerView = self->_containerView;
    self->_containerView = v7;

    [(UIView *)self->_containerView setPreservesSuperviewLayoutMargins:1];
    v9 = self->_containerView;
    v10 = [(UIWindow *)self->_window rootViewController];
    [v10 setView:v9];

    [(UIWindow *)self->_window setHidden:0];
    [(UIView *)self->_window bounds];
    v11 = self->_containerView;

    [(UIView *)v11 setFrame:?];
  }
}

- (id)bannerWithContent:(id)a3
{
  v4 = a3;
  [(_UIBannerManager *)self _createWindowIfNeeded];
  v5 = objc_alloc_init(_UIBanner);
  [(_UIBanner *)v5 setContent:v4];

  [(_UIBanner *)v5 setManager:self];

  return v5;
}

@end