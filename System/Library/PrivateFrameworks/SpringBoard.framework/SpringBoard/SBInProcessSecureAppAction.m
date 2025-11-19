@interface SBInProcessSecureAppAction
- (SBInProcessSecureAppAction)initWithType:(unint64_t)a3 applicationSceneEntity:(id)a4 handler:(id)a5;
- (SBInProcessSecureAppAction)initWithType:(unint64_t)a3 hostableEntity:(id)a4 handler:(id)a5;
@end

@implementation SBInProcessSecureAppAction

- (SBInProcessSecureAppAction)initWithType:(unint64_t)a3 applicationSceneEntity:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = *MEMORY[0x277D67008];
  v9 = a5;
  v10 = SBSIdentifierForSecureAppType();
  v13.receiver = self;
  v13.super_class = SBInProcessSecureAppAction;
  v11 = [(SBInProcessSecureAppAction *)&v13 initWithType:1 slot:v8 identifier:v10 configurationObject:0 handler:v9];

  if (v11)
  {
    [(SBInProcessSecureAppAction *)v11 setApplicationSceneEntity:v7];
  }

  return v11;
}

- (SBInProcessSecureAppAction)initWithType:(unint64_t)a3 hostableEntity:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = *MEMORY[0x277D67008];
  v9 = a5;
  v10 = SBSIdentifierForSecureAppType();
  v13.receiver = self;
  v13.super_class = SBInProcessSecureAppAction;
  v11 = [(SBInProcessSecureAppAction *)&v13 initWithType:1 slot:v8 identifier:v10 configurationObject:0 handler:v9];

  if (v11)
  {
    [(SBInProcessSecureAppAction *)v11 setHostableEntity:v7];
  }

  return v11;
}

@end