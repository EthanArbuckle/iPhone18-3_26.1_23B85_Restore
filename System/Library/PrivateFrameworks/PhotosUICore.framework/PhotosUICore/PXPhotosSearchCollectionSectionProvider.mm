@interface PXPhotosSearchCollectionSectionProvider
- (BOOL)isDisabled;
- (PXPhotosSearchCollectionSectionProvider)init;
- (void)setIsDisabled:(BOOL)disabled;
@end

@implementation PXPhotosSearchCollectionSectionProvider

- (BOOL)isDisabled
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsDisabled:(BOOL)disabled
{
  v5 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = disabled;
}

- (PXPhotosSearchCollectionSectionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end