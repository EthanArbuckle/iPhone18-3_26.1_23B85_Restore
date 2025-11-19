@interface UIQuickLookSceneConfigurationAction
+ (id)actionWithSceneConfiguration:(id)a3;
- (id)loadSceneConfiguration;
@end

@implementation UIQuickLookSceneConfigurationAction

+ (id)actionWithSceneConfiguration:(id)a3
{
  v5 = a3;
  v6 = [v5 role];
  v7 = [v6 isEqualToString:@"UISceneSessionRoleQuickLook"];

  if ((v7 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [v5 role];
    [v12 handleFailureInMethod:a2 object:a1 file:@"UIQuickLookSceneConfigurationAction.m" lineNumber:19 description:{@"UIInternalSceneConfigurationAction should only be used to configure scenes with the role UISceneSessionRoleQuickLook. Provided Role: %@", v13}];
  }

  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  [v8 setObject:v9 forSetting:1];
  v10 = [[a1 alloc] initWithInfo:v8 responder:0];

  return v10;
}

- (id)loadSceneConfiguration
{
  v2 = [(UIQuickLookSceneConfigurationAction *)self info];
  v3 = [v2 objectForSetting:1];

  if (v3)
  {
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end