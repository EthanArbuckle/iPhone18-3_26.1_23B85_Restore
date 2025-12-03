@interface VUWGalleryChangeBookmark
- (VUWGalleryChangeBookmark)init;
- (VUWGalleryChangeBookmark)initWithBookmark:(id)bookmark;
- (VUWGalleryChangeBookmark)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VUWGalleryChangeBookmark

- (VUWGalleryChangeBookmark)initWithBookmark:(id)bookmark
{
  *(&self->super.isa + OBJC_IVAR___VUWGalleryChangeBookmark_bookmark) = bookmark;
  v5.receiver = self;
  v5.super_class = VUWGalleryChangeBookmark;
  bookmarkCopy = bookmark;
  return [(VUWGalleryChangeBookmark *)&v5 init];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWGalleryChangeBookmark_bookmark);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_1D225092C();
  [coderCopy encodeObject:v4 forKey:v6];
}

- (VUWGalleryChangeBookmark)initWithCoder:(id)coder
{
  type metadata accessor for VUGallery.Bookmark();
  coderCopy = coder;
  v6 = sub_1D2250DEC();
  if (v6)
  {
    *(&self->super.isa + OBJC_IVAR___VUWGalleryChangeBookmark_bookmark) = v6;
    v10.receiver = self;
    v10.super_class = VUWGalleryChangeBookmark;
    v7 = [(VUWGalleryChangeBookmark *)&v10 init];
  }

  else
  {

    type metadata accessor for VUWGalleryChangeBookmark(v8);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

- (VUWGalleryChangeBookmark)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end