@interface UIWindowSceneActivationConfiguration
- (UIWindowSceneActivationConfiguration)initWithUserActivity:(NSUserActivity *)userActivity;
- (_UIWindowSceneActivator)_sceneActivator;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(UIWindowSceneActivationConfiguration *)self userActivity];
  v6 = [v4 initWithUserActivity:v5];

  v7 = [(UIWindowSceneActivationConfiguration *)self options];
  v8 = [v7 copy];
  [v6 setOptions:v8];

  v9 = [(UIWindowSceneActivationConfiguration *)self preview];
  v10 = [v9 copy];
  [v6 setPreview:v10];

  v11 = [(UIWindowSceneActivationConfiguration *)self _sceneActivator];
  [v6 _setSceneActivator:v11];

  [v6 _setAnimationSource:{-[UIWindowSceneActivationConfiguration _animationSource](self, "_animationSource")}];
  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(UIWindowSceneActivationConfiguration *)self userActivity];
  v6 = [v5 activityType];
  v7 = [v4 stringWithFormat:@"activityType = %@", v6];
  [v3 addObject:v7];

  v8 = [(UIWindowSceneActivationConfiguration *)self preview];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(UIWindowSceneActivationConfiguration *)self preview];
    v11 = [v9 stringWithFormat:@"preview = %@", v10];
    [v3 addObject:v11];
  }

  v12 = [(UIWindowSceneActivationConfiguration *)self options];

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [(UIWindowSceneActivationConfiguration *)self options];
    v15 = [v13 stringWithFormat:@"options = %@", v14];
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