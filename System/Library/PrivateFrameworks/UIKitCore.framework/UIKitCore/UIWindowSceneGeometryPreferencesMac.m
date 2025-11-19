@interface UIWindowSceneGeometryPreferencesMac
- (BOOL)isEqual:(id)a3;
- (CGRect)systemFrame;
- (UIWindowSceneGeometryPreferencesMac)init;
- (UIWindowSceneGeometryPreferencesMac)initWithSystemFrame:(CGRect)systemFrame;
@end

@implementation UIWindowSceneGeometryPreferencesMac

- (UIWindowSceneGeometryPreferencesMac)init
{
  v4.receiver = self;
  v4.super_class = UIWindowSceneGeometryPreferencesMac;
  result = [(UIWindowSceneGeometryPreferences *)&v4 _init];
  if (result)
  {
    v3 = *(MEMORY[0x1E695F050] + 16);
    result->_systemFrame.origin = *MEMORY[0x1E695F050];
    result->_systemFrame.size = v3;
  }

  return result;
}

- (UIWindowSceneGeometryPreferencesMac)initWithSystemFrame:(CGRect)systemFrame
{
  height = systemFrame.size.height;
  width = systemFrame.size.width;
  y = systemFrame.origin.y;
  x = systemFrame.origin.x;
  result = [(UIWindowSceneGeometryPreferencesMac *)self init];
  if (result)
  {
    result->_systemFrame.origin.x = x;
    result->_systemFrame.origin.y = y;
    result->_systemFrame.size.width = width;
    result->_systemFrame.size.height = height;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIWindowSceneGeometryPreferencesMac;
  if ([(UIWindowSceneGeometryPreferences *)&v11 isEqual:v4])
  {
    [v4 systemFrame];
    v12.origin.x = v5;
    v12.origin.y = v6;
    v12.size.width = v7;
    v12.size.height = v8;
    v9 = CGRectEqualToRect(self->_systemFrame, v12);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGRect)systemFrame
{
  x = self->_systemFrame.origin.x;
  y = self->_systemFrame.origin.y;
  width = self->_systemFrame.size.width;
  height = self->_systemFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end