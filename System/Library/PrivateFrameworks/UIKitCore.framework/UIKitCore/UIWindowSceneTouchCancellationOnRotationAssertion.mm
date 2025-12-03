@interface UIWindowSceneTouchCancellationOnRotationAssertion
- (UIWindowSceneTouchCancellationOnRotationAssertion)initWithWindowScene:(id)scene;
- (void)cancel;
- (void)dealloc;
@end

@implementation UIWindowSceneTouchCancellationOnRotationAssertion

- (UIWindowSceneTouchCancellationOnRotationAssertion)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = UIWindowSceneTouchCancellationOnRotationAssertion;
  v5 = [(UIWindowSceneTouchCancellationOnRotationAssertion *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_windowScene, sceneCopy);
    [sceneCopy _setShouldDisableTouchCancellationOnRotation:1];
  }

  return v6;
}

- (void)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  [WeakRetained _setShouldDisableTouchCancellationOnRotation:0];
}

- (void)dealloc
{
  [(UIWindowSceneTouchCancellationOnRotationAssertion *)self cancel];
  v3.receiver = self;
  v3.super_class = UIWindowSceneTouchCancellationOnRotationAssertion;
  [(UIWindowSceneTouchCancellationOnRotationAssertion *)&v3 dealloc];
}

@end