@interface MANAutoAssetControlStatisticsByCommand
- (MANAutoAssetControlStatisticsByCommand)initWithCoder:(id)coder;
- (MANAutoAssetControlStatisticsByCommand)initWithInitialValue:(int64_t)value;
- (id)copy;
- (int64_t)total;
- (void)encodeWithCoder:(id)coder;
- (void)incrementForClientRequestMessage:(id)message;
@end

@implementation MANAutoAssetControlStatisticsByCommand

- (MANAutoAssetControlStatisticsByCommand)initWithInitialValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = MANAutoAssetControlStatisticsByCommand;
  result = [(MANAutoAssetControlStatisticsByCommand *)&v5 init];
  if (result)
  {
    result->_interestInContent = value;
    result->_checkForNewer = value;
    result->_determineIfAvailable = value;
    result->_currentStatus = value;
    result->_lockContent = value;
    result->_mapLockedContent = value;
    result->_continueLockUsage = value;
    result->_endLockUsage = value;
    result->_endPreviousLocks = value;
    result->_endAllPreviousLocks = value;
    result->_eliminateAllForSelector = value;
    result->_eliminateAllForAssetType = value;
    result->_eliminatePromotedNeverLockedForSelector = value;
    result->_stageDetermineAllAvailable = value;
    result->_stageDownloadAll = value;
    result->_stagePurgeAll = value;
    result->_stageEraseAll = value;
    result->_estimateEvictableBytesForSoftwareUpdate = value;
    result->_suspendForSoftwareUpdate = value;
    result->_resumeFromSoftwareUpdate = value;
    result->_suspendResumeStatusForSoftwareUpdate = value;
  }

  return result;
}

- (MANAutoAssetControlStatisticsByCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MANAutoAssetControlStatisticsByCommand;
  v5 = [(MANAutoAssetControlStatisticsByCommand *)&v7 init];
  if (v5)
  {
    v5->_interestInContent = [coderCopy decodeInt64ForKey:@"interestInContent"];
    v5->_checkForNewer = [coderCopy decodeInt64ForKey:@"checkForNewer"];
    v5->_determineIfAvailable = [coderCopy decodeInt64ForKey:@"determineIfAvailable"];
    v5->_currentStatus = [coderCopy decodeInt64ForKey:@"currentStatus"];
    v5->_lockContent = [coderCopy decodeInt64ForKey:@"lockContent"];
    v5->_mapLockedContent = [coderCopy decodeInt64ForKey:@"mapLockedContent"];
    v5->_continueLockUsage = [coderCopy decodeInt64ForKey:@"continueLockUsage"];
    v5->_endLockUsage = [coderCopy decodeInt64ForKey:@"endLockUsage"];
    v5->_endPreviousLocks = [coderCopy decodeInt64ForKey:@"endPreviousLocks"];
    v5->_endAllPreviousLocks = [coderCopy decodeInt64ForKey:@"endAllPreviousLocks"];
    v5->_eliminateAllForSelector = [coderCopy decodeInt64ForKey:@"eliminateAllForSelector"];
    v5->_eliminateAllForAssetType = [coderCopy decodeInt64ForKey:@"eliminateAllForAssetType"];
    v5->_eliminatePromotedNeverLockedForSelector = [coderCopy decodeInt64ForKey:@"eliminatePromotedNeverLockedForSelector"];
    v5->_stageDetermineAllAvailable = [coderCopy decodeInt64ForKey:@"stageDetermineAllAvailable"];
    v5->_stageDownloadAll = [coderCopy decodeInt64ForKey:@"stageDownloadAll"];
    v5->_stagePurgeAll = [coderCopy decodeInt64ForKey:@"stagePurgeAll"];
    v5->_stageEraseAll = [coderCopy decodeInt64ForKey:@"stageEraseAll"];
    v5->_estimateEvictableBytesForSoftwareUpdate = [coderCopy decodeInt64ForKey:@"estimateEvictableBytesForSoftwareUpdate"];
    v5->_suspendForSoftwareUpdate = [coderCopy decodeInt64ForKey:@"suspendForSoftwareUpdate"];
    v5->_resumeFromSoftwareUpdate = [coderCopy decodeInt64ForKey:@"resumeFromSoftwareUpdate"];
    v5->_suspendResumeStatusForSoftwareUpdate = [coderCopy decodeInt64ForKey:@"suspendResumeStatusForSoftwareUpdate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand interestInContent](self forKey:{"interestInContent"), @"interestInContent"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand checkForNewer](self forKey:{"checkForNewer"), @"checkForNewer"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand determineIfAvailable](self forKey:{"determineIfAvailable"), @"determineIfAvailable"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand currentStatus](self forKey:{"currentStatus"), @"currentStatus"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand lockContent](self forKey:{"lockContent"), @"lockContent"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand mapLockedContent](self forKey:{"mapLockedContent"), @"mapLockedContent"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand continueLockUsage](self forKey:{"continueLockUsage"), @"continueLockUsage"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand endLockUsage](self forKey:{"endLockUsage"), @"endLockUsage"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand endPreviousLocks](self forKey:{"endPreviousLocks"), @"endPreviousLocks"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand endAllPreviousLocks](self forKey:{"endAllPreviousLocks"), @"endAllPreviousLocks"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand eliminateAllForSelector](self forKey:{"eliminateAllForSelector"), @"eliminateAllForSelector"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand eliminateAllForAssetType](self forKey:{"eliminateAllForAssetType"), @"eliminateAllForAssetType"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand eliminatePromotedNeverLockedForSelector](self forKey:{"eliminatePromotedNeverLockedForSelector"), @"eliminatePromotedNeverLockedForSelector"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand stageDetermineAllAvailable](self forKey:{"stageDetermineAllAvailable"), @"stageDetermineAllAvailable"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand stageDownloadAll](self forKey:{"stageDownloadAll"), @"stageDownloadAll"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand stagePurgeAll](self forKey:{"stagePurgeAll"), @"stagePurgeAll"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand stageEraseAll](self forKey:{"stageEraseAll"), @"stageEraseAll"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand estimateEvictableBytesForSoftwareUpdate](self forKey:{"estimateEvictableBytesForSoftwareUpdate"), @"estimateEvictableBytesForSoftwareUpdate"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand suspendForSoftwareUpdate](self forKey:{"suspendForSoftwareUpdate"), @"suspendForSoftwareUpdate"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand resumeFromSoftwareUpdate](self forKey:{"resumeFromSoftwareUpdate"), @"resumeFromSoftwareUpdate"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatisticsByCommand suspendResumeStatusForSoftwareUpdate](self forKey:{"suspendResumeStatusForSoftwareUpdate"), @"suspendResumeStatusForSoftwareUpdate"}];
}

- (void)incrementForClientRequestMessage:(id)message
{
  messageCopy = message;
  if ([SUCore stringIsEqual:"stringIsEqual:to:" to:?])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setInterestInContent:[(MANAutoAssetControlStatisticsByCommand *)self interestInContent]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:CHECK_FOR_NEWER"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setCheckForNewer:[(MANAutoAssetControlStatisticsByCommand *)self checkForNewer]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:DETERMINE_IF_AVAILABLE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setDetermineIfAvailable:[(MANAutoAssetControlStatisticsByCommand *)self determineIfAvailable]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:LOCK_CONTENT"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setLockContent:[(MANAutoAssetControlStatisticsByCommand *)self lockContent]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:MAP_LOCKED_CONTENT_TO_EXCLAVE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setMapLockedContent:[(MANAutoAssetControlStatisticsByCommand *)self mapLockedContent]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:CONTINUE_LOCK_USAGE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setContinueLockUsage:[(MANAutoAssetControlStatisticsByCommand *)self continueLockUsage]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:END_LOCK_USAGE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEndLockUsage:[(MANAutoAssetControlStatisticsByCommand *)self endLockUsage]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:END_PREVIOUS_LOCKS"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEndPreviousLocks:[(MANAutoAssetControlStatisticsByCommand *)self endPreviousLocks]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:END_ALL_PREVIOUS_LOCKS"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEndAllPreviousLocks:[(MANAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:ELIMINATE_ALL_FOR_SELECTOR"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEliminateAllForSelector:[(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:ELIMINATE_ALL_FOR_ASSET_TYPE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEliminateAllForAssetType:[(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO:ELIMINATE_PROMOTED_NEVER_LOCKED_FOR_SELECTOR"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEliminatePromotedNeverLockedForSelector:[(MANAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector]+ 1];
  }

  else if (([SUCore stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:DETERMINE_GROUPS_AVAILABLE_FOR_UPDATE"]& 1) != 0 || ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE_FOR_UPDATE"]& 1) != 0 || [SUCore stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:DETERMINE_ALL_AVAILABLE"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setStageDetermineAllAvailable:[(MANAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable]+ 1];
  }

  else if (([SUCore stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:DOWNLOAD_GROUPS"]& 1) != 0 || [SUCore stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:DOWNLOAD_ALL"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setStageDownloadAll:[(MANAutoAssetControlStatisticsByCommand *)self stageDownloadAll]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:PURGE_ALL"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setStagePurgeAll:[(MANAutoAssetControlStatisticsByCommand *)self stagePurgeAll]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO-STAGE:ERASE_ALL"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setStageEraseAll:[(MANAutoAssetControlStatisticsByCommand *)self stageEraseAll]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO-SUSPEND-RESUME-SU:EVICTABLE_BYTES"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setEstimateEvictableBytesForSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO-SUSPEND-RESUME-SU:SUSPEND"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setSuspendForSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO-SUSPEND-RESUME-SU:RESUME"])
  {
    [(MANAutoAssetControlStatisticsByCommand *)self setResumeFromSoftwareUpdate:[(MANAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate]+ 1];
  }

  else if ([SUCore stringIsEqual:messageCopy to:@"MA-AUTO-SUSPEND-RESUME-SU:STATUS"])
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
  interestInContent = [(MANAutoAssetControlStatisticsByCommand *)self interestInContent];
  v4 = [(MANAutoAssetControlStatisticsByCommand *)self checkForNewer]+ interestInContent;
  determineIfAvailable = [(MANAutoAssetControlStatisticsByCommand *)self determineIfAvailable];
  v6 = [(MANAutoAssetControlStatisticsByCommand *)self currentStatus]+ determineIfAvailable + v4;
  lockContent = [(MANAutoAssetControlStatisticsByCommand *)self lockContent];
  v8 = [(MANAutoAssetControlStatisticsByCommand *)self mapLockedContent]+ lockContent;
  v9 = &v6[[(MANAutoAssetControlStatisticsByCommand *)self continueLockUsage]+ v8];
  endLockUsage = [(MANAutoAssetControlStatisticsByCommand *)self endLockUsage];
  v11 = [(MANAutoAssetControlStatisticsByCommand *)self endPreviousLocks]+ endLockUsage;
  v12 = [(MANAutoAssetControlStatisticsByCommand *)self endAllPreviousLocks]+ v11;
  v13 = &v9[[(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForSelector]+ v12];
  eliminateAllForAssetType = [(MANAutoAssetControlStatisticsByCommand *)self eliminateAllForAssetType];
  v15 = [(MANAutoAssetControlStatisticsByCommand *)self eliminatePromotedNeverLockedForSelector]+ eliminateAllForAssetType;
  v16 = [(MANAutoAssetControlStatisticsByCommand *)self stageDetermineAllAvailable]+ v15;
  v17 = [(MANAutoAssetControlStatisticsByCommand *)self stageDownloadAll]+ v16;
  v18 = &v13[[(MANAutoAssetControlStatisticsByCommand *)self stagePurgeAll]+ v17];
  stageEraseAll = [(MANAutoAssetControlStatisticsByCommand *)self stageEraseAll];
  v20 = [(MANAutoAssetControlStatisticsByCommand *)self estimateEvictableBytesForSoftwareUpdate]+ stageEraseAll;
  v21 = [(MANAutoAssetControlStatisticsByCommand *)self suspendForSoftwareUpdate]+ v20;
  v22 = [(MANAutoAssetControlStatisticsByCommand *)self resumeFromSoftwareUpdate]+ v21;
  return &v18[[(MANAutoAssetControlStatisticsByCommand *)self suspendResumeStatusForSoftwareUpdate]+ v22];
}

@end