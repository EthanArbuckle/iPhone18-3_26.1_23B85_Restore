@interface STPersistenceConfiguration
+ (NSManagedObjectModel)managedObjectModel;
+ (NSURL)managedObjectModelURL;
+ (id)persistentStoreDescriptionForConfigurationName:(id)a3 type:(id)a4;
+ (id)persistentStoreURLForConfigurationName:(id)a3;
@end

@implementation STPersistenceConfiguration

+ (NSURL)managedObjectModelURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__STPersistenceConfiguration_managedObjectModelURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (managedObjectModelURL_onceToken != -1)
  {
    dispatch_once(&managedObjectModelURL_onceToken, block);
  }

  v2 = managedObjectModelURL_managedObjectModelURL;

  return v2;
}

void __51__STPersistenceConfiguration_managedObjectModelURL__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];
  v1 = [v3 URLForResource:@"ScreenTime" withExtension:@"momd"];
  v2 = managedObjectModelURL_managedObjectModelURL;
  managedObjectModelURL_managedObjectModelURL = v1;
}

+ (NSManagedObjectModel)managedObjectModel
{
  if (managedObjectModel_onceToken != -1)
  {
    +[STPersistenceConfiguration managedObjectModel];
  }

  v3 = managedObjectModel_managedObjectModel;

  return v3;
}

void __48__STPersistenceConfiguration_managedObjectModel__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695D638]);
  v3 = +[STPersistenceConfiguration managedObjectModelURL];
  v1 = [v0 initWithContentsOfURL:v3];
  v2 = managedObjectModel_managedObjectModel;
  managedObjectModel_managedObjectModel = v1;
}

+ (id)persistentStoreDescriptionForConfigurationName:(id)a3 type:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setType:v7];
  [v8 setConfiguration:v6];
  v9 = MEMORY[0x1E695E118];
  [v8 setOption:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695D3C0]];
  [v8 setOption:v9 forKey:*MEMORY[0x1E695D428]];
  if ([v7 isEqualToString:*MEMORY[0x1E695D528]])
  {
    v10 = MEMORY[0x1E695E118];
    [v8 setOption:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695D508]];
    [v8 setOption:v10 forKey:*MEMORY[0x1E695D4F8]];
    [v8 setOption:@"com.apple.ScreenTimeAgent.persistence" forKey:*MEMORY[0x1E695D518]];
    [v8 setShouldMigrateStoreAutomatically:0];
    [v8 setShouldInferMappingModelAutomatically:0];
    [v8 setShouldAddStoreAsynchronously:0];
  }

  else if (([v7 isEqualToString:*MEMORY[0x1E695D310]] & 1) == 0)
  {
    v11 = [a1 persistentStoreURLForConfigurationName:v6];
    [v8 setURL:v11];

    [v8 setShouldMigrateStoreAutomatically:1];
    [v8 setShouldInferMappingModelAutomatically:1];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v8 setOption:v13 forKey:*MEMORY[0x1E695D3D8]];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)persistentStoreURLForConfigurationName:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"RMAdminStore", a3];
  v4 = +[STLocations persistentStoreDirectory];
  v5 = [v4 URLByAppendingPathComponent:v3 isDirectory:0];
  v6 = [v5 URLByAppendingPathExtension:@"sqlite"];

  return v6;
}

@end