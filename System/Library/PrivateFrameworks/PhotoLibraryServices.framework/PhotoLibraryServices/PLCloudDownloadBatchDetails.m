@interface PLCloudDownloadBatchDetails
- (void)unionBatchDetails:(id)a3;
@end

@implementation PLCloudDownloadBatchDetails

- (void)unionBatchDetails:(id)a3
{
  v15 = a3;
  if ([(PLCloudDownloadBatchDetails *)self hasResourceChanges])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v15 hasResourceChanges];
  }

  [(PLCloudDownloadBatchDetails *)self setHasResourceChanges:v4];
  if ([(PLCloudDownloadBatchDetails *)self needsWidgetTimelineReload])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v15 needsWidgetTimelineReload];
  }

  [(PLCloudDownloadBatchDetails *)self setNeedsWidgetTimelineReload:v5];
  -[PLCloudDownloadBatchDetails setNumberOfPhotos:](self, "setNumberOfPhotos:", [v15 numberOfPhotos] + -[PLCloudDownloadBatchDetails numberOfPhotos](self, "numberOfPhotos"));
  -[PLCloudDownloadBatchDetails setNumberOfVideos:](self, "setNumberOfVideos:", [v15 numberOfVideos] + -[PLCloudDownloadBatchDetails numberOfVideos](self, "numberOfVideos"));
  v6 = [(PLCloudDownloadBatchDetails *)self cmmUUIDsToNotify];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [v15 cmmUUIDsToNotify];
  v10 = [v8 arrayByAddingObjectsFromArray:v9];
  [(PLCloudDownloadBatchDetails *)self setCmmUUIDsToNotify:v10];

  v11 = [(PLCloudDownloadBatchDetails *)self confirmedResourceIDs];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFD8] set];
  }

  v13 = [v15 confirmedResourceIDs];
  v14 = [v12 setByAddingObjectsFromSet:v13];

  if (!v11)
  {
  }

  [(PLCloudDownloadBatchDetails *)self setConfirmedResourceIDs:v14];
}

@end