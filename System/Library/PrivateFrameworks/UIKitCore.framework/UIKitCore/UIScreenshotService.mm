@interface UIScreenshotService
- (UIScene)_scene;
- (UIScreenshotService)initWithScene:(id)scene;
- (UIScreenshotServiceDelegate)privateDelegate;
- (UIWindowScene)windowScene;
- (id)delegate;
@end

@implementation UIScreenshotService

- (UIScreenshotService)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = UIScreenshotService;
  v5 = [(UIScreenshotService *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIScreenshotServiceDelegate)privateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privateDelegate);

  return WeakRetained;
}

@end