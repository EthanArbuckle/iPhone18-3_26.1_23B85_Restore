@interface UIWindowSceneActivationConfiguration
- (UIWindowSceneActivationConfiguration)initWithUserActivity:(NSUserActivity *)userActivity;
- (_UIWindowSceneActivator)_sceneActivator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation UIWindowSceneActivationConfiguration

- (UIWindowSceneActivationConfiguration)initWithUserActivity:(NSUserActivity *)userActivity
{
  v5 = userActivity;
  v9.receiver = self;
  v9.super_class = UIWindowSceneActivationConfiguration;
  v6 = [(UIWindowSceneActivationConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userActivity, userActivity);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  userActivity = [(UIWindowSceneActivationConfiguration *)self userActivity];
  v6 = [v4 initWithUserActivity:userActivity];

  options = [(UIWindowSceneActivationConfiguration *)self options];
  v8 = [options copy];
  [v6 setOptions:v8];

  preview = [(UIWindowSceneActivationConfiguration *)self preview];
  v10 = [preview copy];
  [v6 setPreview:v10];

  _sceneActivator = [(UIWindowSceneActivationConfiguration *)self _sceneActivator];
  [v6 _setSceneActivator:_sceneActivator];

  [v6 _setAnimationSource:{-[UIWindowSceneActivationConfiguration _animationSource](self, "_animationSource")}];
  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  userActivity = [(UIWindowSceneActivationConfiguration *)self userActivity];
  activityType = [userActivity activityType];
  v7 = [v4 stringWithFormat:@"activityType = %@", activityType];
  [v3 addObject:v7];

  preview = [(UIWindowSceneActivationConfiguration *)self preview];

  if (preview)
  {
    v9 = MEMORY[0x1E696AEC0];
    preview2 = [(UIWindowSceneActivationConfiguration *)self preview];
    v11 = [v9 stringWithFormat:@"preview = %@", preview2];
    [v3 addObject:v11];
  }

  options = [(UIWindowSceneActivationConfiguration *)self options];

  if (options)
  {
    v13 = MEMORY[0x1E696AEC0];
    options2 = [(UIWindowSceneActivationConfiguration *)self options];
    v15 = [v13 stringWithFormat:@"options = %@", options2];
    [v3 addObject:v15];
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v3 componentsJoinedByString:@" "];;
  v20 = [v16 stringWithFormat:@"<%@: %p %@>", v18, self, v19];;

  return v20;
}

- (_UIWindowSceneActivator)_sceneActivator
{
  WeakRetained = objc_loadWeakRetained(&self->__sceneActivator);

  return WeakRetained;
}

@end