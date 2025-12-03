@interface SBSUserNotificationCAPackageDefinition
+ (id)definitionWithCAPackagePath:(id)path;
- (id)_initWithCAPackagePath:(id)path;
- (id)_initWithDictionary:(id)dictionary;
- (id)build;
@end

@implementation SBSUserNotificationCAPackageDefinition

+ (id)definitionWithCAPackagePath:(id)path
{
  pathCopy = path;
  v4 = [[SBSUserNotificationCAPackageDefinition alloc] _initWithCAPackagePath:pathCopy];

  return v4;
}

- (id)_initWithCAPackagePath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    [(SBSUserNotificationCAPackageDefinition *)a2 _initWithCAPackagePath:?];
  }

  v10.receiver = self;
  v10.super_class = SBSUserNotificationCAPackageDefinition;
  v7 = [(SBSUserNotificationCAPackageDefinition *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_caPackagePath, path);
  }

  return v8;
}

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SBSUserNotificationCAPackageDefinition;
  v5 = [(SBSUserNotificationAssetDefinition *)&v9 _initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy bs_safeStringForKey:@"SBSCFCAPackagePath"];
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (id)build
{
  v8.receiver = self;
  v8.super_class = SBSUserNotificationCAPackageDefinition;
  build = [(SBSUserNotificationAssetDefinition *)&v8 build];
  v4 = [build mutableCopy];

  caPackagePath = self->_caPackagePath;
  if (caPackagePath)
  {
    [v4 setObject:caPackagePath forKey:@"SBSCFCAPackagePath"];
  }

  v6 = [v4 copy];

  return v6;
}

- (void)_initWithCAPackagePath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationCAPackageDefinition.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"caPackagePath"}];
}

@end