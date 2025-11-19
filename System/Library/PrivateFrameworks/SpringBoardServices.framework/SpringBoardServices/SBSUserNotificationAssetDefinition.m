@interface SBSUserNotificationAssetDefinition
+ (id)_definitionFromSerializedDefinition:(id)a3;
- (id)_initWithDictionary:(id)a3;
- (id)build;
@end

@implementation SBSUserNotificationAssetDefinition

+ (id)_definitionFromSerializedDefinition:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"SBSCFUNAssetDefinitionType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ((v5 = off_1E735E858, +[SBSUserNotificationImageAssetDefinition _definitionType](SBSUserNotificationImageAssetDefinition, "_definitionType"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v4 isEqualToString:v6], v6, (v7) || (v5 = off_1E735E868, +[SBSUserNotificationSystemImageDefinition _definitionType](SBSUserNotificationSystemImageDefinition, "_definitionType"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v4, "isEqualToString:", v8), v8, (v9) || (v5 = off_1E735E848, +[SBSUserNotificationCAPackageDefinition _definitionType](SBSUserNotificationCAPackageDefinition, "_definitionType"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v4, "isEqualToString:", v10), v10, (v11) || (v5 = off_1E735E578, +[SBSCFUserNotificationGraphicIconDefinition _definitionType](SBSCFUserNotificationGraphicIconDefinition, "_definitionType"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v4, "isEqualToString:", v12), v12, v13)))
  {
    v14 = [objc_alloc(*v5) _initWithDictionary:v3];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_initWithDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSUserNotificationAssetDefinition *)a2 _initWithDictionary:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(SBSUserNotificationAssetDefinition *)self init];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)build
{
  v2 = MEMORY[0x1E695DF20];
  v3 = [objc_opt_class() _definitionType];
  v4 = [v2 dictionaryWithObject:v3 forKey:@"SBSCFUNAssetDefinitionType"];

  return v4;
}

- (void)_initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationAssetDefinition.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
}

@end