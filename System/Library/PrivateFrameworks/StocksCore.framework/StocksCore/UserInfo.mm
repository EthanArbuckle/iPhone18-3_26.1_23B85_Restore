@interface UserInfo
- (void)database:(id)database didChangeZone:(id)zone from:(id)from to:(id)to;
@end

@implementation UserInfo

- (void)database:(id)database didChangeZone:(id)zone from:(id)from to:(id)to
{
  databaseCopy = database;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1DACB71F4();
  sub_1DAA752CC(databaseCopy, from, to);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end