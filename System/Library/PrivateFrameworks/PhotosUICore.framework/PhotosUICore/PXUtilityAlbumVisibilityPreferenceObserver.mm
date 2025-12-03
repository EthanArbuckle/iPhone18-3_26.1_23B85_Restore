@interface PXUtilityAlbumVisibilityPreferenceObserver
- (_TtC12PhotosUICore42PXUtilityAlbumVisibilityPreferenceObserver)init;
- (void)dealloc;
- (void)preferencesDidChange;
@end

@implementation PXUtilityAlbumVisibilityPreferenceObserver

- (void)dealloc
{
  selfCopy = self;
  PXUnregisterPreferencesObserver(selfCopy);
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for PXUtilityAlbumVisibilityPreferenceObserver();
  [(PXUtilityAlbumVisibilityPreferenceObserver *)&v3 dealloc];
}

- (_TtC12PhotosUICore42PXUtilityAlbumVisibilityPreferenceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)preferencesDidChange
{
  selfCopy = self;
  IsHiddenAlbumVisible = PXPreferencesIsHiddenAlbumVisible();
  v3 = MEMORY[0x1E69E7D40];
  if (IsHiddenAlbumVisible != ((*((*MEMORY[0x1E69E7D40] & selfCopy->super.isa) + 0x88))() & 1))
  {
    (*((*v3 & selfCopy->super.isa) + 0x90))(IsHiddenAlbumVisible);
  }

  IsRecentlyViewedAndSharedAlbumVisible = PXPreferencesIsRecentlyViewedAndSharedAlbumVisible();
  if (IsRecentlyViewedAndSharedAlbumVisible != ((*((*v3 & selfCopy->super.isa) + 0xB8))() & 1))
  {
    (*((*v3 & selfCopy->super.isa) + 0xC0))(IsRecentlyViewedAndSharedAlbumVisible);
  }
}

@end