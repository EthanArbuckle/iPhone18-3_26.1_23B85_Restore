@interface TUSearchModuleManager
+ (NSArray)recentsModuleClasses;
+ (NSArray)searchModuleClasses;
@end

@implementation TUSearchModuleManager

+ (NSArray)recentsModuleClasses
{
  if (recentsModuleClasses_onceToken != -1)
  {
    +[TUSearchModuleManager recentsModuleClasses];
  }

  v3 = recentsModuleClasses_sRecentClasses;

  return v3;
}

void __45__TUSearchModuleManager_recentsModuleClasses__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = recentsModuleClasses_sRecentClasses;
  recentsModuleClasses_sRecentClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (NSArray)searchModuleClasses
{
  if (searchModuleClasses_onceToken != -1)
  {
    +[TUSearchModuleManager searchModuleClasses];
  }

  v3 = searchModuleClasses_sSearchClasses;

  return v3;
}

void __44__TUSearchModuleManager_searchModuleClasses__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = searchModuleClasses_sSearchClasses;
  searchModuleClasses_sSearchClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end