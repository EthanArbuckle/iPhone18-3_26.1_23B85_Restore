@interface PLCloudFeedCommentsEntry
- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)library;
- (void)willSave;
@end

@implementation PLCloudFeedCommentsEntry

- (void)willSave
{
  v8.receiver = self;
  v8.super_class = PLCloudFeedCommentsEntry;
  [(PLCloudFeedEntry *)&v8 willSave];
  managedObjectContext = [(PLCloudFeedCommentsEntry *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    changedValues = [(PLCloudFeedCommentsEntry *)self changedValues];
    v5 = [changedValues objectForKeyedSubscript:@"entryComments"];
    if (v5)
    {
    }

    else
    {
      v6 = [changedValues objectForKeyedSubscript:@"entryLikeComments"];

      if (!v6)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordCloudFeedCommentsEntryForCommentUpdate:self];

    goto LABEL_6;
  }

LABEL_7:
}

- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)library
{
  v8.receiver = self;
  v8.super_class = PLCloudFeedCommentsEntry;
  if ([(PLCloudFeedEntry *)&v8 shouldBeRemovedFromPhotoLibrary:library])
  {
    return 1;
  }

  entryComments = [(PLCloudFeedCommentsEntry *)self entryComments];
  if ([entryComments count])
  {
    v4 = 0;
  }

  else
  {
    entryLikeComments = [(PLCloudFeedCommentsEntry *)self entryLikeComments];
    v4 = [entryLikeComments count] == 0;
  }

  return v4;
}

@end