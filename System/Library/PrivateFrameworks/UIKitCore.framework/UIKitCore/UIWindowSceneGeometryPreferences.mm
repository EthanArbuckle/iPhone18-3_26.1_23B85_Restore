@interface UIWindowSceneGeometryPreferences
- (BOOL)isEqual:(id)a3;
- (id)_init;
@end

@implementation UIWindowSceneGeometryPreferences

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UIWindowSceneGeometryPreferences;
  return [(UIWindowSceneGeometryPreferences *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIWindowSceneGeometryPreferences *)self _type];
    v6 = v5 == [v4 _type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end