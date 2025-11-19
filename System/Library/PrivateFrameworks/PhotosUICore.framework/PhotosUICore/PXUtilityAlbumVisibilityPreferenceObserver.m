@interface PXUtilityAlbumVisibilityPreferenceObserver
- (_TtC12PhotosUICore42PXUtilityAlbumVisibilityPreferenceObserver)init;
- (void)dealloc;
- (void)preferencesDidChange;
@end

@implementation PXUtilityAlbumVisibilityPreferenceObserver

- (void)dealloc
{
  v2 = self;
  PXUnregisterPreferencesObserver(v2);
  v3.receiver = v2;
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
  v5 = self;
  IsHiddenAlbumVisible = PXPreferencesIsHiddenAlbumVisible();
  v3 = MEMORY[0x1E69E7D40];
  if (IsHiddenAlbumVisible != ((*((*MEMORY[0x1E69E7D40] & v5->super.isa) + 0x88))() & 1))
  {
    (*((*v3 & v5->super.isa) + 0x90))(IsHiddenAlbumVisible);
  }

  IsRecentlyViewedAndSharedAlbumVisible = PXPreferencesIsRecentlyViewedAndSharedAlbumVisible();
  if (IsRecentlyViewedAndSharedAlbumVisible != ((*((*v3 & v5->super.isa) + 0xB8))() & 1))
  {
    (*((*v3 & v5->super.isa) + 0xC0))(IsRecentlyViewedAndSharedAlbumVisible);
  }
}

@end