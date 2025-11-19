@interface PSMutableSceneSettings
- (PSMutableSceneSettings)initWithSettings:(id)a3;
@end

@implementation PSMutableSceneSettings

- (PSMutableSceneSettings)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSMutableSceneSettings;
  v6 = [(PSMutableSceneSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  return v7;
}

@end