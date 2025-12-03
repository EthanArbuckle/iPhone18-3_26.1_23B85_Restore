@interface DownloadAssetProgress
- (DownloadAssetProgress)init;
- (id)_newProgressForMediaSelection:(id)selection;
- (void)setProgress:(double)progress forMediaSelection:(id)selection;
@end

@implementation DownloadAssetProgress

- (DownloadAssetProgress)init
{
  v6.receiver = self;
  v6.super_class = DownloadAssetProgress;
  v2 = [(DownloadAssetProgress *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    mediaSelectionToProgressMap = v2->_mediaSelectionToProgressMap;
    v2->_mediaSelectionToProgressMap = v3;
  }

  return v2;
}

- (void)setProgress:(double)progress forMediaSelection:(id)selection
{
  selectionCopy = selection;
  if (!self->_overallProgress)
  {
    v6 = [NSProgress progressWithTotalUnitCount:100000];
    overallProgress = self->_overallProgress;
    self->_overallProgress = v6;
  }

  mediaSelectionToProgressMap = self->_mediaSelectionToProgressMap;
  v9 = [NSNumber numberWithUnsignedInteger:self->_numMediaSelectionsCompleted];
  v10 = [(NSMapTable *)mediaSelectionToProgressMap objectForKey:v9];

  if (!v10)
  {
    v10 = [(DownloadAssetProgress *)self _newProgressForMediaSelection:selectionCopy];
    -[NSProgress addChild:withPendingUnitCount:](self->_overallProgress, "addChild:withPendingUnitCount:", v10, [v10 totalUnitCount]);
    v11 = self->_mediaSelectionToProgressMap;
    v12 = [NSNumber numberWithUnsignedInteger:self->_numMediaSelectionsCompleted];
    [(NSMapTable *)v11 setObject:v10 forKey:v12];
  }

  if (progress > 1.0)
  {
    progress = 1.0;
  }

  [v10 setCompletedUnitCount:{(progress * objc_msgSend(v10, "totalUnitCount"))}];
}

- (id)_newProgressForMediaSelection:(id)selection
{
  if (self->_numMediaSelectionsCompleted)
  {
    selectionCopy = selection;
    asset = [selectionCopy asset];
    v6 = [asset mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicLegible];

    v7 = [selectionCopy selectedMediaOptionInMediaSelectionGroup:v6];

    if (v7)
    {
      numSubtitleSelectionsToBeDownloaded = [(DownloadAssetProgress *)self numSubtitleSelectionsToBeDownloaded];
      v9 = numSubtitleSelectionsToBeDownloaded < 1;
      v10 = 0x7D0 / numSubtitleSelectionsToBeDownloaded;
    }

    else
    {
      numAudioSelectionsToBeDownloaded = [(DownloadAssetProgress *)self numAudioSelectionsToBeDownloaded];
      v9 = (numAudioSelectionsToBeDownloaded - 1) < 1;
      v10 = 0xBB8 / (numAudioSelectionsToBeDownloaded - 1);
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 95000;
  }

  [NSProgress progressWithTotalUnitCount:v11];
  return objc_claimAutoreleasedReturnValue();
}

@end