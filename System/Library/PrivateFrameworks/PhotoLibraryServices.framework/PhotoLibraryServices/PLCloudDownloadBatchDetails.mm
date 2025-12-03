@interface PLCloudDownloadBatchDetails
- (void)unionBatchDetails:(id)details;
@end

@implementation PLCloudDownloadBatchDetails

- (void)unionBatchDetails:(id)details
{
  detailsCopy = details;
  if ([(PLCloudDownloadBatchDetails *)self hasResourceChanges])
  {
    hasResourceChanges = 1;
  }

  else
  {
    hasResourceChanges = [detailsCopy hasResourceChanges];
  }

  [(PLCloudDownloadBatchDetails *)self setHasResourceChanges:hasResourceChanges];
  if ([(PLCloudDownloadBatchDetails *)self needsWidgetTimelineReload])
  {
    needsWidgetTimelineReload = 1;
  }

  else
  {
    needsWidgetTimelineReload = [detailsCopy needsWidgetTimelineReload];
  }

  [(PLCloudDownloadBatchDetails *)self setNeedsWidgetTimelineReload:needsWidgetTimelineReload];
  -[PLCloudDownloadBatchDetails setNumberOfPhotos:](self, "setNumberOfPhotos:", [detailsCopy numberOfPhotos] + -[PLCloudDownloadBatchDetails numberOfPhotos](self, "numberOfPhotos"));
  -[PLCloudDownloadBatchDetails setNumberOfVideos:](self, "setNumberOfVideos:", [detailsCopy numberOfVideos] + -[PLCloudDownloadBatchDetails numberOfVideos](self, "numberOfVideos"));
  cmmUUIDsToNotify = [(PLCloudDownloadBatchDetails *)self cmmUUIDsToNotify];
  v7 = cmmUUIDsToNotify;
  if (cmmUUIDsToNotify)
  {
    v8 = cmmUUIDsToNotify;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  cmmUUIDsToNotify2 = [detailsCopy cmmUUIDsToNotify];
  v10 = [v8 arrayByAddingObjectsFromArray:cmmUUIDsToNotify2];
  [(PLCloudDownloadBatchDetails *)self setCmmUUIDsToNotify:v10];

  confirmedResourceIDs = [(PLCloudDownloadBatchDetails *)self confirmedResourceIDs];
  v12 = confirmedResourceIDs;
  if (!confirmedResourceIDs)
  {
    v12 = [MEMORY[0x1E695DFD8] set];
  }

  confirmedResourceIDs2 = [detailsCopy confirmedResourceIDs];
  v14 = [v12 setByAddingObjectsFromSet:confirmedResourceIDs2];

  if (!confirmedResourceIDs)
  {
  }

  [(PLCloudDownloadBatchDetails *)self setConfirmedResourceIDs:v14];
}

@end