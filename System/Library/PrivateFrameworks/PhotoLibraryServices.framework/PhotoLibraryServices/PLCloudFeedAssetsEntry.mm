@interface PLCloudFeedAssetsEntry
- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)library;
- (void)willSave;
@end

@implementation PLCloudFeedAssetsEntry

- (void)willSave
{
  v7.receiver = self;
  v7.super_class = PLCloudFeedAssetsEntry;
  [(PLCloudFeedEntry *)&v7 willSave];
  managedObjectContext = [(PLCloudFeedAssetsEntry *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    changedValues = [(PLCloudFeedAssetsEntry *)self changedValues];
    v5 = [changedValues objectForKeyedSubscript:@"entryAssets"];

    if (v5)
    {
      delayedSaveActions = [managedObjectContext delayedSaveActions];
      [delayedSaveActions recordCloudFeedAssetsEntryForAssetUpdate:self];
    }
  }
}

- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)library
{
  v8.receiver = self;
  v8.super_class = PLCloudFeedAssetsEntry;
  v4 = [(PLCloudFeedEntry *)&v8 shouldBeRemovedFromPhotoLibrary:library];
  entryType = [(PLCloudFeedAssetsEntry *)self entryType];
  if ((v4 & 1) == 0 && entryType != 4)
  {
    entryAssets = [(PLCloudFeedAssetsEntry *)self entryAssets];
    v4 = [entryAssets count] == 0;
  }

  return v4;
}

@end