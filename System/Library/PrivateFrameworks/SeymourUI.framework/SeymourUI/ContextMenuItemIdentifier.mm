@interface ContextMenuItemIdentifier
- (BOOL)isEqual:(id)equal;
- (_TtC9SeymourUI25ContextMenuItemIdentifier)init;
- (int64_t)hash;
@end

@implementation ContextMenuItemIdentifier

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_20B800520(v8);

  sub_20B8006F4(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_20C13DBF4();

  return v3;
}

- (_TtC9SeymourUI25ContextMenuItemIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end