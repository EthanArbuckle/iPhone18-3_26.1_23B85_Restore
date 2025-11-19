@interface STUsageBlock
+ (double)totalScreenTimeForUsageBlocks:(id)a3;
+ (id)fetchRequest;
+ (id)fetchRequestMatchingUsage:(id)a3 dateInterval:(id)a4;
+ (id)usageCategoriesForUsageBlocks:(id)a3;
+ (id)usageCountedItemsForUsageBlocks:(id)a3;
+ (int64_t)totalNotificationsForUsageBlocks:(id)a3;
+ (int64_t)totalPickupsForUsageBlocks:(id)a3;
@end

@implementation STUsageBlock

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STUsageBlock;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (id)fetchRequestMatchingUsage:(id)a3 dateInterval:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[STUsageBlock fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = [v5 startDate];
  v10 = [v5 endDate];

  v11 = [v8 predicateWithFormat:@"(%K == %@) AND (%K >= %@) AND (%K < %@)", @"usage", v6, @"startDate", v9, @"startDate", v10];

  [v7 setPredicate:v11];

  return v7;
}

+ (double)totalScreenTimeForUsageBlocks:(id)a3
{
  v3 = a3;
  v4 = [@"@sum." stringByAppendingString:@"screenTimeInSeconds"];
  v5 = [v3 valueForKeyPath:v4];

  v6 = [v5 integerValue];
  return v6;
}

+ (int64_t)totalPickupsForUsageBlocks:(id)a3
{
  v4 = a3;
  v5 = [a1 usageCountedItemsForUsageBlocks:v4];
  v6 = [@"@sum." stringByAppendingString:@"numberOfPickups"];
  v7 = [v5 valueForKeyPath:v6];
  v8 = [v7 integerValue];

  v9 = [@"@sum." stringByAppendingString:@"numberOfPickupsWithoutApplicationUsage"];
  v10 = [v4 valueForKeyPath:v9];

  v11 = [v10 integerValue];
  return v11 + v8;
}

+ (int64_t)totalNotificationsForUsageBlocks:(id)a3
{
  v3 = [a1 usageCountedItemsForUsageBlocks:a3];
  v4 = [@"@sum." stringByAppendingString:@"numberOfNotifications"];
  v5 = [v3 valueForKeyPath:v4];
  v6 = [v5 integerValue];

  return v6;
}

+ (id)usageCountedItemsForUsageBlocks:(id)a3
{
  v3 = a3;
  v4 = [@"@distinctUnionOfSets." stringByAppendingString:@"countedItems"];
  v5 = [v3 valueForKeyPath:v4];

  return v5;
}

+ (id)usageCategoriesForUsageBlocks:(id)a3
{
  v3 = a3;
  v4 = [@"@distinctUnionOfSets." stringByAppendingString:@"categories"];
  v5 = [v3 valueForKeyPath:v4];

  return v5;
}

@end