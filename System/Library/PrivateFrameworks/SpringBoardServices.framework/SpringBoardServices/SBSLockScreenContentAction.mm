@interface SBSLockScreenContentAction
- (NSString)identifier;
- (NSString)slot;
- (SBSLockScreenContentAction)initWithType:(unint64_t)type slot:(id)slot identifier:(id)identifier configurationObject:(id)object handler:(id)handler;
- (id)configurationObject;
- (unint64_t)secureAppType;
- (unint64_t)type;
@end

@implementation SBSLockScreenContentAction

- (SBSLockScreenContentAction)initWithType:(unint64_t)type slot:(id)slot identifier:(id)identifier configurationObject:(id)object handler:(id)handler
{
  identifierCopy = identifier;
  objectCopy = object;
  handlerCopy = handler;
  v15 = MEMORY[0x1E698E700];
  slotCopy = slot;
  v17 = objc_alloc_init(v15);
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [v17 setObject:v18 forSetting:1];

  [v17 setObject:slotCopy forSetting:2];
  [v17 setObject:identifierCopy forSetting:3];
  LODWORD(v18) = [slotCopy isEqualToString:@"App"];

  if (v18)
  {
    v19 = SBSSecureAppTypeForIdentifier(identifierCopy);
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
  [v17 setObject:v20 forSetting:4];

  if (objectCopy)
  {
    [v17 setObject:objectCopy forSetting:5];
  }

  v21 = dispatch_get_global_queue(25, 0);
  v24.receiver = self;
  v24.super_class = SBSLockScreenContentAction;
  v22 = [(SBSLockScreenContentAction *)&v24 initWithInfo:v17 timeout:v21 forResponseOnQueue:handlerCopy withHandler:0.0];

  return v22;
}

- (unint64_t)type
{
  info = [(SBSLockScreenContentAction *)self info];
  v3 = [info objectForSetting:1];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (NSString)slot
{
  info = [(SBSLockScreenContentAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (NSString)identifier
{
  info = [(SBSLockScreenContentAction *)self info];
  v3 = [info objectForSetting:3];

  return v3;
}

- (unint64_t)secureAppType
{
  info = [(SBSLockScreenContentAction *)self info];
  v3 = [info objectForSetting:4];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (id)configurationObject
{
  info = [(SBSLockScreenContentAction *)self info];
  v3 = [info objectForSetting:5];

  return v3;
}

@end