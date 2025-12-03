@interface VUWGalleryProgressStatus
- (VUWGalleryProgressStatus)init;
- (VUWGalleryProgressStatus)initWithProgressFraction:(float)fraction;
@end

@implementation VUWGalleryProgressStatus

- (VUWGalleryProgressStatus)initWithProgressFraction:(float)fraction
{
  *(&self->super.isa + OBJC_IVAR___VUWGalleryProgressStatus_progressFraction) = fraction;
  v4.receiver = self;
  v4.super_class = VUWGalleryProgressStatus;
  return [(VUWGalleryProgressStatus *)&v4 init];
}

- (VUWGalleryProgressStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end