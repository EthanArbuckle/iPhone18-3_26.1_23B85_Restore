@interface _UIBannerManager
- (_UIBannerManager)initWithScene:(id)scene;
- (id)bannerWithContent:(id)content;
- (void)_createWindowIfNeeded;
- (void)_setScene:(id)scene;
@end

@implementation _UIBannerManager

- (_UIBannerManager)initWithScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = _UIBannerManager;
  sceneCopy = scene;
  v4 = [(_UIBannerManager *)&v6 init];
  [(_UIBannerManager *)v4 _setScene:sceneCopy, v6.receiver, v6.super_class];

  return v4;
}

- (void)_setScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBannerManager.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"scene == nil || [scene isKindOfClass:[UIWindowScene class]]"}];
    }
  }

  windowScene = self->_windowScene;
  self->_windowScene = sceneCopy;
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
    rootViewController = [(UIWindow *)self->_window rootViewController];
    [rootViewController setView:v9];

    [(UIWindow *)self->_window setHidden:0];
    [(UIView *)self->_window bounds];
    v11 = self->_containerView;

    [(UIView *)v11 setFrame:?];
  }
}

- (id)bannerWithContent:(id)content
{
  contentCopy = content;
  [(_UIBannerManager *)self _createWindowIfNeeded];
  v5 = objc_alloc_init(_UIBanner);
  [(_UIBanner *)v5 setContent:contentCopy];

  [(_UIBanner *)v5 setManager:self];

  return v5;
}

@end