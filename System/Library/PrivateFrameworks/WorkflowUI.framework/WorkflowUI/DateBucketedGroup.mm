@interface DateBucketedGroup
- (void)databaseResultDidChange:(id)change;
@end

@implementation DateBucketedGroup

- (void)databaseResultDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_274789938();
}

@end