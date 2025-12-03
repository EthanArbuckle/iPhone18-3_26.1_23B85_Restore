@interface SocialGroupCropManager.ChangeObserverDelegateProxy
- (_TtCC12PhotosUICore22SocialGroupCropManagerP33_01B9238EFECB191AB38119A90AF4F50627ChangeObserverDelegateProxy)init;
- (id)prepareForPhotoLibraryChange:(id)change;
@end

@implementation SocialGroupCropManager.ChangeObserverDelegateProxy

- (id)prepareForPhotoLibraryChange:(id)change
{
  if (swift_weakLoadStrong())
  {
    changeCopy = change;
    selfCopy = self;
    sub_1A3DD6228(changeCopy);
  }

  return 0;
}

- (_TtCC12PhotosUICore22SocialGroupCropManagerP33_01B9238EFECB191AB38119A90AF4F50627ChangeObserverDelegateProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end