@interface SBHIconStateBuilder
+ (id)iconStateByReplacingTodayListsInIconState:(id)a3 withTodayListsFromIconState:(id)a4;
+ (id)iconStateFolderWithName:(id)a3 iconLists:(id)a4;
+ (id)iconStateWithIconLists:(id)a3;
+ (id)iconStateWithIconLists:(id)a3 dock:(id)a4;
@end

@implementation SBHIconStateBuilder

+ (id)iconStateWithIconLists:(id)a3 dock:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"iconLists";
  v10[1] = @"buttonBar";
  v11[0] = a3;
  v11[1] = a4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

+ (id)iconStateWithIconLists:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"iconLists";
  v8[0] = a3;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)iconStateFolderWithName:(id)a3 iconLists:(id)a4
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"listType";
  v10[1] = @"displayName";
  v11[0] = @"folder";
  v11[1] = a3;
  v10[2] = @"iconLists";
  v11[2] = a4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)iconStateByReplacingTodayListsInIconState:(id)a3 withTodayListsFromIconState:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  v7 = [v5 objectForKey:@"today"];

  if (v7)
  {
    [v6 setObject:v7 forKey:@"today"];
  }

  return v6;
}

@end