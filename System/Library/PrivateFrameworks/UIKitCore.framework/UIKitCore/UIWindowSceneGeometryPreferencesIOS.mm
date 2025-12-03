@interface UIWindowSceneGeometryPreferencesIOS
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = UIWindowSceneGeometryPreferencesIOS;
  if ([(UIWindowSceneGeometryPreferences *)&v7 isEqual:equalCopy])
  {
    v5 = [equalCopy interfaceOrientations] == self->_interfaceOrientations;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end