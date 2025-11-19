@interface UIWindowSceneGeometryPreferencesIOS
- (BOOL)isEqual:(id)a3;
- (UIWindowSceneGeometryPreferencesIOS)init;
- (UIWindowSceneGeometryPreferencesIOS)initWithInterfaceOrientations:(UIInterfaceOrientationMask)interfaceOrientations;
@end

@implementation UIWindowSceneGeometryPreferencesIOS

- (UIWindowSceneGeometryPreferencesIOS)init
{
  v3.receiver = self;
  v3.super_class = UIWindowSceneGeometryPreferencesIOS;
  result = [(UIWindowSceneGeometryPreferences *)&v3 _init];
  if (result)
  {
    result->_interfaceOrientations = 0;
  }

  return result;
}

- (UIWindowSceneGeometryPreferencesIOS)initWithInterfaceOrientations:(UIInterfaceOrientationMask)interfaceOrientations
{
  result = [(UIWindowSceneGeometryPreferencesIOS *)self init];
  if (result)
  {
    result->_interfaceOrientations = interfaceOrientations;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIWindowSceneGeometryPreferencesIOS;
  if ([(UIWindowSceneGeometryPreferences *)&v7 isEqual:v4])
  {
    v5 = [v4 interfaceOrientations] == self->_interfaceOrientations;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end