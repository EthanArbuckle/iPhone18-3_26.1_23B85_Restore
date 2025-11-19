@interface PUIMediaLibraryStorageController
+ (PUIMediaLibraryStorageController)shared;
- (BOOL)shouldDisplayStorageCleanupTip;
- (int64_t)observeStorageCleanupChange:(id)a3;
- (void)mediaLibraryDidChange;
- (void)refreshDownloadedAssets;
- (void)removeStorageCleanupChangeObserverWith:(int64_t)a3;
- (void)setShouldDisplayStorageCleanupTip:(BOOL)a3;
@end

@implementation PUIMediaLibraryStorageController

+ (PUIMediaLibraryStorageController)shared
{
  if (qword_2811FDF60 != -1)
  {
    swift_once();
  }

  v3 = qword_2811FDF68;

  return v3;
}

- (BOOL)shouldDisplayStorageCleanupTip
{
  swift_beginAccess();
  v3 = self;

  sub_21B4C7918();

  return v5;
}

- (void)setShouldDisplayStorageCleanupTip:(BOOL)a3
{
  swift_beginAccess();
  v4 = self;

  sub_21B4C7918();

  sub_21B4C7928();

  sub_21B4B48FC(v5);
}

- (int64_t)observeStorageCleanupChange:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E28);
  sub_21B4C61B8();

  return 0;
}

- (void)removeStorageCleanupChangeObserverWith:(int64_t)a3
{
  v3 = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88E28);
  sub_21B4C61B8();
}

- (void)mediaLibraryDidChange
{
  v2 = self;
  MediaLibraryStorageController.refreshDownloadedAssets()();
  sub_21B4B5698(sub_21B4B759C, &block_descriptor_41);
}

- (void)refreshDownloadedAssets
{
  v2 = self;
  MediaLibraryStorageController.refreshDownloadedAssets()();
}

@end