@interface UISnapshotInteraction
- (UIView)view;
- (_TtC5UIKitP33_5E047FF87EF322737F6B29EC4785CA5821UISnapshotInteraction)init;
- (void)didMoveToView:(id)view;
- (void)setView:(id)view;
@end

@implementation UISnapshotInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1890A85F8(view);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1890A869C();
}

- (_TtC5UIKitP33_5E047FF87EF322737F6B29EC4785CA5821UISnapshotInteraction)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(UISnapshotInteraction *)&v5 init];
}

@end