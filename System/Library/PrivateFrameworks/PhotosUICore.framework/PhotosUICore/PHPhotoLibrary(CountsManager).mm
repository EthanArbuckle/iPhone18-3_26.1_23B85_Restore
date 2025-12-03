@interface PHPhotoLibrary(CountsManager)
- (PXSharedLibrarySharingSuggestionsCountsManager)px_sharedLibrarySharingSuggestionsCountsManager;
@end

@implementation PHPhotoLibrary(CountsManager)

- (PXSharedLibrarySharingSuggestionsCountsManager)px_sharedLibrarySharingSuggestionsCountsManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, sel_px_sharedLibrarySharingSuggestionsCountsManager);
  if (!v2)
  {
    v2 = [[PXSharedLibrarySharingSuggestionsCountsManager alloc] initWithPhotoLibrary:selfCopy];
  }

  objc_setAssociatedObject(selfCopy, sel_px_sharedLibrarySharingSuggestionsCountsManager, v2, 0x301);
  objc_sync_exit(selfCopy);

  return v2;
}

@end