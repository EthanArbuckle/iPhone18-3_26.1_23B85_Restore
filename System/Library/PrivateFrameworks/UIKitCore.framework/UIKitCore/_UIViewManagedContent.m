@interface _UIViewManagedContent
- (BOOL)isEqual:(id)a3;
- (int64_t)hash;
@end

@implementation _UIViewManagedContent

- (int64_t)hash
{
  v2 = *(&self->super.isa + OBJC_IVAR____UIViewManagedContent_value);
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v2);
  return sub_18A4A88E8();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = _UIViewManagedContent.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6;
}

@end