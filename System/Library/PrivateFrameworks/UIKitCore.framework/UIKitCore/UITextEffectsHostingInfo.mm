@interface UITextEffectsHostingInfo
- (id)_initWithScene:(id)a3 options:(id)a4;
- (void)setUseHostedInstance:(BOOL)a3;
@end

@implementation UITextEffectsHostingInfo

- (id)_initWithScene:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UITextEffectsHostingInfo;
  v9 = [(UITextEffectsHostingInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scene, a3);
    objc_storeStrong(&v10->_perSceneOptions, a4);
    v10->_hostedUseCount = 0;
  }

  return v10;
}

- (void)setUseHostedInstance:(BOOL)a3
{
  hostedUseCount = self->_hostedUseCount;
  if (a3)
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