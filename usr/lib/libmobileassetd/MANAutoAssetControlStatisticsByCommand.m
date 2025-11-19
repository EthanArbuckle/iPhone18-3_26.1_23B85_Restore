@interface MANAutoAssetControlStatisticsByCommand
- (MANAutoAssetControlStatisticsByCommand)initWithCoder:(id)a3;
- (MANAutoAssetControlStatisticsByCommand)initWithInitialValue:(int64_t)a3;
- (id)copy;
- (int64_t)total;
- (void)encodeWithCoder:(id)a3;
- (void)incrementForClientRequestMessage:(id)a3;
@end

@implementation MANAutoAssetControlStatisticsByCommand

- (MANAutoAssetControlStatisticsByCommand)initWithInitialValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MANAutoAssetControlStatisticsByCommand;
  result = [(MANAutoAssetControlStatisticsByCommand *)&v5 init];
  if (result)
  {
    result->_interestInContent = a3;
    result->_checkForNewer = a3;
    result->_determineIfAvailable = a3;
    result->_currentStatus = a3;
    result->_lockContent = a3;
    result->_mapLockedContent = a3;
    result->_continueLockUsage = a3;
    result->_endLockUsage = a3;
    result->_endPreviousLocks = a3;
    result->_endAllPreviousLocks = a3;
    result->_eliminateAllForSelector = a3;
    result->_eliminateAllForAssetType = a3;
    result->_eliminatePromotedNeverLockedForSelector = a3;
    result->_stageDetermineAllAvailable = a3;
    result->_stageDownloadAll = a3;
    result->_stagePurgeAll = a3;
    result->_stageEraseAll = a3;
    result->_estimateEvictableBytesForSoftwareUpdate = a3;
    result->_suspendForSoftwareUpdate = a3;
    result->_resumeFromSoftwareUpdate = a3;
    result->_suspendResumeStatusForSoftwareUpdate = a3;
  }

  return result;
}

- (MANAutoAssetControlStatisticsByCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MANAutoAssetControlStatisticsByCommand;
  v5 = [(MANAutoAssetControlStatisticsByCommand *)&v7 init];
  if (v5)
  {
    v5->_interestInContent = [v4 decodeInt64ForKey:@"interestInContent"];
    v5->_checkForNewer = [v4 decodeInt64ForKey:@"checkForNewer"];
    v5->_determineIfAvailable = [v4 decodeInt64ForKey:@"determineIfAvailable"];
    v5->_currentStatus = [v4 decodeInt64ForKey:@"currentStatus"];
    v5->_lockContent = [v4 decodeInt64ForKey:@"lockContent"];
    v5->_mapLockedContent = [v4 decodeInt64ForKey:@"mapLockedContent"];
    v5->_continueLockUsage = [v4 decodeInt64ForKey:@"continueLockUsage"];
    v5->_endLockUsage = [v4 decodeInt64ForKey:@"endLockUsage"];
    v5->_endPreviousLocks = [v4 decodeInt64ForKey:@"endPreviousLocks"];
    v5->_endAllPreviousLocks = [v4 decodeInt64ForKey:@"endAllPreviousLocks"];
    v5->_eliminateAllForSelector = [v4 decodeInt64ForKey:@"eliminateAllForSelector"];
    v5->_eliminateAllForAssetType = [v4 decodeInt64ForKey:@"eliminateAllForAssetType"];
    v5->_eliminatePromotedNeverLockedForSelector = [v4 decodeInt64ForKey:@"eliminatePromotedNeverLockedForSelector"];
    v5->_stageDetermineAllAvailable = [v4 decodeInt64ForKey:@"stageDetermineAllAvailable"];
    v5->_stageDownloadAll = [v4 decodeInt64ForKey:@"stageDownloadAll"];
    v5->_stagePurgeAll = [v4 decodeInt64ForKey:@"stagePurgeAll"];
    v5->_stageEraseAll = [v4 decodeInt64ForKey:@"stageEraseAll"];
    v5->_estimateEvictableBytesForSoftwareUpdate = [v4 decodeInt64ForKey:@"estimateEvictableBytesForSoftwareUpdate"];
    v5->_suspendForSoftwareUpdate = [v4 decodeInt64ForKey:@"suspendForSoftwareUpdate"];
    v5->_resumeFromSoftwareUpdate = [v4 decodeInt64ForKey:@"resumeFromSoftwareUpdate"];
    v5->_suspendResumeStatusForSoftwareUpdate = [v4 decodeInt64ForKey:@"suspendResumeStatusForSoftwareUpdate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand interestInContent](self forKey:{"interestInContent"), @"interestInContent"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand checkForNewer](self forKey:{"checkForNewer"), @"checkForNewer"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand determineIfAvailable](self forKey:{"determineIfAvailable"), @"determineIfAvailable"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand currentStatus](self forKey:{"currentStatus"), @"currentStatus"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand lockContent](self forKey:{"lockContent"), @"lockContent"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand mapLockedContent](self forKey:{"mapLockedContent"), @"mapLockedContent"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand continueLockUsage](self forKey:{"continueLockUsage"), @"continueLockUsage"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand endLockUsage](self forKey:{"endLockUsage"), @"endLockUsage"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand endPreviousLocks](self forKey:{"endPreviousLocks"), @"endPreviousLocks"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand endAllPreviousLocks](self forKey:{"endAllPreviousLocks"), @"endAllPreviousLocks"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand eliminateAllForSelector](self forKey:{"eliminateAllForSelector"), @"eliminateAllForSelector"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand eliminateAllForAssetType](self forKey:{"eliminateAllForAssetType"), @"eliminateAllForAssetType"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand eliminatePromotedNeverLockedForSelector](self forKey:{"eliminatePromotedNeverLockedForSelector"), @"eliminatePromotedNeverLockedForSelector"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand stageDetermineAllAvailable](self forKey:{"stageDetermineAllAvailable"), @"stageDetermineAllAvailable"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand stageDownloadAll](self forKey:{"stageDownloadAll"), @"stageDownloadAll"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand stagePurgeAll](self forKey:{"stagePurgeAll"), @"stagePurgeAll"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand stageEraseAll](self forKey:{"stageEraseAll"), @"stageEraseAll"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand estimateEvictableBytesForSoftwareUpdate](self forKey:{"estimateEvictableBytesForSoftwareUpdate"), @"estimateEvictableBytesForSoftwareUpdate"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand suspendForSoftwareUpdate](self forKey:{"suspendForSoftwareUpdate"), @"suspendForSoftwareUpdate"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand resumeFromSoftwareUpdate](self forKey:{"resumeFromSoftwareUpdate"), @"resumeFromSoftwareUpdate"}];
  [v4 encodeInt64:-[MANAutoAssetControlStatisticsByCommand suspendResumeStatusForSoftwareUpdate](self forKey:{"suspendResumeStatusForSoftwareUpdate"), @"suspendResumeStatusForSoftwareUpdate"}];
}

- (void)incrementForClientRequestMessage:(id)a3
{
  v4 = a3;
  if ([SUCore stringIsEqual:"stringIsEqual:to:" to:?])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setInterestInContent:[(MANAutoAssetControlStatisticsByCommand *)self interestInContent]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:CHECK_FOR_NEWER"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setCheckForNewer:[(MANAutoAssetControlStatisticsByCommand *)self checkForNewer]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setDetermineIfAvailable:[(MANAutoAssetControlStatisticsByCommand *)self determineIfAvailable]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:LOCK_CONTENT"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setLockContent:[(MANAutoAssetControlStatisticsByCommand *)self lockContent]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:MAP_LOCKED_CONTENT_TO_EXCLAVE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setMapLockedContent:[(MANAutoAssetControlStatisticsByCommand *)self mapLockedContent]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:CONTINUE_LOCK_USAGE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setContinueLockUsage:[(MANAutoAssetControlStatisticsByCommand *)self continueLockUsage]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:END_LOCK_USAGE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEndLockUsage:[(MANAutoAssetControlStatisticsByCommand *)self endLockUsage]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:END_PREVIOUS_LOCKS"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEndPreviousLocks:[(MANAutoAssetControlStatisticsByCommand *)self endPreviousLocks]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:END_ALL_PREVIOUS_LOCKS"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEndAllPreviousLocks:[(MANAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:ELIMINATE_ALL_FOR_SELECTOR"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEliminateAllForSelector:[(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:ELIMINATE_ALL_FOR_ASSET_TYPE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEliminateAllForAssetType:[(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO:ELIMINATE_PROMOTED_NEVER_LOCKED_FOR_SELECTOR"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEliminatePromotedNeverLockedForSelector:[(MANAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector]+ 1];
  }

  else if (([SUCore stringIsEqual:v4 to:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"]& 1) != 0 || ([SUCore stringIsEqual:v4 to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE_FOR_UPDATE"]& 1) != 0 || [SUCore stringIsEqual:v4 to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setStageDetermineAllAvailable:[(MANAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable]+ 1];
  }

  else if (([SUCore stringIsEqual:v4 to:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS"]& 1) != 0 || [SUCore stringIsEqual:v4 to:@"MA-AUTO-STAGE:DOWNLOAD_ALL"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setStageDownloadAll:[(MANAutoAssetControlStatisticsByCommand *)self stageDownloadAll]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO-STAGE:PURGE_ALL"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setStagePurgeAll:[(MANAutoAssetControlStatisticsByCommand *)self stagePurgeAll]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO-STAGE:ERASE_ALL"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setStageEraseAll:[(MANAutoAssetControlStatisticsByCommand *)self stageEraseAll]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO-SUSPEND-RESUME-SU:EVICTABLE_BYTES"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEstimateEvictableBytesForSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO-SUSPEND-RESUME-SU:SUSPEND"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setSuspendForSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO-SUSPEND-RESUME-SU:RESUME"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setResumeFromSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate]+ 1];
  }

  else if ([SUCore stringIsEqual:v4 to:@"MA-AUTO-SUSPEND-RESUME-SU:STATUS"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setSuspendResumeStatusForSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate]+ 1];
  }
}

- (id)copy
{
  v3 = objc_alloc_init(MANAutoAssetControlStatisticsByCommand);
  [(MANAutoAssetControlStatisticsByCommand *)v3 setInterestInContent:[(MANAutoAssetControlStatisticsByCommand *)self interestInContent]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setCheckForNewer:[(MANAutoAssetControlStatisticsByCommand *)self checkForNewer]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setDetermineIfAvailable:[(MANAutoAssetControlStatisticsByCommand *)self determineIfAvailable]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setCurrentStatus:[(MANAutoAssetControlStatisticsByCommand *)self currentStatus]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setLockContent:[(MANAutoAssetControlStatisticsByCommand *)self lockContent]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setMapLockedContent:[(MANAutoAssetControlStatisticsByCommand *)self mapLockedContent]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setContinueLockUsage:[(MANAutoAssetControlStatisticsByCommand *)self continueLockUsage]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setEndLockUsage:[(MANAutoAssetControlStatisticsByCommand *)self endLockUsage]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setEndPreviousLocks:[(MANAutoAssetControlStatisticsByCommand *)self endPreviousLocks]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setEndAllPreviousLocks:[(MANAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setEliminateAllForSelector:[(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setEliminateAllForAssetType:[(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setEliminatePromotedNeverLockedForSelector:[(MANAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setStageDetermineAllAvailable:[(MANAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setStageDownloadAll:[(MANAutoAssetControlStatisticsByCommand *)self stageDownloadAll]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setStagePurgeAll:[(MANAutoAssetControlStatisticsByCommand *)self stagePurgeAll]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setStageEraseAll:[(MANAutoAssetControlStatisticsByCommand *)self stageEraseAll]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setEstimateEvictableBytesForSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setSuspendForSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setResumeFromSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate]];
  [(MANAutoAssetControlStatisticsByCommand *)v3 setSuspendResumeStatusForSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate]];
  return v3;
}

- (int64_t)total
{
  v3 = [(MANAutoAssetControlStatisticsByCommand *)self interestInContent];
  v4 = [(MANAutoAssetControlStatisticsByCommand *)self checkForNewer]+ v3;
  v5 = [(MANAutoAssetControlStatisticsByCommand *)self determineIfAvailable];
  v6 = [(MANAutoAssetControlStatisticsByCommand *)self currentStatus]+ v5 + v4;
  v7 = [(MANAutoAssetControlStatisticsByCommand *)self lockContent];
  v8 = [(MANAutoAssetControlStatisticsByCommand *)self mapLockedContent]+ v7;
  v9 = &v6[[(MANAutoAssetControlStatisticsByCommand *)self continueLockUsage]+ v8];
  v10 = [(MANAutoAssetControlStatisticsByCommand *)self endLockUsage];
  v11 = [(MANAutoAssetControlStatisticsByCommand *)self endPreviousLocks]+ v10;
  v12 = [(MANAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks]+ v11;
  v13 = &v9[[(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector]+ v12];
  v14 = [(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType];
  v15 = [(MANAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector]+ v14;
  v16 = [(MANAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable]+ v15;
  v17 = [(MANAutoAssetControlStatisticsByCommand *)self stageDownloadAll]+ v16;
  v18 = &v13[[(MANAutoAssetControlStatisticsByCommand *)self stagePurgeAll]+ v17];
  v19 = [(MANAutoAssetControlStatisticsByCommand *)self stageEraseAll];
  v20 = [(MANAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate]+ v19;
  v21 = [(MANAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate]+ v20;
  v22 = [(MANAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate]+ v21;
  return &v18[[(MANAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate]+ v22];
}

@end