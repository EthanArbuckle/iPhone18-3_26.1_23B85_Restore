@interface NSArray(PSSpecifierUpdates)
- (id)arrayByPerformingSpecifierUpdatesUsingBlock:()PSSpecifierUpdates;
@end

@implementation NSArray(PSSpecifierUpdates)

- (id)arrayByPerformingSpecifierUpdatesUsingBlock:()PSSpecifierUpdates
{
  if (a3)
  {
    v4 = a3;
    v5 = [PSSpecifierUpdates updatesWithSpecifiers:a1];
    v4[2](v4, v5);

    v6 = [v5 currentSpecifiers];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

@end