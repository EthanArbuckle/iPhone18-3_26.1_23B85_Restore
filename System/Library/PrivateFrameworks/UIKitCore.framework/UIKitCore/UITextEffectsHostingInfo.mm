@interface UITextEffectsHostingInfo
- (id)_initWithScene:(id)scene options:(id)options;
- (void)setUseHostedInstance:(BOOL)instance;
@end

@implementation UITextEffectsHostingInfo

- (id)_initWithScene:(id)scene options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = UITextEffectsHostingInfo;
  v9 = [(UITextEffectsHostingInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scene, scene);
    objc_storeStrong(&v10->_perSceneOptions, options);
    v10->_hostedUseCount = 0;
  }

  return v10;
}

- (void)setUseHostedInstance:(BOOL)instance
{
  hostedUseCount = self->_hostedUseCount;
  if (instance)
  {
    v4 = hostedUseCount + 1;
  }

  else
  {
    v4 = hostedUseCount - 1;
  }

  self->_hostedUseCount = v4;
}

@end