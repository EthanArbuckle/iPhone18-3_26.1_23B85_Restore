@interface DownloadAssetProgress
- (DownloadAssetProgress)init;
- (id)_newProgressForMediaSelection:(id)a3;
- (void)setProgress:(double)a3 forMediaSelection:(id)a4;
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

- (void)setProgress:(double)a3 forMediaSelection:(id)a4
{
  v13 = a4;
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
    v10 = [(DownloadAssetProgress *)self _newProgressForMediaSelection:v13];
    -[NSProgress addChild:withPendingUnitCount:](self->_overallProgress, "addChild:withPendingUnitCount:", v10, [v10 totalUnitCount]);
    v11 = self->_mediaSelectionToProgressMap;
    v12 = [NSNumber numberWithUnsignedInteger:self->_numMediaSelectionsCompleted];
    [(NSMapTable *)v11 setObject:v10 forKey:v12];
  }

  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  [v10 setCompletedUnitCount:{(a3 * objc_msgSend(v10, "totalUnitCount"))}];
}

- (id)_newProgressForMediaSelection:(id)a3
{
  if (self->_numMediaSelectionsCompleted)
  {
    v4 = a3;
    v5 = [v4 asset];
    v6 = [v5 mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicLegible];

    v7 = [v4 selectedMediaOptionInMediaSelectionGroup:v6];

    if (v7)
    {
      v8 = [(DownloadAssetProgress *)self numSubtitleSelectionsToBeDownloaded];
      v9 = v8 < 1;
      v10 = 0x7D0 / v8;
    }

    else
    {
      v12 = [(DownloadAssetProgress *)self numAudioSelectionsToBeDownloaded];
      v9 = (v12 - 1) < 1;
      v10 = 0xBB8 / (v12 - 1);
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