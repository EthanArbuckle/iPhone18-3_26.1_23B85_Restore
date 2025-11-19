@interface STStatusBarDataEntry(Testing)
+ (id)entryWithKey:()Testing updatedKeys:enabledKeys:;
+ (id)entryWithKey:()Testing updatedKeys:enabledKeys:populatedEntry:;
@end

@implementation STStatusBarDataEntry(Testing)

+ (id)entryWithKey:()Testing updatedKeys:enabledKeys:
{
  v8 = a3;
  v9 = a5;
  if ([a4 containsObject:v8])
  {
    if ([v9 containsObject:v8])
    {
      [a1 entry];
    }

    else
    {
      [a1 disabledEntry];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)entryWithKey:()Testing updatedKeys:enabledKeys:populatedEntry:
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([a4 containsObject:v10])
  {
    if (([v11 containsObject:v10] & 1) == 0)
    {
      v13 = [a1 disabledEntry];

      v12 = v13;
    }

    v14 = v12;
    v12 = v14;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end