@interface NSArray(UserNotificationsCore)
- (id)unc_map:()UserNotificationsCore usingLibrarian:;
@end

@implementation NSArray(UserNotificationsCore)

- (id)unc_map:()UserNotificationsCore usingLibrarian:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = v8;
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__NSArray_UserNotificationsCore__unc_map_usingLibrarian___block_invoke;
    v11[3] = &unk_1E85D7B20;
    v12 = v8;
    v14 = v6;
    v13 = v7;
    [a1 bs_each:v11];
  }

  else
  {
    [v8 addObjectsFromArray:a1];
  }

  return v9;
}

@end