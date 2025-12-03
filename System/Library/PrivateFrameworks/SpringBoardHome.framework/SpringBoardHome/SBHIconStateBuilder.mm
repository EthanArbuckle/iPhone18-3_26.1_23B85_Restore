@interface SBHIconStateBuilder
+ (id)iconStateByReplacingTodayListsInIconState:(id)state withTodayListsFromIconState:(id)iconState;
+ (id)iconStateFolderWithName:(id)name iconLists:(id)lists;
+ (id)iconStateWithIconLists:(id)lists;
+ (id)iconStateWithIconLists:(id)lists dock:(id)dock;
@end

@implementation SBHIconStateBuilder

+ (id)iconStateWithIconLists:(id)lists dock:(id)dock
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"iconLists";
  v10[1] = @"buttonBar";
  v11[0] = lists;
  v11[1] = dock;
  v5 = MEMORY[0x1E695DF20];
  dockCopy = dock;
  listsCopy = lists;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

+ (id)iconStateWithIconLists:(id)lists
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"iconLists";
  v8[0] = lists;
  v3 = MEMORY[0x1E695DF20];
  listsCopy = lists;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)iconStateFolderWithName:(id)name iconLists:(id)lists
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"listType";
  v10[1] = @"displayName";
  v11[0] = @"folder";
  v11[1] = name;
  v10[2] = @"iconLists";
  v11[2] = lists;
  v5 = MEMORY[0x1E695DF20];
  listsCopy = lists;
  nameCopy = name;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)iconStateByReplacingTodayListsInIconState:(id)state withTodayListsFromIconState:(id)iconState
{
  iconStateCopy = iconState;
  v6 = [state mutableCopy];
  v7 = [iconStateCopy objectForKey:@"today"];

  if (v7)
  {
    [v6 setObject:v7 forKey:@"today"];
  }

  return v6;
}

@end