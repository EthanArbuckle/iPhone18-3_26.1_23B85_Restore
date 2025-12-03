@interface STUsageBlock
+ (double)totalScreenTimeForUsageBlocks:(id)blocks;
+ (id)fetchRequest;
+ (id)fetchRequestMatchingUsage:(id)usage dateInterval:(id)interval;
+ (id)usageCategoriesForUsageBlocks:(id)blocks;
+ (id)usageCountedItemsForUsageBlocks:(id)blocks;
+ (int64_t)totalNotificationsForUsageBlocks:(id)blocks;
+ (int64_t)totalPickupsForUsageBlocks:(id)blocks;
@end

@implementation STUsageBlock

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STUsageBlock;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (id)fetchRequestMatchingUsage:(id)usage dateInterval:(id)interval
{
  intervalCopy = interval;
  usageCopy = usage;
  v7 = +[STUsageBlock fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v11 = [v8 predicateWithFormat:@"(%K == %@) AND (%K >= %@) AND (%K < %@)", @"usage", usageCopy, @"startDate", startDate, @"startDate", endDate];

  [v7 setPredicate:v11];

  return v7;
}

+ (double)totalScreenTimeForUsageBlocks:(id)blocks
{
  blocksCopy = blocks;
  v4 = [@"@sum." stringByAppendingString:@"screenTimeInSeconds"];
  v5 = [blocksCopy valueForKeyPath:v4];

  integerValue = [v5 integerValue];
  return integerValue;
}

+ (int64_t)totalPickupsForUsageBlocks:(id)blocks
{
  blocksCopy = blocks;
  v5 = [self usageCountedItemsForUsageBlocks:blocksCopy];
  v6 = [@"@sum." stringByAppendingString:@"numberOfPickups"];
  v7 = [v5 valueForKeyPath:v6];
  integerValue = [v7 integerValue];

  v9 = [@"@sum." stringByAppendingString:@"numberOfPickupsWithoutApplicationUsage"];
  v10 = [blocksCopy valueForKeyPath:v9];

  integerValue2 = [v10 integerValue];
  return integerValue2 + integerValue;
}

+ (int64_t)totalNotificationsForUsageBlocks:(id)blocks
{
  v3 = [self usageCountedItemsForUsageBlocks:blocks];
  v4 = [@"@sum." stringByAppendingString:@"numberOfNotifications"];
  v5 = [v3 valueForKeyPath:v4];
  integerValue = [v5 integerValue];

  return integerValue;
}

+ (id)usageCountedItemsForUsageBlocks:(id)blocks
{
  blocksCopy = blocks;
  v4 = [@"@distinctUnionOfSets." stringByAppendingString:@"countedItems"];
  v5 = [blocksCopy valueForKeyPath:v4];

  return v5;
}

+ (id)usageCategoriesForUsageBlocks:(id)blocks
{
  blocksCopy = blocks;
  v4 = [@"@distinctUnionOfSets." stringByAppendingString:@"categories"];
  v5 = [blocksCopy valueForKeyPath:v4];

  return v5;
}

@end