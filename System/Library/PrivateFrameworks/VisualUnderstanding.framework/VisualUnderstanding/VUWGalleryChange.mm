@interface VUWGalleryChange
- (VUWGalleryChange)init;
- (VUWGalleryChange)initWithUpdateType:(int64_t)a3 entityIdentifier:(id)a4 tag:(id)a5;
- (void)setEntityIdentifier:(id)a3;
@end

@implementation VUWGalleryChange

- (void)setEntityIdentifier:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWGalleryChange_entityIdentifier);
  *(&self->super.isa + OBJC_IVAR___VUWGalleryChange_entityIdentifier) = a3;
  v3 = a3;
}

- (VUWGalleryChange)initWithUpdateType:(int64_t)a3 entityIdentifier:(id)a4 tag:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_1D2244E50(a3, v7, a5);

  return v9;
}

- (VUWGalleryChange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end