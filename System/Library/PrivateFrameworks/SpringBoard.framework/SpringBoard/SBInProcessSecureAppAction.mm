@interface SBInProcessSecureAppAction
- (SBInProcessSecureAppAction)initWithType:(unint64_t)type applicationSceneEntity:(id)entity handler:(id)handler;
- (SBInProcessSecureAppAction)initWithType:(unint64_t)type hostableEntity:(id)entity handler:(id)handler;
@end

@implementation SBInProcessSecureAppAction

- (SBInProcessSecureAppAction)initWithType:(unint64_t)type applicationSceneEntity:(id)entity handler:(id)handler
{
  entityCopy = entity;
  v8 = *MEMORY[0x277D67008];
  handlerCopy = handler;
  v10 = SBSIdentifierForSecureAppType();
  v13.receiver = self;
  v13.super_class = SBInProcessSecureAppAction;
  v11 = [(SBInProcessSecureAppAction *)&v13 initWithType:1 slot:v8 identifier:v10 configurationObject:0 handler:handlerCopy];

  if (v11)
  {
    [(SBInProcessSecureAppAction *)v11 setApplicationSceneEntity:entityCopy];
  }

  return v11;
}

- (SBInProcessSecureAppAction)initWithType:(unint64_t)type hostableEntity:(id)entity handler:(id)handler
{
  entityCopy = entity;
  v8 = *MEMORY[0x277D67008];
  handlerCopy = handler;
  v10 = SBSIdentifierForSecureAppType();
  v13.receiver = self;
  v13.super_class = SBInProcessSecureAppAction;
  v11 = [(SBInProcessSecureAppAction *)&v13 initWithType:1 slot:v8 identifier:v10 configurationObject:0 handler:handlerCopy];

  if (v11)
  {
    [(SBInProcessSecureAppAction *)v11 setHostableEntity:entityCopy];
  }

  return v11;
}

@end