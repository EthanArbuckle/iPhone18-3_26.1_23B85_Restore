@interface LibraryDataSource
- (void)databaseResultDidChange:(id)change;
@end

@implementation LibraryDataSource

- (void)databaseResultDidChange:(id)change
{
  changeCopy = change;

  sub_2747AD05C();
}

@end