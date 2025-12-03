@interface TopInsetSpacerLayout
- (_TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20TopInsetSpacerLayout)init;
- (void)update;
@end

@implementation TopInsetSpacerLayout

- (void)update
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20TopInsetSpacerLayout_height);
  selfCopy = self;
  [(TopInsetSpacerLayout *)selfCopy setContentSize:0.0, v2];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for TopInsetSpacerLayout();
  [(TopInsetSpacerLayout *)&v4 update];
}

- (_TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20TopInsetSpacerLayout)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20TopInsetSpacerLayout_height) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TopInsetSpacerLayout();
  return [(TopInsetSpacerLayout *)&v3 init];
}

@end