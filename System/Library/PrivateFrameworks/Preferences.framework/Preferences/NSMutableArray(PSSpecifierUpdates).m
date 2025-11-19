@interface NSMutableArray(PSSpecifierUpdates)
- (void)performSpecifierUpdatesUsingBlock:()PSSpecifierUpdates;
@end

@implementation NSMutableArray(PSSpecifierUpdates)

- (void)performSpecifierUpdatesUsingBlock:()PSSpecifierUpdates
{
  if (a3)
  {
    v4 = a3;
    v6 = [PSSpecifierUpdates updatesWithSpecifiers:a1];
    v4[2](v4, v6);

    v5 = [v6 currentSpecifiers];
    [a1 setArray:v5];
  }
}

@end