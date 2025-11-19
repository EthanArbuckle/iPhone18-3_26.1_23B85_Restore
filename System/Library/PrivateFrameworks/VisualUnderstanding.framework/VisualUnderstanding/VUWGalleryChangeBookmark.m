@interface VUWGalleryChangeBookmark
- (VUWGalleryChangeBookmark)init;
- (VUWGalleryChangeBookmark)initWithBookmark:(id)a3;
- (VUWGalleryChangeBookmark)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VUWGalleryChangeBookmark

- (VUWGalleryChangeBookmark)initWithBookmark:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___VUWGalleryChangeBookmark_bookmark) = a3;
  v5.receiver = self;
  v5.super_class = VUWGalleryChangeBookmark;
  v3 = a3;
  return [(VUWGalleryChangeBookmark *)&v5 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWGalleryChangeBookmark_bookmark);
  v7 = a3;
  v5 = self;
  v6 = sub_1D225092C();
  [v7 encodeObject:v4 forKey:v6];
}

- (VUWGalleryChangeBookmark)initWithCoder:(id)a3
{
  type metadata accessor for VUGallery.Bookmark();
  v5 = a3;
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