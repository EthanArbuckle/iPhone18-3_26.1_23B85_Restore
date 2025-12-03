@interface VUWGalleryChange
- (VUWGalleryChange)init;
- (VUWGalleryChange)initWithUpdateType:(int64_t)type entityIdentifier:(id)identifier tag:(id)tag;
- (void)setEntityIdentifier:(id)identifier;
@end

@implementation VUWGalleryChange

- (void)setEntityIdentifier:(id)identifier
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWGalleryChange_entityIdentifier);
  *(&self->super.isa + OBJC_IVAR___VUWGalleryChange_entityIdentifier) = identifier;
  identifierCopy = identifier;
}

- (VUWGalleryChange)initWithUpdateType:(int64_t)type entityIdentifier:(id)identifier tag:(id)tag
{
  identifierCopy = identifier;
  tagCopy = tag;
  v9 = sub_1D2244E50(type, identifierCopy, tag);

  return v9;
}

- (VUWGalleryChange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end