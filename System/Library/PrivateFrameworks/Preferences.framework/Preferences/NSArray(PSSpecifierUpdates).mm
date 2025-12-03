@interface NSArray(PSSpecifierUpdates)
- (id)arrayByPerformingSpecifierUpdatesUsingBlock:()PSSpecifierUpdates;
@end

@implementation NSArray(PSSpecifierUpdates)

- (id)arrayByPerformingSpecifierUpdatesUsingBlock:()PSSpecifierUpdates
{
  if (a3)
  {
    v4 = a3;
    v5 = [PSSpecifierUpdates updatesWithSpecifiers:self];
    v4[2](v4, v5);

    selfCopy = [v5 currentSpecifiers];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end