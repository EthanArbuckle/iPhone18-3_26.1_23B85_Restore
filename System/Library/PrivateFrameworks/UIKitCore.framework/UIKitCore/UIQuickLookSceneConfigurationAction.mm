@interface UIQuickLookSceneConfigurationAction
+ (id)actionWithSceneConfiguration:(id)configuration;
- (id)loadSceneConfiguration;
@end

@implementation UIQuickLookSceneConfigurationAction

+ (id)actionWithSceneConfiguration:(id)configuration
{
  configurationCopy = configuration;
  role = [configurationCopy role];
  v7 = [role isEqualToString:@"UISceneSessionRoleQuickLook"];

  if ((v7 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    role2 = [configurationCopy role];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIQuickLookSceneConfigurationAction.m" lineNumber:19 description:{@"UIInternalSceneConfigurationAction should only be used to configure scenes with the role UISceneSessionRoleQuickLook. Provided Role: %@", role2}];
  }

  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:configurationCopy requiringSecureCoding:1 error:0];
  [v8 setObject:v9 forSetting:1];
  v10 = [[self alloc] initWithInfo:v8 responder:0];

  return v10;
}

- (id)loadSceneConfiguration
{
  info = [(UIQuickLookSceneConfigurationAction *)self info];
  v3 = [info objectForSetting:1];

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