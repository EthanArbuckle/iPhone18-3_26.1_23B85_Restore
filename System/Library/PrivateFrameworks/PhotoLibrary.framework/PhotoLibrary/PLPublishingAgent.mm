@interface PLPublishingAgent
+ (BOOL)canUploadHDVideoOverCellular;
+ (id)publishingAgentForBundleNamed:(id)named toPublishMedia:(id)media;
- (BOOL)allowsCellularAccessForRequests;
- (BOOL)isVideoMedia;
- (PLPublishingAgent)initWithMedia:(id)media;
- (id)tellAFriendSubject;
- (int)_remakerModeForSelectedOption;
- (void)_agentIsReadyToPublish:(id)publish;
- (void)_cancelRemaking:(id)remaking;
- (void)_networkReachabilityDidChange:(id)change;
- (void)_remakerDidFinish:(id)finish;
- (void)_setApproximateVideoUploadSizes;
- (void)_setUpPublishingParams;
- (void)_startNetworkObservation;
- (void)_stopNetworkObservation;
- (void)_transcodeVideo:(id)video;
- (void)_updateStatisticsFromSnapshots;
- (void)cancelButtonClicked;
- (void)dealloc;
- (void)dismiss;
- (void)doneButtonClicked;
- (void)presentModalSheetInViewController:(id)controller;
- (void)setMediaData:(id)data;
- (void)setMediaPath:(id)path;
- (void)setPublishing:(BOOL)publishing;
- (void)setRemakerMode:(int)mode;
- (void)setUserInfo:(id)info;
- (void)showAlertWithError:(id)error;
- (void)snapshot;
- (void)videoRemakerDidBeginRemaking:(id)remaking;
- (void)videoRemakerDidEndRemaking:(id)remaking temporaryPath:(id)path;
@end

@implementation PLPublishingAgent

- (void)showAlertWithError:(id)error
{
  mediaTitle = [(PLPublishingAgent *)self mediaTitle];
  v6 = mediaTitle;
  if (error)
  {
    if (mediaTitle)
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

  if (mediaTitle)
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
  serviceName = [(PLPublishingAgent *)self serviceName];
  v16 = PFStringWithValidatedFormat();
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v15 message:0 preferredStyle:{1, serviceName}];
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

- (void)videoRemakerDidEndRemaking:(id)remaking temporaryPath:(id)path
{
  selfCopy = self;
  *(self + 208) &= ~2u;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [self->_delegate publishingAgentDidEndRemaking:self didSucceed:path != 0];
  }

  [(PLPublishingAgent *)self performSelector:sel__remakerDidFinish_ withObject:path afterDelay:0.01];
}

- (void)_remakerDidFinish:(id)finish
{
  if ((*(self + 208) & 1) == 0)
  {
    if ([finish length])
    {
      completionSelector = self->_completionSelector;
      if (completionSelector)
      {
        [(PLPublishingAgent *)self performSelector:completionSelector withObject:finish];
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

- (void)videoRemakerDidBeginRemaking:(id)remaking
{
  selfCopy = self;
  *(self + 208) |= 2u;
  self->_progressMultiplier = 0.5;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate publishingAgentDidStartRemaking:self];
  }
}

- (void)_transcodeVideo:(id)video
{
  [(PLVideoRemaker *)self->_remaker setDelegate:0];

  v5 = [[PLVideoRemaker alloc] initWithPublishingMedia:video];
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

- (void)_cancelRemaking:(id)remaking
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
  mediaTitle = [(PLPublishingAgent *)self mediaTitle];
  if ([mediaTitle length])
  {
    return mediaTitle;
  }

  else
  {
    return &stru_282C49210;
  }
}

- (BOOL)isVideoMedia
{
  userInfo = [(PLPublishingAgent *)self userInfo];

  return [userInfo isVideo];
}

- (void)dismiss
{
  [(PLPublishingAgent *)self _stopNetworkObservation];
  v3 = [-[PLPublishingAgent navigationController](self "navigationController")];

  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentModalSheetInViewController:(id)controller
{
  navigationController = [(PLPublishingAgent *)self navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [self->_delegate publishingAgentWillBeDisplayed:self];
    if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v6 setModalPresentationStyle:2];
    }

    [controller presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_agentIsReadyToPublish:(id)publish
{
  if (publish)
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
    userInfo = [(PLPublishingAgent *)self userInfo];
  }

  else
  {
    userInfo = 0;
    v5 = sel_publish;
  }

  v7 = v4;
  v8 = v7;

  [(PLPublishingAgent *)self performSelector:v5 withObject:userInfo afterDelay:v8];
}

- (void)cancelButtonClicked
{
  selfCopy = self;
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

- (void)setRemakerMode:(int)mode
{
  if (!self->_remakerMode)
  {
    self->_remakerMode = mode;
    [(PLPublishingAgent *)self _setApproximateVideoUploadSizes];
  }

  self->_remakerMode = mode;
}

- (void)setPublishing:(BOOL)publishing
{
  if (publishing)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 208) = *(self + 208) & 0xFB | v3;
}

- (void)setUserInfo:(id)info
{
  userInfo = self->_userInfo;
  if (userInfo != info)
  {

    self->_userInfo = info;
  }
}

- (void)setMediaData:(id)data
{
  mediaData = self->_mediaData;
  if (mediaData != data)
  {

    self->_mediaData = data;
  }
}

- (void)setMediaPath:(id)path
{
  mediaPath = self->_mediaPath;
  if (mediaPath != path)
  {

    self->_mediaPath = path;
  }
}

- (void)_setUpPublishingParams
{
  userInfo = [(PLPublishingAgent *)self userInfo];
  if ([userInfo isVideo])
  {
    pathForVideoFile = [userInfo pathForVideoFile];
    isHDVideo = [userInfo isHDVideo];
    [(PLPublishingAgent *)self setMediaPath:pathForVideoFile];
    [(PLPublishingAgent *)self setDeleteMediaFileAfterPublishing:0];
    [(PLPublishingAgent *)self setMediaIsHDVideo:isHDVideo];
    if (isHDVideo)
    {
      v6 = +[PLPublishingAgent canUploadHDVideoOverCellular];
      if (v6)
      {
        isOnWifi = 1;
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

        isOnWifi = [v9 isOnWifi];
      }

      [(PLPublishingAgent *)self setEnableHDUpload:isOnWifi];

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

- (PLPublishingAgent)initWithMedia:(id)media
{
  v8.receiver = self;
  v8.super_class = PLPublishingAgent;
  v4 = [(PLPublishingAgent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(PLPublishingAgent *)v4 setUserInfo:media];
    [(PLPublishingAgent *)v5 _startNetworkObservation];
    [(PLPublishingAgent *)v5 _setUpPublishingParams];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__cancelRemaking_ name:*MEMORY[0x277D3ADB8] object:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D3ADF0];

  [defaultCenter removeObserver:self name:v6 object:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D3ADF0];

  [defaultCenter addObserver:self selector:sel__networkReachabilityDidChange_ name:v6 object:0];
}

- (void)_networkReachabilityDidChange:(id)change
{
  changeCopy = change;
  userInfo = [change userInfo];
  v6 = [objc_msgSend(userInfo objectForKey:{*MEMORY[0x277D3AE00]), "BOOLValue"}];
  userInfo2 = [changeCopy userInfo];
  LODWORD(changeCopy) = [objc_msgSend(userInfo2 objectForKey:{*MEMORY[0x277D3ADF8]), "BOOLValue"}];
  v8 = ([(PLPublishingAgent *)self allowsHDOver3GUpload]| changeCopy & v6) & 1;

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
  sharedConnection = [v2 sharedConnection];
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
    return [sharedConnection effectiveBoolValueForSetting:*v4] == 1;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMCFeatureCellularHDUploadsAllowed(void)"];
  result = [currentHandler handleFailureInFunction:v9 file:@"PLPublishingAgent.m" lineNumber:41 description:{@"%s", dlerror(), v10}];
  __break(1u);
  return result;
}

+ (id)publishingAgentForBundleNamed:(id)named toPublishMedia:(id)media
{
  v5 = [@"/System/Library/PublishingBundles/" stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@.bundle", named)}];
  v6 = [objc_alloc(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] bundleWithPath:{v5), "principalClass")), "initWithMedia:", media}];
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