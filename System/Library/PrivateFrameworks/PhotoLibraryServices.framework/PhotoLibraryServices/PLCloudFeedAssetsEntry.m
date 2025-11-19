@interface PLCloudFeedAssetsEntry
- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)a3;
- (void)willSave;
@end

@implementation PLCloudFeedAssetsEntry

- (void)willSave
{
  v7.receiver = self;
  v7.super_class = PLCloudFeedAssetsEntry;
  [(PLCloudFeedEntry *)&v7 willSave];
  v3 = [(PLCloudFeedAssetsEntry *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PLCloudFeedAssetsEntry *)self changedValues];
    v5 = [v4 objectForKeyedSubscript:@"entryAssets"];

    if (v5)
    {
      v6 = [v3 delayedSaveActions];
      [v6 recordCloudFeedAssetsEntryForAssetUpdate:self];
    }
  }
}

- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)a3
{
  v8.receiver = self;
  v8.super_class = PLCloudFeedAssetsEntry;
  v4 = [(PLCloudFeedEntry *)&v8 shouldBeRemovedFromPhotoLibrary:a3];
  v5 = [(PLCloudFeedAssetsEntry *)self entryType];
  if ((v4 & 1) == 0 && v5 != 4)
  {
    v6 = [(PLCloudFeedAssetsEntry *)self entryAssets];
    v4 = [v6 count] == 0;
  }

  return v4;
}

@end