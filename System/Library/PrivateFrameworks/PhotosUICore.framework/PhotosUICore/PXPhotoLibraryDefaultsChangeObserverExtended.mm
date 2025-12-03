@interface PXPhotoLibraryDefaultsChangeObserverExtended
- (_TtC12PhotosUICoreP33_25E89F8648EB33DB900A566ECE80EAE544PXPhotoLibraryDefaultsChangeObserverExtended)init;
- (void)photoLibraryLocalDefaults:(id)defaults didChangeValueForKey:(id)key;
@end

@implementation PXPhotoLibraryDefaultsChangeObserverExtended

- (void)photoLibraryLocalDefaults:(id)defaults didChangeValueForKey:(id)key
{
  v5 = sub_1A524C674();
  v7 = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_25E89F8648EB33DB900A566ECE80EAE544PXPhotoLibraryDefaultsChangeObserverExtended_block);
  selfCopy = self;
  v8(v5, v7);
}

- (_TtC12PhotosUICoreP33_25E89F8648EB33DB900A566ECE80EAE544PXPhotoLibraryDefaultsChangeObserverExtended)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end