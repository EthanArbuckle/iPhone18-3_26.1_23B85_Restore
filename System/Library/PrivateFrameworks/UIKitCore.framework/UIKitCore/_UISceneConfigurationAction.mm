@interface _UISceneConfigurationAction
- (_UISceneConfigurationAction)initWithSceneConfiguration:(id)a3 error:(id *)a4;
- (id)loadSceneConfiguration;
@end

@implementation _UISceneConfigurationAction

- (_UISceneConfigurationAction)initWithSceneConfiguration:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_new();
  v18 = 0;
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = *(__UILogGetCategoryCachedImpl("SceneSessionActivationConfiguration", &initWithSceneConfiguration_error____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [v9 localizedDescription];
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Error archiving UISceneConfiguration %@: %@", buf, 0x16u);
    }

    if (a4)
    {
      v13 = v9;
      v14 = 0;
      *a4 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [v7 setObject:v8 forSetting:1];
    v15 = [v7 copy];
    v17.receiver = self;
    v17.super_class = _UISceneConfigurationAction;
    self = [(_UISceneConfigurationAction *)&v17 initWithInfo:v15 responder:0];

    v14 = self;
  }

  return v14;
}

- (id)loadSceneConfiguration
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(_UISceneConfigurationAction *)self info];
  v3 = [v2 objectForSetting:1];

  if (v3)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v11];
    v5 = v11;
    if (v5)
    {
      v6 = *(__UILogGetCategoryCachedImpl("SceneSessionActivationConfiguration", &loadSceneConfiguration___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = [v5 localizedDescription];
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Error unarchiving UISceneConfiguration: %@", buf, 0xCu);
      }

      v9 = 0;
    }

    else
    {
      v9 = v4;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end