@interface UIWindowSceneGeometryPreferences
- (BOOL)isEqual:(id)equal;
- (id)_init;
@end

@implementation UIWindowSceneGeometryPreferences

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UIWindowSceneGeometryPreferences;
  return [(UIWindowSceneGeometryPreferences *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _type = [(UIWindowSceneGeometryPreferences *)self _type];
    v6 = _type == [equalCopy _type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end