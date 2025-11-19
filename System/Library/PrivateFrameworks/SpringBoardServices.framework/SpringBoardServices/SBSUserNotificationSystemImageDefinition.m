@interface SBSUserNotificationSystemImageDefinition
- (id)_initWithDictionary:(id)a3;
- (id)_initWithSystemImageName:(id)a3 tintColor:(id)a4;
- (id)build;
@end

@implementation SBSUserNotificationSystemImageDefinition

- (id)_initWithSystemImageName:(id)a3 tintColor:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [SBSUserNotificationSystemImageDefinition _initWithSystemImageName:a2 tintColor:self];
  }

  v13.receiver = self;
  v13.super_class = SBSUserNotificationSystemImageDefinition;
  v10 = [(SBSUserNotificationSystemImageDefinition *)&v13 init];
  p_isa = &v10->super.super.super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_systemImageName, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (id)_initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBSUserNotificationSystemImageDefinition;
  v5 = [(SBSUserNotificationAssetDefinition *)&v12 _initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 bs_safeStringForKey:@"SBSCFUNSystemImageName"];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [v4 bs_safeDictionaryForKey:@"SBSCFUNTintColor"];
    if (v8)
    {
      v9 = [[SBSUserNotificationColorDefinition alloc] _initWithDictionary:v8];
      v10 = v5[2];
      v5[2] = v9;
    }
  }

  return v5;
}

- (id)build
{
  v10.receiver = self;
  v10.super_class = SBSUserNotificationSystemImageDefinition;
  v3 = [(SBSUserNotificationAssetDefinition *)&v10 build];
  v4 = [v3 mutableCopy];

  systemImageName = self->_systemImageName;
  if (systemImageName)
  {
    [v4 setObject:systemImageName forKey:@"SBSCFUNSystemImageName"];
  }

  tintColor = self->_tintColor;
  if (tintColor)
  {
    v7 = [(SBSUserNotificationColorDefinition *)tintColor build];
    [v4 setObject:v7 forKey:@"SBSCFUNTintColor"];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)_initWithSystemImageName:(uint64_t)a1 tintColor:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationSystemImageDefinition.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"systemImageName"}];
}

@end