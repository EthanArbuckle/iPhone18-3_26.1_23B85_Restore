@interface VUGallery.Bookmark
- (_TtCC19VisualUnderstanding9VUGallery8Bookmark)init;
- (_TtCC19VisualUnderstanding9VUGallery8Bookmark)initWithCoder:(id)coder;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VUGallery.Bookmark

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1D2185F10(coderCopy);
}

- (_TtCC19VisualUnderstanding9VUGallery8Bookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1D21A3548();

  return v4;
}

- (id)copyWithZone:(void *)zone
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token);
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID);
  v5 = self->token[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID];
  v6 = type metadata accessor for VUGallery.Bookmark();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token;
  *&v7[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token] = 0;
  v9 = &v7[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID];
  *&v7[v8] = v3;
  *v9 = v4;
  v9[8] = v5;
  v12.receiver = v7;
  v12.super_class = v6;
  v10 = v3;
  return [(VUGallery.Bookmark *)&v12 init];
}

- (_TtCC19VisualUnderstanding9VUGallery8Bookmark)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end