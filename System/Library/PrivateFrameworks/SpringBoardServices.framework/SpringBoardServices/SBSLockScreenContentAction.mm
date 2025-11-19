@interface SBSLockScreenContentAction
- (NSString)identifier;
- (NSString)slot;
- (SBSLockScreenContentAction)initWithType:(unint64_t)a3 slot:(id)a4 identifier:(id)a5 configurationObject:(id)a6 handler:(id)a7;
- (id)configurationObject;
- (unint64_t)secureAppType;
- (unint64_t)type;
@end

@implementation SBSLockScreenContentAction

- (SBSLockScreenContentAction)initWithType:(unint64_t)a3 slot:(id)a4 identifier:(id)a5 configurationObject:(id)a6 handler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x1E698E700];
  v16 = a4;
  v17 = objc_alloc_init(v15);
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v17 setObject:v18 forSetting:1];

  [v17 setObject:v16 forSetting:2];
  [v17 setObject:v12 forSetting:3];
  LODWORD(v18) = [v16 isEqualToString:@"App"];

  if (v18)
  {
    v19 = SBSSecureAppTypeForIdentifier(v12);
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
  [v17 setObject:v20 forSetting:4];

  if (v13)
  {
    [v17 setObject:v13 forSetting:5];
  }

  v21 = dispatch_get_global_queue(25, 0);
  v24.receiver = self;
  v24.super_class = SBSLockScreenContentAction;
  v22 = [(SBSLockScreenContentAction *)&v24 initWithInfo:v17 timeout:v21 forResponseOnQueue:v14 withHandler:0.0];

  return v22;
}

- (unint64_t)type
{
  v2 = [(SBSLockScreenContentAction *)self info];
  v3 = [v2 objectForSetting:1];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (NSString)slot
{
  v2 = [(SBSLockScreenContentAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (NSString)identifier
{
  v2 = [(SBSLockScreenContentAction *)self info];
  v3 = [v2 objectForSetting:3];

  return v3;
}

- (unint64_t)secureAppType
{
  v2 = [(SBSLockScreenContentAction *)self info];
  v3 = [v2 objectForSetting:4];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (id)configurationObject
{
  v2 = [(SBSLockScreenContentAction *)self info];
  v3 = [v2 objectForSetting:5];

  return v3;
}

@end