@interface NSMutableArray(PSSpecifierUpdates)
- (void)performSpecifierUpdatesUsingBlock:()PSSpecifierUpdates;
@end

@implementation NSMutableArray(PSSpecifierUpdates)

- (void)performSpecifierUpdatesUsingBlock:()PSSpecifierUpdates
{
  if (a3)
  {
    v4 = a3;
    v6 = [PSSpecifierUpdates updatesWithSpecifiers:self];
    v4[2](v4, v6);

    currentSpecifiers = [v6 currentSpecifiers];
    [self setArray:currentSpecifiers];
  }
}

@end