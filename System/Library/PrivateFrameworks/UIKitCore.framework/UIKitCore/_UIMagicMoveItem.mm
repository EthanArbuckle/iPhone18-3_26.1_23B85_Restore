@interface _UIMagicMoveItem
- (NSArray)portals;
- (void)setPortals:(id)portals;
@end

@implementation _UIMagicMoveItem

- (NSArray)portals
{
  swift_beginAccess();
  sub_188A34624(0, &qword_1EA934138);

  v2 = sub_18A4A7518();

  return v2;
}

- (void)setPortals:(id)portals
{
  sub_188A34624(0, &qword_1EA934138);
  v4 = sub_18A4A7548();
  v5 = OBJC_IVAR____UIMagicMoveItem_portals;
  swift_beginAccess();
  *(self + v5) = v4;
}

@end