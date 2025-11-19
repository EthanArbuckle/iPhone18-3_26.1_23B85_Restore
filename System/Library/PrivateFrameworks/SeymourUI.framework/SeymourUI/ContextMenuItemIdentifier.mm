@interface ContextMenuItemIdentifier
- (BOOL)isEqual:(id)a3;
- (_TtC9SeymourUI25ContextMenuItemIdentifier)init;
- (int64_t)hash;
@end

@implementation ContextMenuItemIdentifier

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_20B800520(v8);

  sub_20B8006F4(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
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