@interface PLPublishingAgent
+ (BOOL)canUploadHDVideoOverCellular;
+ (id)publishingAgentForBundleNamed:(id)a3 toPublishMedia:(id)a4;
- (BOOL)allowsCellularAccessForRequests;
- (BOOL)isVideoMedia;
- (PLPublishingAgent)initWithMedia:(id)a3;
- (id)tellAFriendSubject;
- (int)_remakerModeForSelectedOption;
- (void)_agentIsReadyToPublish:(id)a3;
- (void)_cancelRemaking:(id)a3;
- (void)_networkReachabilityDidChange:(id)a3;
- (void)_remakerDidFinish:(id)a3;
- (void)_setApproximateVideoUploadSizes;
- (void)_setUpPublishingParams;
- (void)_startNetworkObservation;
- (void)_stopNetworkObservation;
- (void)_transcodeVideo:(id)a3;
- (void)_updateStatisticsFromSnapshots;
- (void)cancelButtonClicked;
- (void)dealloc;
- (void)dismiss;
- (void)doneButtonClicked;
- (void)presentModalSheetInViewController:(id)a3;
- (void)setMediaData:(id)a3;
- (void)setMediaPath:(id)a3;
- (void)setPublishing:(BOOL)a3;
- (void)setRemakerMode:(int)a3;
- (void)setUserInfo:(id)a3;
- (void)showAlertWithError:(id)a3;
- (void)snapshot;
- (void)videoRemakerDidBeginRemaking:(id)a3;
- (void)videoRemakerDidEndRemaking:(id)a3 temporaryPath:(id)a4;
@end

@implementation PLPublishingAgent

- (void)showAlertWithError:(id)a3
{
  v5 = [(PLPublishingAgent *)self mediaTitle];
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      PLLocalizedFrameworkString();
      v18 = v6;
      v7 = PFStringWithValidatedFormat();
    }

    else
    {
      [(PLPublishingAgent *)self isVideoMedia];
      v7 = PLLocalizedFrameworkString();
    }

    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:0 preferredStyle:{1, v18}];
    v10 = MEMORY[0x277D750F8];
    v11 = PLLocalizedFrameworkString();
    v12 = v10;
    v13 = 1;
    v14 = 0;
    goto LABEL_13;
  }

  if (v5)
  {
    PLLocalizedFrameworkString();
    v8 = PFStringWithValidatedFormat();
  }

  else
  {
    [(PLPublishingAgent *)self isVideoMedia];
    v8 = PLLocalizedFrameworkString();
  }

  v15 = v8;
  PLLocalizedFrameworkString();
  v19 = [(PLPublishingAgent *)self serviceName];
  v16 = PFStringWithValidatedFormat();
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v15 message:0 preferredStyle:{1, v19}];
  [v9 addAction:{objc_msgSend(MEMORY[0x277D750F8], "actionWithTitle:style:handler:", PLLocalizedFrameworkString(), 1, 0)}];
  if ([(PLPublishingAgent *)self allowsViewingOnHost])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__PLPublishingAgent_showAlertWithError___block_invoke;
    v21[3] = &unk_2782A1C80;
    v21[4] = self;
    [v9 addAction:{objc_msgSend(MEMORY[0x277D750F8], "actionWithTitle:style:handler:", v16, 0, v21)}];
  }

  if ([(PLPublishingAgent *)self allowsTellingFriend])
  {
    v17 = MEMORY[0x277D750F8];
    v11 = PLLocalizedFrameworkString();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __40__PLPublishingAgent_showAlertWithError___block_invoke_2;
    v20[3] = &unk_2782A1C80;
    v20[4] = self;
    v14 = v20;
    v12 = v17;
    v13 = 0;
LABEL_13:
    [v9 addAction:{objc_msgSend(v12, "actionWithTitle:style:handler:", v11, v13, v14)}];
  }

  [objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
}

uint64_t __40__PLPublishingAgent_showAlertWithError___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaURL];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:v1];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];

  return [v3 openSensitiveURL:v2 withOptions:0];
}

uint64_t __40__PLPublishingAgent_showAlertWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tellAFriendBody];
  if (!v2)
  {
    v2 = [*(a1 + 32) tellAFriendURL];
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) tellAFriendSubject];
  v5 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:{objc_msgSend(MEMORY[0x277CCA900], "URLFragmentAllowedCharacterSet")}];
  v6 = [v3 stringWithFormat:@"mailto:?subject=%@&body=%@", v5, objc_msgSend(v2, "stringByAddingPercentEncodingWithAllowedCharacters:", objc_msgSend(MEMORY[0x277CCA900], "URLFragmentAllowedCharacterSet"))];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  v8 = [MEMORY[0x277CC1E80] defaultWorkspace];

  return [v8 openSensitiveURL:v7 withOptions:0];
}

- (int)_remakerModeForSelectedOption
{
  selectedOption = self->_selectedOption;
  if (selectedOption == 1)
  {
    return [PLVideoRemaker getHDRemakerModeForMode:self->_remakerMode];
  }

  if (selectedOption)
  {
    return -1;
  }

  return self->_remakerMode;
}

- (void)videoRemakerDidEndRemaking:(id)a3 temporaryPath:(id)a4
{
  v6 = self;
  *(self + 208) &= ~2u;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [self->_delegate publishingAgentDidEndRemaking:self didSucceed:a4 != 0];
  }

  [(PLPublishingAgent *)self performSelector:sel__remakerDidFinish_ withObject:a4 afterDelay:0.01];
}

- (void)_remakerDidFinish:(id)a3
{
  if ((*(self + 208) & 1) == 0)
  {
    if ([a3 length])
    {
      completionSelector = self->_completionSelector;
      if (completionSelector)
      {
        [(PLPublishingAgent *)self performSelector:completionSelector withObject:a3];
      }
    }

    else
    {
      v6 = [MEMORY[0x277D75110] alertControllerWithTitle:PLLocalizedFrameworkString() message:0 preferredStyle:1];
      [v6 addAction:{objc_msgSend(MEMORY[0x277D750F8], "actionWithTitle:style:handler:", PLLocalizedFrameworkString(), 0, 0)}];
      [objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
    }
  }

  *(self + 208) &= ~1u;
  [(PLVideoRemaker *)self->_remaker setDelegate:0];

  self->_remaker = 0;
}

- (void)videoRemakerDidBeginRemaking:(id)a3
{
  v4 = self;
  *(self + 208) |= 2u;
  self->_progressMultiplier = 0.5;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate publishingAgentDidStartRemaking:self];
  }
}

- (void)_transcodeVideo:(id)a3
{
  [(PLVideoRemaker *)self->_remaker setDelegate:0];

  v5 = [[PLVideoRemaker alloc] initWithPublishingMedia:a3];
  self->_remaker = v5;
  [(PLVideoRemaker *)v5 setDelegate:self];
  [(PLVideoRemaker *)self->_remaker setMode:self->_remakerMode];
  if (self->_needsTrimming)
  {
    [(PLVideoRemaker *)self->_remaker setTrimStartTime:self->_startTime];
    [(PLVideoRemaker *)self->_remaker setTrimEndTime:self->_endTime];
  }

  remaker = self->_remaker;

  [(PLVideoRemaker *)remaker remake];
}

- (void)_cancelRemaking:(id)a3
{
  remaker = self->_remaker;
  if (remaker)
  {
    self->_completionSelector = 0;
    *(self + 208) = *(self + 208) & 0xFC | 1;
    self->_progressMultiplier = 1.0;
    [(PLVideoRemaker *)remaker cancel];
  }
}

- (void)_updateStatisticsFromSnapshots
{
  v3 = [(NSMutableArray *)self->_snapshotTimes count];
  v4 = -1.0;
  if (v3 < 3)
  {
    v13 = -1.0;
  }

  else
  {
    v5 = v3;
    v6 = 0.0;
    for (i = 1; i != v5; ++i)
    {
      [-[NSMutableArray objectAtIndex:](self->_snapshotTimes objectAtIndex:{i), "doubleValue"}];
      v9 = v8;
      [-[NSMutableArray objectAtIndex:](self->_snapshotTimes objectAtIndex:{i - 1), "doubleValue"}];
      v11 = v9 - v10;
      v12 = [-[NSMutableArray objectAtIndex:](self->_snapshotValues objectAtIndex:{i), "longLongValue"}];
      v6 = v6 + (v12 - [-[NSMutableArray objectAtIndex:](self->_snapshotValues objectAtIndex:{i - 1), "longLongValue"}]) / v11;
    }

    v13 = v6 / v5;
    if (v13 > 0.00000011920929)
    {
      v14 = self->_maxValue - self->_currentValue;
      if ((v14 & 0x8000000000000000) == 0)
      {
        v4 = v14 / v13;
      }
    }
  }

  self->_changeRate = v13;
  self->_estimatedTimeRemaining = v4;
}

- (void)snapshot
{
  maxValue = self->_maxValue;
  if (maxValue)
  {
    v4 = self->_currentValue / maxValue;
    self->_percentComplete = v4;
  }

  snapshotTimes = self->_snapshotTimes;
  if (!snapshotTimes)
  {
    self->_snapshotTimes = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_snapshotValues = objc_alloc_init(MEMORY[0x277CBEB18]);
    snapshotTimes = self->_snapshotTimes;
  }

  if ([(NSMutableArray *)snapshotTimes count]>= 0x14)
  {
    [(NSMutableArray *)self->_snapshotTimes removeObjectAtIndex:0];
    [(NSMutableArray *)self->_snapshotValues removeObjectAtIndex:0];
  }

  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:CFAbsoluteTimeGetCurrent()];
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:self->_currentValue];
  [(NSMutableArray *)self->_snapshotTimes addObject:v6];
  [(NSMutableArray *)self->_snapshotValues addObject:v7];

  [(PLPublishingAgent *)self _updateStatisticsFromSnapshots];
}

- (id)tellAFriendSubject
{
  v2 = [(PLPublishingAgent *)self mediaTitle];
  if ([v2 length])
  {
    return v2;
  }

  else
  {
    return &stru_282C49210;
  }
}

- (BOOL)isVideoMedia
{
  v2 = [(PLPublishingAgent *)self userInfo];

  return [v2 isVideo];
}

- (void)dismiss
{
  [(PLPublishingAgent *)self _stopNetworkObservation];
  v3 = [-[PLPublishingAgent navigationController](self "navigationController")];

  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentModalSheetInViewController:(id)a3
{
  v5 = [(PLPublishingAgent *)self navigationController];
  if (v5)
  {
    v6 = v5;
    [self->_delegate publishingAgentWillBeDisplayed:self];
    if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v6 setModalPresentationStyle:2];
    }

    [a3 presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_agentIsReadyToPublish:(id)a3
{
  if (a3)
  {
    [(PLPublishingAgent *)self setMediaPath:?];
    [(PLPublishingAgent *)self setDeleteMediaFileAfterPublishing:1];
  }

  [(PLPublishingAgent *)self publish];
}

- (void)doneButtonClicked
{
  [self->_delegate publishingAgentDoneButtonClicked:self];
  self->_remakerMode = [(PLPublishingAgent *)self _remakerModeForSelectedOption];
  [MEMORY[0x277D75CE0] defaultDurationForTransition:3];
  v4 = v3;
  if ([(PLPublishingAgent *)self isVideoMedia])
  {
    self->_completionSelector = sel__agentIsReadyToPublish_;
    v5 = sel__transcodeVideo_;
    v6 = [(PLPublishingAgent *)self userInfo];
  }

  else
  {
    v6 = 0;
    v5 = sel_publish;
  }

  v7 = v4;
  v8 = v7;

  [(PLPublishingAgent *)self performSelector:v5 withObject:v6 afterDelay:v8];
}

- (void)cancelButtonClicked
{
  v3 = self;
  delegate = self->_delegate;

  [delegate publishingAgentCancelButtonClicked:self];
}

- (void)_setApproximateVideoUploadSizes
{
  if (self->_needsTrimming)
  {
    v3 = self->_endTime - self->_startTime;
  }

  else
  {
    [-[PLPublishingAgent userInfo](self "userInfo")];
    v3 = v4;
  }

  [(PLPublishingAgent *)self setApproximateSDUploadSize:[PLVideoRemaker approximateByteSizeForMode:[PLVideoRemaker getSDRemakerModeForMode:self->_remakerMode] duration:v3]];
  v5 = [PLVideoRemaker approximateByteSizeForMode:[PLVideoRemaker getHDRemakerModeForMode:self->_remakerMode] duration:v3];

  [(PLPublishingAgent *)self setApproximateHDUploadSize:v5];
}

- (void)setRemakerMode:(int)a3
{
  if (!self->_remakerMode)
  {
    self->_remakerMode = a3;
    [(PLPublishingAgent *)self _setApproximateVideoUploadSizes];
  }

  self->_remakerMode = a3;
}

- (void)setPublishing:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 208) = *(self + 208) & 0xFB | v3;
}

- (void)setUserInfo:(id)a3
{
  userInfo = self->_userInfo;
  if (userInfo != a3)
  {

    self->_userInfo = a3;
  }
}

- (void)setMediaData:(id)a3
{
  mediaData = self->_mediaData;
  if (mediaData != a3)
  {

    self->_mediaData = a3;
  }
}

- (void)setMediaPath:(id)a3
{
  mediaPath = self->_mediaPath;
  if (mediaPath != a3)
  {

    self->_mediaPath = a3;
  }
}

- (void)_setUpPublishingParams
{
  v3 = [(PLPublishingAgent *)self userInfo];
  if ([v3 isVideo])
  {
    v4 = [v3 pathForVideoFile];
    v5 = [v3 isHDVideo];
    [(PLPublishingAgent *)self setMediaPath:v4];
    [(PLPublishingAgent *)self setDeleteMediaFileAfterPublishing:0];
    [(PLPublishingAgent *)self setMediaIsHDVideo:v5];
    if (v5)
    {
      v6 = +[PLPublishingAgent canUploadHDVideoOverCellular];
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v8 = MEMORY[0x277D76620];
        NSClassFromString(&cfstr_Plphotosapplic_0.isa);
        if (objc_opt_isKindOfClass())
        {
          v9 = *v8;
        }

        else
        {
          v9 = 0;
        }

        v7 = [v9 isOnWifi];
      }

      [(PLPublishingAgent *)self setEnableHDUpload:v7];

      [(PLPublishingAgent *)self setAllowsHDOver3GUpload:v6];
    }
  }
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(PLPublishingAgent *)self setDelegate:0];

  [(PLVideoRemaker *)self->_remaker setDelegate:0];
  v3.receiver = self;
  v3.super_class = PLPublishingAgent;
  [(PLPublishingAgent *)&v3 dealloc];
}

- (PLPublishingAgent)initWithMedia:(id)a3
{
  v8.receiver = self;
  v8.super_class = PLPublishingAgent;
  v4 = [(PLPublishingAgent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(PLPublishingAgent *)v4 setUserInfo:a3];
    [(PLPublishingAgent *)v5 _startNetworkObservation];
    [(PLPublishingAgent *)v5 _setUpPublishingParams];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v5 selector:sel__cancelRemaking_ name:*MEMORY[0x277D3ADB8] object:0];
    v5->_progressMultiplier = 1.0;
    v5->_remakerMode = 0;
  }

  return v5;
}

- (void)_stopNetworkObservation
{
  v3 = MEMORY[0x277D76620];
  NSClassFromString(&cfstr_Plphotosapplic_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  [v4 disableNetworkObservation];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D3ADF0];

  [v5 removeObserver:self name:v6 object:0];
}

- (void)_startNetworkObservation
{
  v3 = MEMORY[0x277D76620];
  NSClassFromString(&cfstr_Plphotosapplic_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  [v4 enableNetworkObservation];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D3ADF0];

  [v5 addObserver:self selector:sel__networkReachabilityDidChange_ name:v6 object:0];
}

- (void)_networkReachabilityDidChange:(id)a3
{
  v3 = a3;
  v5 = [a3 userInfo];
  v6 = [objc_msgSend(v5 objectForKey:{*MEMORY[0x277D3AE00]), "BOOLValue"}];
  v7 = [v3 userInfo];
  LODWORD(v3) = [objc_msgSend(v7 objectForKey:{*MEMORY[0x277D3ADF8]), "BOOLValue"}];
  v8 = ([(PLPublishingAgent *)self allowsHDOver3GUpload]| v3 & v6) & 1;

  [(PLPublishingAgent *)self setEnableHDUpload:v8];
}

- (BOOL)allowsCellularAccessForRequests
{
  if ([(PLPublishingAgent *)self selectedOption]!= 1)
  {
    return 1;
  }

  return [(PLPublishingAgent *)self allowsHDOver3GUpload];
}

+ (BOOL)canUploadHDVideoOverCellular
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__2507;
  v2 = getMCProfileConnectionClass_softClass;
  v19 = __Block_byref_object_dispose__2508;
  v20 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __getMCProfileConnectionClass_block_invoke;
    v13 = &unk_2782A1E88;
    v14 = &v15;
    __getMCProfileConnectionClass_block_invoke(&v10);
    v2 = *(v16 + 40);
  }

  _Block_object_dispose(&v15, 8);
  v3 = [v2 sharedConnection];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = getMCFeatureCellularHDUploadsAllowedSymbolLoc_ptr;
  v13 = getMCFeatureCellularHDUploadsAllowedSymbolLoc_ptr;
  if (!getMCFeatureCellularHDUploadsAllowedSymbolLoc_ptr)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMCFeatureCellularHDUploadsAllowedSymbolLoc_block_invoke;
    v18 = &unk_2782A1E88;
    v19 = &v10;
    v5 = ManagedConfigurationLibrary();
    v6 = dlsym(v5, "MCFeatureCellularHDUploadsAllowed");
    *(*(v19 + 1) + 24) = v6;
    getMCFeatureCellularHDUploadsAllowedSymbolLoc_ptr = *(*(v19 + 1) + 24);
    v4 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);
  if (v4)
  {
    return [v3 effectiveBoolValueForSetting:*v4] == 1;
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMCFeatureCellularHDUploadsAllowed(void)"];
  result = [v8 handleFailureInFunction:v9 file:@"PLPublishingAgent.m" lineNumber:41 description:{@"%s", dlerror(), v10}];
  __break(1u);
  return result;
}

+ (id)publishingAgentForBundleNamed:(id)a3 toPublishMedia:(id)a4
{
  v5 = [@"/System/Library/PublishingBundles/" stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@.bundle", a3)}];
  v6 = [objc_alloc(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] bundleWithPath:{v5), "principalClass")), "initWithMedia:", a4}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return v6;
  }

  else
  {

    return 0;
  }
}

@end