@interface PLVideoView
+ (id)_dequeueOverlayPlayButton;
+ (id)videoViewForVideoFileAtURL:(id)l;
+ (void)_enqueueOverlayPlayButton:(id)button;
- (BOOL)_canAccessVideo;
- (BOOL)_canAirPlayCurrentVideo;
- (BOOL)_canHandleAdjustmentData:(id)data;
- (BOOL)_canPlayCloudSharedStreamedVideoWithLocalVideo;
- (BOOL)_didSetPhotoData;
- (BOOL)_isFlattenedVideoUpToDate;
- (BOOL)_mediaIsCloudSharedStreamedVideo;
- (BOOL)_mediaIsPlayable;
- (BOOL)_mediaIsVideo;
- (BOOL)_prepareMoviePlayerIfNeeded;
- (BOOL)_scrubberTimeNeedsMapping;
- (BOOL)_shouldPlayFlattenedVideo;
- (BOOL)_shouldShowSlalomEditor;
- (BOOL)_shouldStreamSharedAlbumVideo;
- (BOOL)_shouldStreamVideo;
- (BOOL)canEdit;
- (BOOL)moviePlayerShouldNotifyOnPreparationError:(id)error;
- (NSString)_pathForPrebakedLandscapeScrubberThumbnails;
- (NSString)_pathForPrebakedPortraitScrubberThumbnails;
- (NSString)_pathForVideoPreviewFile;
- (NSString)description;
- (NSString)pathForVideoFile;
- (PLVideoView)initWithFrame:(CGRect)frame videoCameraImage:(id)image orientation:(int64_t)orientation;
- (double)_movieScrubberDuration;
- (double)_movieTimeFromScrubberTime:(double)time;
- (double)_scrubberBackgroundHeight;
- (double)_scrubberTimeFromMovieTime:(double)time;
- (double)_thumbnailTimeFromScrubberTime:(double)time;
- (double)currentTime;
- (double)endTime;
- (double)movieScrubberThumbnailAspectRatio:(id)ratio;
- (double)scrubberWidth;
- (double)startTime;
- (id)_assetForVideoPath:(id)path;
- (id)_assetForVideoURL:(id)l;
- (id)_filePathForFlattenedVideo;
- (id)_filePathForFlattenedVideoMetadata;
- (id)_initWithFrame:(CGRect)frame videoCameraImage:(id)image orientation:(int64_t)orientation;
- (id)_loadThumbnailsIntoDictionary:(id)dictionary isLandscape:(BOOL)landscape aspectRatio:(float)ratio;
- (id)_metadataForFlattenedVideo;
- (id)_optionsForAVURLAsset;
- (id)_pathForOriginalFile;
- (id)_thumbnailSourceAsset;
- (id)_videoSnapshot;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)movieScrubber:(id)scrubber evenlySpacedTimestamps:(int)timestamps startingAt:(id)at endingAt:(id)endingAt;
- (id)newPreviewImageData:(id *)data;
- (void)_cancelAirplayExportSession;
- (void)_cancelDelayedCommitPendingAdjustmentsUpdate;
- (void)_commitPendingAdjustmentsUpdateAndWait:(BOOL)wait completionHandler:(id)handler;
- (void)_configureImageGenerator:(id)generator thumbnailSize:(CGSize)thumbnailSize forSummaryThumbnails:(BOOL)thumbnails;
- (void)_configurePlayerForStreamedVideoIfNecessary;
- (void)_createImageGenerators;
- (void)_createScrubberIfNeeded;
- (void)_deleteFileAtPath:(id)path;
- (void)_didBeginPlayback;
- (void)_didScrubToValue:(double)value withHandle:(int)handle;
- (void)_displayPlaySpinner;
- (void)_enqueueAdjustmentsForCommit;
- (void)_fetchLocalContentEditingInput;
- (void)_fetchNonlocalVideo;
- (void)_flattenVideoWithCompletionHandler:(id)handler;
- (void)_handleScreenConnectionChange:(BOOL)change;
- (void)_hideTrimMessageView:(BOOL)view;
- (void)_hideVideoOverlay:(BOOL)overlay;
- (void)_insertMoviePlayerViewIfNecessary;
- (void)_networkReachabilityDidChange:(id)change;
- (void)_playbackFinished;
- (void)_prepareAndResumePlayback;
- (void)_reloadScrubberThumbnailsIfNeeded;
- (void)_removePlaySpinner;
- (void)_removeScrubber;
- (void)_removeScrubberUpdateTimer;
- (void)_requestPreviewPosterFrameForVideoSize:(CGSize)size;
- (void)_reset;
- (void)_resetScrubberUpdateTimer;
- (void)_saveCachedThumbnailsIfNecessary;
- (void)_savePreviewPosterFrameImage:(CGImage *)image;
- (void)_scrubToMovieTime:(double)time;
- (void)_scrubToSlalomRegionEditorStartHandle:(BOOL)handle;
- (void)_serviceImageGenerationRequests;
- (void)_setDuration:(double)duration;
- (void)_setLocalVideoUnavailable:(BOOL)unavailable;
- (void)_setMoviePlayerActive:(BOOL)active;
- (void)_setNeedsReloadScrubberThumbnails:(BOOL)thumbnails;
- (void)_setPlaybackDidBegin:(BOOL)begin;
- (void)_setPlaying:(BOOL)playing;
- (void)_setupMoviePlayerIfNecessary;
- (void)_showVideoOverlay;
- (void)_tearDownMoviePlayer;
- (void)_updatePosterFrameVisibility;
- (void)_updatePosterImageView;
- (void)_updateScaleModeForSize:(CGSize)size;
- (void)_updateScrubberForSlowMotion;
- (void)_updateScrubberFrame;
- (void)_updateScrubberValue;
- (void)_updateScrubberVisibilityWithDuration:(double)duration;
- (void)_updateSlalomRegionEditorRange;
- (void)_updateSlalomRegionEditorState;
- (void)_updateSnapshotImage;
- (void)_updateVideoAVObjectBuilderFromContentEditingInput:(id)input;
- (void)_verifyOrRestartPlayback;
- (void)_videoOverlayFadeOutDidFinish;
- (void)_writeMetadata:(id)metadata toPath:(id)path;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)handleDoubleTap;
- (void)layoutSubviews;
- (void)moviePlayerBufferingStateDidChange:(id)change;
- (void)moviePlayerControllerDidBecomeActiveController:(id)controller;
- (void)moviePlayerControllerWillResignAsActiveController:(id)controller;
- (void)moviePlayerDidChangeExternalPlaybackType:(id)type;
- (void)moviePlayerDurationAvailable:(id)available;
- (void)moviePlayerEncounteredAuthenticationError:(id)error;
- (void)moviePlayerHeadsetNextTrackPressed:(id)pressed;
- (void)moviePlayerHeadsetPlayPausePressed:(id)pressed;
- (void)moviePlayerHeadsetPreviousTrackPressed:(id)pressed;
- (void)moviePlayerPlaybackRateDidChange:(id)change;
- (void)moviePlayerPlaybackStateDidChange:(id)change fromPlaybackState:(unint64_t)state;
- (void)moviePlayerReadyToDisplay:(id)display;
- (void)moviePlayerReadyToPlay:(id)play;
- (void)movieScrubber:(id)scrubber requestThumbnailImageForTimestamp:(id)timestamp isSummaryThumbnail:(BOOL)thumbnail;
- (void)movieScrubber:(id)scrubber widthDelta:(float)delta originXDelta:(float)xDelta;
- (void)movieScrubberDidBeginScrubbing:(id)scrubbing withHandle:(int)handle;
- (void)movieScrubberDidEndScrubbing:(id)scrubbing withHandle:(int)handle;
- (void)movieScrubberDidFinishRequestingThumbnails:(id)thumbnails;
- (void)notifyOfChange:(id)change shouldReloadBlock:(id)block;
- (void)notifyRequiredResourcesDownloaded;
- (void)pause;
- (void)play;
- (void)removeVideoOverlay;
- (void)setCanEdit:(BOOL)edit;
- (void)setCurrentTime:(double)time;
- (void)setDelegate:(id)delegate;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
- (void)setLoadMediaImmediately:(BOOL)immediately;
- (void)setPosterFrameImage:(id)image;
- (void)setScrubberIsSubview:(BOOL)subview;
- (void)setShowsPlayOverlay:(BOOL)overlay;
- (void)setShowsScrubber:(BOOL)scrubber duration:(double)duration;
- (void)showTrimMessage:(id)message withBottomY:(float)y;
- (void)slalomRegionEditorDidBeginEditing:(id)editing withStartHandle:(BOOL)handle;
- (void)slalomRegionEditorDidEndEditing:(id)editing;
- (void)stop;
- (void)toggleScaleMode:(float)mode;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateForRotationWithDuration:(double)duration isLandscape:(BOOL)landscape;
- (void)updateScaleMode;
- (void)viewDidAppear;
- (void)viewDidDisappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PLVideoView

- (void)_cancelAirplayExportSession
{
  [(AVAssetExportSession *)self->_airplayExportSession cancelExport];

  self->_airplayExportSession = 0;
}

- (void)_flattenVideoWithCompletionHandler:(id)handler
{
  [(PLVideoView *)self _cancelAirplayExportSession];
  if (self->__videoAVObjectBuilder)
  {
    _filePathForFlattenedVideo = [(PLVideoView *)self _filePathForFlattenedVideo];
    _filePathForFlattenedVideoMetadata = [(PLVideoView *)self _filePathForFlattenedVideoMetadata];
    [(PLVideoView *)self _deleteFileAtPath:_filePathForFlattenedVideo];
    [(PLVideoView *)self _deleteFileAtPath:_filePathForFlattenedVideoMetadata];
    _metadataForFlattenedVideo = [(PLVideoView *)self _metadataForFlattenedVideo];
    videoAVObjectBuilder = self->__videoAVObjectBuilder;
    v9 = *MEMORY[0x277CE5C78];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__PLVideoView__flattenVideoWithCompletionHandler___block_invoke;
    v14[3] = &unk_2782A2278;
    v14[4] = self;
    [(PFVideoAVObjectBuilder *)videoAVObjectBuilder requestExportSessionWithExportPreset:v9 resultHandler:v14];
    if (self->_airplayExportSession)
    {
      v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:_filePathForFlattenedVideo isDirectory:0];
      [(AVAssetExportSession *)self->_airplayExportSession setOutputFileType:*MEMORY[0x277CE5DA8]];
      [(AVAssetExportSession *)self->_airplayExportSession setOutputURL:v10];
      airplayExportSession = self->_airplayExportSession;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __50__PLVideoView__flattenVideoWithCompletionHandler___block_invoke_2;
      v13[3] = &unk_2782A22A0;
      v13[4] = airplayExportSession;
      v13[5] = self;
      v13[6] = _metadataForFlattenedVideo;
      v13[7] = _filePathForFlattenedVideoMetadata;
      v13[8] = v10;
      v13[9] = handler;
      [(AVAssetExportSession *)airplayExportSession exportAsynchronouslyWithCompletionHandler:v13];
    }

    else if (handler)
    {
      (*(handler + 2))(handler, 0);
    }
  }

  else if (handler)
  {
    v12 = *(handler + 2);

    v12(handler, 0);
  }
}

id __50__PLVideoView__flattenVideoWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  result = a2;
  *(*(a1 + 32) + 640) = result;
  return result;
}

uint64_t __50__PLVideoView__flattenVideoWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  if (v2 == 3)
  {
    [*(a1 + 40) _writeMetadata:*(a1 + 48) toPath:*(a1 + 56)];
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v2 == 4)
    {
      NSLog(&cfstr_VideoExportFai.isa, [*(a1 + 32) asset], objc_msgSend(*(a1 + 32), "error"));
    }
  }

  v3 = *(*(a1 + 40) + 640);
  if (*(a1 + 32) == v3)
  {

    *(*(a1 + 40) + 640) = 0;
  }

  result = *(a1 + 72);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_deleteFileAtPath:(id)path
{
  v5 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:path isDirectory:0])
  {
    [defaultManager removeItemAtPath:path error:&v5];
    if (v5)
    {
      NSLog(&cfstr_FailedToDelete.isa, path, v5);
    }
  }
}

- (id)_filePathForFlattenedVideoMetadata
{
  _filePathForFlattenedVideo = [(PLVideoView *)self _filePathForFlattenedVideo];

  return [_filePathForFlattenedVideo stringByAppendingPathExtension:@"MD"];
}

- (id)_filePathForFlattenedVideo
{
  v2 = [-[PLVideoView _pathForOriginalFile](self "_pathForOriginalFile")];
  v3 = NSTemporaryDirectory();

  return [(NSString *)v3 stringByAppendingPathComponent:v2];
}

- (void)_writeMetadata:(id)metadata toPath:(id)path
{
  if (metadata)
  {
    [objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:metadata format:100 options:0 error:{0), "writeToFile:options:error:", path, 1073741825, 0}];
  }

  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    NSLog(&cfstr_FailedToWriteM.isa, path);
  }
}

- (id)_metadataForFlattenedVideo
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PLManagedAsset *)self->_videoCameraImage duration];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:"), @"duration"}];
  v4 = [-[PFVideoAVObjectBuilder videoAdjustments](self->__videoAVObjectBuilder "videoAdjustments")];
  if (v4)
  {
    [dictionary setObject:v4 forKey:@"plist"];
  }

  return dictionary;
}

- (BOOL)_isFlattenedVideoUpToDate
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _filePathForFlattenedVideo = [(PLVideoView *)self _filePathForFlattenedVideo];
  _filePathForFlattenedVideoMetadata = [(PLVideoView *)self _filePathForFlattenedVideoMetadata];
  if (![defaultManager fileExistsAtPath:_filePathForFlattenedVideo] || !objc_msgSend(defaultManager, "fileExistsAtPath:", _filePathForFlattenedVideoMetadata))
  {
    return 0;
  }

  v6 = [(PLVideoView *)self _readMetadataFromPath:_filePathForFlattenedVideoMetadata];
  _metadataForFlattenedVideo = [(PLVideoView *)self _metadataForFlattenedVideo];

  return [v6 isEqual:_metadataForFlattenedVideo];
}

- (BOOL)_shouldPlayFlattenedVideo
{
  if (self->_isAirPlay)
  {
    return ![(PLVideoView *)self _canAirPlayCurrentVideo:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_canAirPlayCurrentVideo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = 1;
  v9 = 1;
  videoAVObjectBuilder = self->__videoAVObjectBuilder;
  if (videoAVObjectBuilder)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__PLVideoView__canAirPlayCurrentVideo__block_invoke;
    v5[3] = &unk_2782A2250;
    v5[4] = &v6;
    [(PFVideoAVObjectBuilder *)videoAVObjectBuilder requestAVAssetForExport:0 withResultHandler:v5];
    v2 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v2 & 1;
}

uint64_t __38__PLVideoView__canAirPlayCurrentVideo__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  v8 = (a3 == 0) & result;
  if (a4)
  {
    v8 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
  return result;
}

- (void)_scrubToSlalomRegionEditorStartHandle:(BOOL)handle
{
  slalomRegionEditor = self->_slalomRegionEditor;
  if (handle)
  {
    [(PLSlalomRegionEditor *)slalomRegionEditor startValue];
  }

  else
  {
    [(PLSlalomRegionEditor *)slalomRegionEditor endValue];
  }

  [(PLVideoView *)self _movieTimeFromScrubberTime:?];

  [(PLVideoView *)self _scrubToMovieTime:?];
}

- (void)_commitPendingAdjustmentsUpdateAndWait:(BOOL)wait completionHandler:(id)handler
{
  waitCopy = wait;
  [(PLVideoView *)self _cancelDelayedCommitPendingAdjustmentsUpdate];
  adjustmentsToCommit = self->__adjustmentsToCommit;
  if (adjustmentsToCommit)
  {
    v8 = adjustmentsToCommit;

    self->__adjustmentsToCommit = 0;
    v9 = [(PLManagedAsset *)self->_videoCameraImage pl_PHAssetFromPhotoLibrary:pl_appPhotoLibrary()];
    if (v9)
    {
      v10 = v9;
      ++self->__expectedNotificationsCount;
      v11 = [objc_alloc(MEMORY[0x277CD97A0]) initWithFormatIdentifier:-[PFVideoAdjustments adjustmentFormatIdentifier](v8 formatVersion:"adjustmentFormatIdentifier") data:{-[PFVideoAdjustments adjustmentFormatVersion](v8, "adjustmentFormatVersion"), -[PFVideoAdjustments adjustmentData](v8, "adjustmentData")}];
      v12 = pl_appPhotoLibrary();
      photoLibraryURL = [v12 photoLibraryURL];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__PLVideoView__commitPendingAdjustmentsUpdateAndWait_completionHandler___block_invoke;
      v18[3] = &unk_2782A20C0;
      v18[4] = v10;
      v18[5] = photoLibraryURL;
      v18[6] = v11;
      if (waitCopy)
      {
        *buf = 0;
        if (![v12 performChangesAndWait:v18 error:buf] || *buf)
        {
          NSLog(&cfstr_FailedToCommit.isa, *buf);
        }

        if (handler)
        {
          (*(handler + 2))(handler, *buf);
        }
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __72__PLVideoView__commitPendingAdjustmentsUpdateAndWait_completionHandler___block_invoke_2;
        v16[3] = &unk_2782A2228;
        v16[4] = handler;
        [v12 performChanges:v18 completionHandler:v16];
      }
    }

    else
    {
      Log = PLBackendGetLog();
      if (os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_ERROR, "No PHAsset for committing pending adjustment changes", buf, 2u);
      }

      if (handler)
      {
        (*(handler + 2))(handler, 0);
      }
    }
  }

  else if (handler)
  {
    v14 = *(handler + 2);

    v14(handler, 0);
  }
}

uint64_t __72__PLVideoView__commitPendingAdjustmentsUpdateAndWait_completionHandler___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CD97B0] changeRequestForAsset:a1[4]];
  v3 = [objc_alloc(MEMORY[0x277CD9858]) initWithAdjustmentBaseVersion:0 mediaType:2 appropriateForURL:a1[5]];
  [v3 setAdjustmentData:a1[6]];
  [v3 clearRenderedContentURL];

  return [v2 setContentEditingOutput:v3];
}

uint64_t __72__PLVideoView__commitPendingAdjustmentsUpdateAndWait_completionHandler___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    NSLog(&cfstr_FailedToCommit.isa, a3);
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_cancelDelayedCommitPendingAdjustmentsUpdate
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__commitPendingAdjustmentsUpdate object:0];
}

- (void)_enqueueAdjustmentsForCommit
{
  videoAdjustments = [(PFVideoAVObjectBuilder *)self->__videoAVObjectBuilder videoAdjustments];
  adjustmentsToCommit = self->__adjustmentsToCommit;
  if (adjustmentsToCommit != videoAdjustments)
  {
    v5 = videoAdjustments;

    self->__adjustmentsToCommit = v5;
  }

  [(PLVideoView *)self _cancelDelayedCommitPendingAdjustmentsUpdate];

  [(PLVideoView *)self performSelector:sel__commitPendingAdjustmentsUpdate withObject:0 afterDelay:40.0];
}

- (void)slalomRegionEditorDidEndEditing:(id)editing
{
  editingCopy = editing;
  [editing startValue];
  v6 = v5;
  [editingCopy endValue];
  v8 = v7;
  LODWORD(editingCopy) = [MEMORY[0x277D3B4D8] preferredTimeScale];
  memset(&v21, 0, sizeof(v21));
  CMTimeMakeWithSeconds(&start.start, v6, editingCopy);
  CMTimeMakeWithSeconds(&end.start, v8, editingCopy);
  CMTimeRangeFromTimeToTime(&v21, &start.start, &end.start);
  memset(&start, 0, sizeof(start));
  videoAdjustments = [(PFVideoAVObjectBuilder *)self->__videoAVObjectBuilder videoAdjustments];
  if (videoAdjustments)
  {
    [videoAdjustments slowMotionTimeRange];
  }

  else
  {
    memset(&start, 0, sizeof(start));
  }

  end = start;
  range2 = v21;
  if (!CMTimeRangeEqual(&end, &range2))
  {
    [-[PFVideoAVObjectBuilder videoAdjustments](self->__videoAVObjectBuilder "videoAdjustments")];
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x277D3B518]);
    end = v21;
    v13 = [v12 initWithSlowMotionTimeRange:&end rate:{COERCE_DOUBLE(__PAIR64__(v21.duration.flags, v11))}];
    videoAsset = [(PFVideoAVObjectBuilder *)self->__videoAVObjectBuilder videoAsset];
    v15 = [objc_alloc(MEMORY[0x277D3B510]) initWithVideoAsset:videoAsset videoAdjustments:v13];

    self->__videoAVObjectBuilder = v15;
    [(PLVideoView *)self _updateScrubberForSlowMotion];
    videoAVObjectBuilder = self->__videoAVObjectBuilder;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__PLVideoView_slalomRegionEditorDidEndEditing___block_invoke;
    v17[3] = &unk_2782A2200;
    v17[4] = self;
    [(PFVideoAVObjectBuilder *)videoAVObjectBuilder requestPlayerItemWithResultHandler:v17];
    [(PLVideoView *)self _enqueueAdjustmentsForCommit];
    [(PLVideoView *)self _cancelAirplayExportSession];
    if ([(PLVideoView *)self _shouldPlayFlattenedVideo])
    {
      *(self + 651) &= ~2u;
      [(PLVideoView *)self _prepareMoviePlayerIfNeeded];
    }

    if (![(PLVideoView *)self _didEditSlalom])
    {
      [(PLVideoView *)self _setDidEditSlalom:1];
    }
  }
}

- (void)slalomRegionEditorDidBeginEditing:(id)editing withStartHandle:(BOOL)handle
{
  handleCopy = handle;
  [(PLVideoView *)self pause];
  *(self + 650) &= ~1u;

  [(PLVideoView *)self _scrubToSlalomRegionEditorStartHandle:handleCopy];
}

- (void)updateForRotationWithDuration:(double)duration isLandscape:(BOOL)landscape
{
  if (self->_useLandscapeCache != landscape)
  {
    self->_useLandscapeCache = landscape;
    [(PLVideoView *)self _setNeedsReloadScrubberThumbnails:1];
    [(PLVideoView *)self setShowsScrubber:0 duration:0.0];
    if (self->_scaleMode == 2)
    {

      *&v6 = duration;
      [(PLVideoView *)self toggleScaleMode:v6];
    }
  }
}

- (void)_updateScrubberValue
{
  if (!self->_scrubberUpdateTimer || self->_duration == 0.0)
  {
    return;
  }

  [(PLVideoView *)self currentTime];
  [(PLVideoView *)self _scrubberTimeFromMovieTime:?];
  if ((*(self + 650) & 0x20) == 0)
  {
    goto LABEL_13;
  }

  lastScrubbedValue = self->_lastScrubbedValue;
  v4 = -1.0;
  if (lastScrubbedValue == -1.0)
  {
    goto LABEL_13;
  }

  if ((*(self + 650) & 0x40) == 0)
  {
    v4 = v3 - lastScrubbedValue;
    if (v3 <= lastScrubbedValue || v4 >= 0.5)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v3 >= lastScrubbedValue)
  {
LABEL_12:
    self->_lastScrubbedValue = -1.0;
LABEL_13:
    lastScrubbedValue = v3;
  }

LABEL_14:
  [(PLVideoView *)self _scrubberTimeFromMovieTime:self->_duration, v4];
  v8 = v7;
  if (lastScrubbedValue < v7)
  {
    v7 = lastScrubbedValue;
  }

  self->_lastActualValue = fmax(v7, 0.0);
  [(UIMovieScrubber *)self->_scrubber setValue:1 animated:?];
  if (lastScrubbedValue >= v8)
  {

    [(PLVideoView *)self _removeScrubberUpdateTimer];
  }
}

- (void)_updateSlalomRegionEditorRange
{
  Seconds = 0.0;
  v4 = 0.0;
  if ([-[PFVideoAVObjectBuilder videoAdjustments](self->__videoAVObjectBuilder "videoAdjustments")])
  {
    memset(v9, 0, sizeof(v9));
    v8 = 0u;
    videoAdjustments = [(PFVideoAVObjectBuilder *)self->__videoAVObjectBuilder videoAdjustments];
    if (videoAdjustments)
    {
      [videoAdjustments slowMotionTimeRange];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      v8 = 0u;
    }

    *&v7.value = v8;
    v7.epoch = *&v9[0];
    Seconds = CMTimeGetSeconds(&v7);
    v7 = *(v9 + 8);
    v4 = Seconds + CMTimeGetSeconds(&v7);
  }

  [(PLSlalomRegionEditor *)self->_slalomRegionEditor setMinValue:0.0];
  slalomRegionEditor = self->_slalomRegionEditor;
  [(PLVideoView *)self _movieScrubberDuration];
  [(PLSlalomRegionEditor *)slalomRegionEditor setMaxValue:?];
  [(PLSlalomRegionEditor *)self->_slalomRegionEditor setStartValue:Seconds];
  [(PLSlalomRegionEditor *)self->_slalomRegionEditor setEndValue:v4];
}

- (void)_setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    [(PLVideoView *)self _updateSlalomRegionEditorRange];
  }
}

- (void)_playbackFinished
{
  if ((*(self + 650) & 4) != 0)
  {
    [(PLVideoView *)self _setPlaying:0];
    if ((*(self + 650) & 8) != 0)
    {
      [(UIMovieScrubber *)self->_scrubber setThumbIsVisible:0];
    }

    [(PLVideoView *)self _removeScrubberUpdateTimer];
    self->_lastScrubbedValue = -1.0;
    *(self + 650) |= 1u;
    [(PLVideoView *)self _setPlaybackDidBegin:0];
    self->_lastActualValue = 0.0;
    if ([(PLMoviePlayerController *)self->_moviePlayer playbackState])
    {
      duration = self->_duration;
    }

    else
    {
      duration = 0.0;
      [(PLVideoView *)self setCurrentTime:0.0];
    }

    [(PLVideoView *)self _scrubberTimeFromMovieTime:duration];
    [(UIMovieScrubber *)self->_scrubber setValue:0 animated:?];
    [(PLVideoView *)self _showVideoOverlay];
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegate = self->_delegate;

      [(PLVideoViewDelegate *)delegate videoViewDidEndPlayback:self didFinish:1];
    }
  }
}

- (void)_handleScreenConnectionChange:(BOOL)change
{
  if ((*(self + 652) & 2) != 0)
  {
    [(PLVideoView *)self stop];
    [(PLVideoPosterFrameView *)self->_posterFrameView setHidden:1];
    [(PLMoviePlayerView *)[(PLMoviePlayerController *)self->_moviePlayer view] setDestinationPlaceholderHidden:0];

    [(PLVideoView *)self _showVideoOverlay];
  }
}

- (double)_scrubberTimeFromMovieTime:(double)time
{
  if ([(PLVideoView *)self _scrubberTimeNeedsMapping])
  {
    memset(&v8, 0, sizeof(v8));
    CMTimeMakeWithSeconds(&v8, time, [MEMORY[0x277D3B4D8] preferredTimeScale]);
    memset(&v7[32], 0, 24);
    videoAVObjectBuilder = self->__videoAVObjectBuilder;
    if (videoAVObjectBuilder)
    {
      *v7 = v8;
      [(PFVideoAVObjectBuilder *)videoAVObjectBuilder convertToOriginalTimeFromScaledTime:v7 forExport:0];
    }

    *v7 = *&v7[32];
    return CMTimeGetSeconds(v7);
  }

  return time;
}

- (double)_movieTimeFromScrubberTime:(double)time
{
  if ([(PLVideoView *)self _scrubberTimeNeedsMapping])
  {
    memset(&v8, 0, sizeof(v8));
    CMTimeMakeWithSeconds(&v8, time, [MEMORY[0x277D3B4D8] preferredTimeScale]);
    memset(&v7[32], 0, 24);
    videoAVObjectBuilder = self->__videoAVObjectBuilder;
    if (videoAVObjectBuilder)
    {
      *v7 = v8;
      [(PFVideoAVObjectBuilder *)videoAVObjectBuilder convertToScaledTimeFromOriginalTime:v7 forExport:0];
    }

    *v7 = *&v7[32];
    return CMTimeGetSeconds(v7);
  }

  return time;
}

- (double)_thumbnailTimeFromScrubberTime:(double)time
{
  if (![(PLVideoView *)self _scrubberTimeNeedsMapping])
  {
    memset(&v8, 0, sizeof(v8));
    CMTimeMakeWithSeconds(&v8, time, [MEMORY[0x277D3B4D8] preferredTimeScale]);
    memset(&v7[32], 0, 24);
    videoAVObjectBuilder = self->__videoAVObjectBuilder;
    if (videoAVObjectBuilder)
    {
      *v7 = v8;
      [(PFVideoAVObjectBuilder *)videoAVObjectBuilder convertToOriginalTimeFromScaledTime:v7 forExport:0];
    }

    *v7 = *&v7[32];
    return CMTimeGetSeconds(v7);
  }

  return time;
}

- (id)_thumbnailSourceAsset
{
  if ([-[PFVideoAVObjectBuilder videoAdjustments](self->__videoAVObjectBuilder "videoAdjustments")])
  {
    videoAVObjectBuilder = self->__videoAVObjectBuilder;

    return [(PFVideoAVObjectBuilder *)videoAVObjectBuilder videoAsset];
  }

  else
  {
    currentItem = [(AVPlayer *)[(PLMoviePlayerController *)self->_moviePlayer player] currentItem];

    return [(AVPlayerItem *)currentItem asset];
  }
}

- (double)_movieScrubberDuration
{
  duration = self->_duration;
  if ([(PLVideoView *)self _scrubberTimeNeedsMapping])
  {
    videoAsset = [(PFVideoAVObjectBuilder *)self->__videoAVObjectBuilder videoAsset];
    if (videoAsset)
    {
      [videoAsset duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    return CMTimeGetSeconds(&time);
  }

  return duration;
}

- (BOOL)_scrubberTimeNeedsMapping
{
  _shouldShowSlalomEditor = [(PLVideoView *)self _shouldShowSlalomEditor];
  if (_shouldShowSlalomEditor)
  {
    videoAdjustments = [(PFVideoAVObjectBuilder *)self->__videoAVObjectBuilder videoAdjustments];

    LOBYTE(_shouldShowSlalomEditor) = [videoAdjustments hasSlowMotionAdjustments];
  }

  return _shouldShowSlalomEditor;
}

- (void)notifyOfChange:(id)change shouldReloadBlock:(id)block
{
  if (![-[PFVideoAVObjectBuilder videoAdjustments](self->__videoAVObjectBuilder "videoAdjustments")])
  {
LABEL_5:
    v10 = 1;
    goto LABEL_7;
  }

  if ([objc_msgSend(change changeDetailsForObject:{-[PLManagedAsset pl_PHAssetFromPhotoLibrary:](self->_videoCameraImage, "pl_PHAssetFromPhotoLibrary:", pl_appPhotoLibrary())), "assetContentChanged"}])
  {
    expectedNotificationsCount = self->__expectedNotificationsCount;
    v8 = expectedNotificationsCount < 1;
    v9 = expectedNotificationsCount - 1;
    if (!v8)
    {
      v10 = 0;
      self->__expectedNotificationsCount = v9;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:
  v11 = *(block + 2);

  v11(block, v10);
}

- (void)_scrubToMovieTime:(double)time
{
  [(PLVideoView *)self _scrubberTimeFromMovieTime:?];
  v6 = v5;
  [(UIMovieScrubber *)self->_scrubber setValue:?];
  [(PLVideoView *)self setCurrentTime:time];
  self->_lastScrubbedValue = v6;
}

- (double)currentTime
{
  result = 0.0;
  if ((*(self + 651) & 8) != 0)
  {
    [(PLMoviePlayerController *)self->_moviePlayer currentTime];
  }

  self->_cachedCurrentPlaybackTime = result;
  return result;
}

- (void)setCurrentTime:(double)time
{
  self->_cachedCurrentPlaybackTime = time;
  if ((*(self + 651) & 8) != 0)
  {
    [(PLMoviePlayerController *)self->_moviePlayer setCurrentTime:2 timeSnapOption:?];
  }
}

- (void)setLoadMediaImmediately:(BOOL)immediately
{
  if (immediately)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 649) = *(self + 649) & 0xF7 | v3;
}

- (void)setScrubberIsSubview:(BOOL)subview
{
  if (subview)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 649) = *(self + 649) & 0xEF | v3;
}

- (BOOL)canEdit
{
  if ((*(self + 649) & 4) != 0)
  {
    v2 = [(PLVideoView *)self _canEditDuration:self->_duration];
    if (v2)
    {
      LOBYTE(v2) = ![(PLVideoView *)self _localVideoUnavailable];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (void)_setLocalVideoUnavailable:(BOOL)unavailable
{
  if (self->__localVideoUnavailable != unavailable)
  {
    self->__localVideoUnavailable = unavailable;
    [(PLVideoView *)self _updateScrubberVisibilityWithDuration:0.0];
  }
}

- (void)setCanEdit:(BOOL)edit
{
  v3 = *(self + 649);
  if (((((v3 & 4) == 0) ^ edit) & 1) == 0)
  {
    if (edit)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 649) = v3 & 0xFB | v4;
    [(PLVideoView *)self _updateScrubberVisibilityWithDuration:0.0];
  }
}

- (void)notifyRequiredResourcesDownloaded
{
  if ([(PLVideoView *)self _localVideoUnavailable])
  {

    [(PLVideoView *)self _fetchLocalContentEditingInput];
  }
}

- (void)setShowsScrubber:(BOOL)scrubber duration:(double)duration
{
  v4 = *(self + 649);
  if (((((v4 & 2) == 0) ^ scrubber) & 1) == 0)
  {
    if (scrubber)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(self + 649) = v4 & 0xFD | v7;
    if (scrubber && self->_prepareMoviePlayerForScrubberAutomatically)
    {
      dispatch_time(0, 200000000);
      pl_dispatch_after();
    }

    [(PLVideoView *)self _updateScrubberVisibilityWithDuration:duration];
  }
}

uint64_t __41__PLVideoView_setShowsScrubber_duration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupMoviePlayerIfNecessary];
  v2 = *(a1 + 32);

  return [v2 _prepareMoviePlayerIfNeeded];
}

- (void)setShowsPlayOverlay:(BOOL)overlay
{
  v4 = [(PLVideoView *)self _canAccessVideo]&& overlay;
  v5 = *(self + 649);
  if (v4 != (v5 & 1))
  {
    *(self + 649) = v5 & 0xFE | v4;
    if (!v4 || (*(self + 650) & 4) != 0)
    {

      [(PLVideoView *)self _hideVideoOverlay:0];
    }

    else
    {

      [(PLVideoView *)self _showVideoOverlay];
    }
  }
}

- (void)_updatePosterFrameVisibility
{
  v10 = *MEMORY[0x277D85DE8];
  view = [(PLMoviePlayerController *)self->_moviePlayer view];
  [(PLMoviePlayerView *)view setScaleMode:self->_scaleMode];
  if ([(PLMoviePlayerView *)view destinationPlaceholderStyle])
  {
    v4 = (*(self + 652) & 2) == 0;
  }

  else
  {
    v4 = 0;
  }

  _playerIsAirplay = [(PLVideoView *)self _playerIsAirplay];
  if ((*(self + 651) & 8) == 0)
  {
    goto LABEL_5;
  }

  if (_playerIsAirplay)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  if ((*(self + 651) & 0x10) == 0 || v4)
  {
    goto LABEL_5;
  }

LABEL_13:
  if ([(PLVideoView *)self _shouldStreamVideo])
  {
    [(PLMoviePlayerController *)self->_moviePlayer playbackRate];
    if (v8 < 1.0)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_6:
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) update poster frame visibility to %d", v9, 8u);
  }

  [(PLVideoPosterFrameView *)self->_posterFrameView setHidden:v6 ^ 1u];
  [(PLMoviePlayerView *)view setDestinationPlaceholderHidden:v4];
}

- (void)_updatePosterImageView
{
  if ([(PLVideoView *)self _mediaIsVideo]|| [(PLVideoView *)self _mediaIsCloudSharedStreamedVideo])
  {
    snapshotImage = self->_snapshotImage;
    if (!snapshotImage)
    {
      if (!self->_posterFrameImage && [(PLVideoView *)self _didSetPhotoData])
      {
        if (PLGetPhotoLibraryClient() == 1)
        {
          pathForVideoPreviewFile = [(PLManagedAsset *)self->_videoCameraImage pathForVideoPreviewFile];
          posterFrameImage = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:pathForVideoPreviewFile];
          self->_posterFrameImage = posterFrameImage;
        }

        else
        {
          posterFrameImage = self->_posterFrameImage;
        }

        if (!posterFrameImage)
        {
          v6 = [objc_msgSend(objc_msgSend(MEMORY[0x277D3B228] "defaultFormatChooser")];
          v7 = [MEMORY[0x277D3AC90] newSynchronousImageForAsset:self->_videoCameraImage withFormat:v6 allowPlaceholder:1 outImageProperties:0 outDeliveredPlaceholder:0];
          self->_posterFrameImage = v7;
          if (!v7)
          {
            [(PLVideoView *)self pathForVideoFile];
            PLPreviewImageAndDurationForVideoAtPath();
            self->_posterFrameImage = 0;
          }
        }
      }

      self->_scaleMode = 1;
      v8 = self->_posterFrameImage;
      if (v8)
      {
        [(UIImage *)v8 size];
        [(PLVideoView *)self _updateScaleModeForSize:?];
      }

      else if ([(PLVideoView *)self _canCreateMetadata])
      {
        *(self + 652) |= 0x20u;
      }

      snapshotImage = self->_posterFrameImage;
    }

    [(PLVideoPosterFrameView *)self->_posterFrameView setScaleMode:self->_scaleMode];
    [(PLVideoPosterFrameView *)self->_posterFrameView setImage:snapshotImage];
  }
}

- (void)_updateSnapshotImage
{
  if ((*(self + 651) & 8) != 0 && (*(self + 651) & 0x10) != 0 && ![(PLMoviePlayerController *)self->_moviePlayer isExternalPlayback])
  {

    self->_snapshotImage = [(PLVideoView *)self _videoSnapshot];

    [(PLVideoView *)self _updatePosterImageView];
  }
}

- (void)setPosterFrameImage:(id)image
{
  if (image)
  {
    posterFrameImage = self->_posterFrameImage;
    if (posterFrameImage != image)
    {

      self->_posterFrameImage = image;

      [(PLVideoView *)self _updatePosterImageView];
    }
  }
}

- (void)didMoveToSuperview
{
  superview = [(PLVideoView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [superview bounds];
    [(PLVideoView *)self setBounds:?];
    UIRectGetCenter();
    [(PLVideoView *)self setCenter:?];
    view = [(PLMoviePlayerController *)self->_moviePlayer view];
    if ([(PLMoviePlayerView *)view superview]== self)
    {
      [(PLVideoView *)self bounds];

      [(PLMoviePlayerView *)view setFrame:?];
    }
  }
}

- (void)willMoveToSuperview:(id)superview
{
  if (superview)
  {
    if ((*(self + 650) & 4) != 0)
    {
      [(PLVideoView *)self _resetScrubberUpdateTimer];
    }
  }

  else
  {
    [(PLVideoView *)self _removeScrubberUpdateTimer];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PLVideoView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = PLVideoView;
  [(PLVideoView *)&v16 setFrame:x, y, width, height];
  if (self->_scrubber)
  {
    v17.origin.x = v9;
    v17.origin.y = v11;
    v17.size.width = v13;
    v17.size.height = v15;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    if (!CGRectEqualToRect(v17, v18))
    {
      [(PLVideoView *)self _setNeedsReloadScrubberThumbnails:1];
    }
  }

  if ((*(self + 650) & 2) != 0 && (*(self + 649) & 0x20) == 0)
  {
    [(UIMovieScrubber *)self->_scrubber setDataSource:0];
    [(UIMovieScrubber *)self->_scrubber setDelegate:0];
  }
}

- (void)viewDidDisappear
{
  if ((*(self + 649) & 0x20) != 0)
  {
    [(PLVideoView *)self _setPlaybackDidBegin:0];
    [PLVideoView cancelPreviousPerformRequestsWithTarget:self];
    [(PLVideoView *)self setShowsScrubber:0 duration:0.0];
    [(PLVideoView *)self _hideVideoOverlay:0];
    *(self + 649) &= ~0x20u;
    if ((*(self + 652) & 4) != 0)
    {
      *(self + 652) &= ~4u;
      [(PLVideoView *)self _removeScrubber];
    }

    [(PLVideoView *)self stop];
    [(PLMoviePlayerController *)self->_moviePlayer requestToResignAsActiveController];
    [(PLMoviePlayerController *)self->_moviePlayer tearDownTVOutWindow];
  }

  [(PLVideoView *)self _cancelAirplayExportSession];

  [(PLVideoView *)self _commitPendingAdjustmentsUpdateAndWait:0 completionHandler:0];
}

- (void)viewDidAppear
{
  [(PLVideoView *)self _updateScrubberVisibilityWithDuration:0.0];
  if ((*(self + 650) & 4) == 0 && (*(self + 651) & 0x40) == 0 && ![(PLVideoView *)self shouldPlayVideoWhenViewAppears])
  {
    [(PLVideoView *)self _showVideoOverlay];
  }

  if ([(PLVideoView *)self loadMediaImmediately])
  {
    [(PLVideoView *)self _prepareMoviePlayerIfNeeded];
  }

  if ([(PLVideoView *)self shouldPlayVideoWhenViewAppears])
  {
    [(PLVideoView *)self play];

    [(PLVideoView *)self setShouldPlayVideoWhenViewAppears:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  *(self + 649) |= 0x40u;
  if ((*(self + 649) & 0x20) == 0)
  {
    *(self + 649) |= 0x20u;
    [(PLMoviePlayerController *)self->_moviePlayer requestToBecomeActiveController];
    [(PLVideoView *)self _updatePosterImageView];
    [(PLVideoView *)self _updatePosterFrameVisibility];
    if ((*(self + 650) & 4) != 0 || [(PLVideoView *)self shouldPlayVideoWhenViewAppears])
    {

      [(PLVideoView *)self _hideVideoOverlay:1];
    }

    else
    {

      [(PLVideoView *)self _showVideoOverlay];
    }
  }
}

- (void)_updateScrubberVisibilityWithDuration:(double)duration
{
  if ((*(self + 649) & 2) != 0 && (*(self + 651) & 8) != 0 && self->_duration > 0.0 && [(PLVideoView *)self _canAccessVideo])
  {
    [(PLVideoView *)self _createScrubberIfNeeded];
    [(UIMovieScrubber *)self->_scrubber setEditable:[(PLVideoView *)self canEdit]];
    [(PLVideoView *)self _reloadScrubberThumbnailsIfNeeded];
    v5 = self + 651;
    v6 = *(self + 651);
    if (v6 < 0)
    {
      return;
    }

    v7 = 0x80;
    v8 = 1;
  }

  else
  {
    v5 = self + 651;
    v6 = *(self + 651);
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

    v8 = 0;
    v7 = 0;
  }

  *v5 = v7 | v6 & 0x7F;
  if ((*(self + 649) & 0x10) != 0)
  {
    [(UIMovieScrubber *)self->_scrubber setEnabled:v8];
  }

  [(PLVideoView *)self _updateSlalomRegionEditorState];
  [(PLVideoView *)self _updateScrubberFrame];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__PLVideoView__updateScrubberVisibilityWithDuration___block_invoke;
  v9[3] = &unk_2782A2020;
  v9[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v9 animations:duration];
}

uint64_t __53__PLVideoView__updateScrubberVisibilityWithDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 1.0;
  if (*(v1 + 651) >= 0)
  {
    v2 = 0.0;
  }

  return [*(v1 + 496) setAlpha:v2];
}

- (void)stop
{
  [(PLVideoView *)self _removeScrubberUpdateTimer];
  [(PLVideoView *)self _removePlaySpinner];
  if ((*(self + 650) & 8) != 0)
  {
    [(UIMovieScrubber *)self->_scrubber setThumbIsVisible:0];
  }

  v3 = *(self + 650);
  if ((v3 & 4) != 0 || (*(self + 652) & 2) != 0)
  {
    Log = PLPhotoSharingGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) pause due to stop", v5, 2u);
    }

    [(PLMoviePlayerController *)self->_moviePlayer pause];
    [(PLVideoView *)self _setPlaying:0];
    [(PLVideoView *)self _setPlaybackDidBegin:0];
    self->_lastScrubbedValue = -1.0;
    if (v3 & 4) != 0 && self->_delegate && (objc_opt_respondsToSelector())
    {
      [(PLVideoViewDelegate *)self->_delegate videoViewDidEndPlayback:self didFinish:0];
    }
  }
}

- (void)pause
{
  [(PLVideoView *)self _removeScrubberUpdateTimer];
  [(PLVideoView *)self _removePlaySpinner];
  [(PLVideoView *)self _setPlaying:0];
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) pause due to video view pause", v4, 2u);
  }

  [(PLMoviePlayerController *)self->_moviePlayer pause];
  if ((*(self + 650) & 8) != 0 && (*(self + 650) & 0x20) == 0)
  {
    self->_lastScrubbedValue = -1.0;
    [(UIMovieScrubber *)self->_scrubber setThumbIsVisible:0];
  }

  if (*(self + 650) & 0x20) == 0 && self->_delegate && (objc_opt_respondsToSelector())
  {
    [(PLVideoViewDelegate *)self->_delegate videoViewDidEndPlayback:self didFinish:0];
  }
}

- (void)play
{
  v22 = *MEMORY[0x277D85DE8];
  self->_videoStreamingStartTime = CFAbsoluteTimeGetCurrent();
  [(PLVideoView *)self _insertMoviePlayerViewIfNecessary];
  [(PLVideoView *)self _hideVideoOverlay:1];
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = objc_opt_class();
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) play in %@", &buf, 0xCu);
  }

  if (![(PLVideoView *)self _mediaIsCloudSharedStreamedVideo])
  {
    goto LABEL_8;
  }

  if ([(PLVideoView *)self _canPlayCloudSharedStreamedVideoWithLocalVideo])
  {
    v4 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      if ([(PLVideoView *)self _shouldStreamVideo])
      {
        [(PLVideoView *)self _displayPlaySpinner];
      }

      _prepareMoviePlayerIfNeeded = [(PLVideoView *)self _prepareMoviePlayerIfNeeded];
      v8 = *(self + 650);
      [(PLVideoView *)self _setPlaying:1];
      if (_prepareMoviePlayerIfNeeded)
      {
        if (*(self + 650))
        {
          if ((*(self + 650) & 8) != 0)
          {
            [(PLVideoView *)self _scrubberStartTime];
            [(UIMovieScrubber *)self->_scrubber setValue:0 animated:?];
            [(PLVideoView *)self startTime];
            [(PLVideoView *)self setCurrentTime:?];
            [(PLVideoView *)self endTime];
            CMTimeMakeWithSeconds(&v19, v13, 1);
            currentItem = [(AVPlayer *)[(PLMoviePlayerController *)self->_moviePlayer player] currentItem];
            buf = v19;
            [(AVPlayerItem *)currentItem setForwardPlaybackEndTime:&buf];
            [(PLMoviePlayerController *)self->_moviePlayer play];
          }

          else
          {
            [(UIMovieScrubber *)self->_scrubber setValue:0 animated:0.0];
            [(PLMoviePlayerController *)self->_moviePlayer playFromBeginning];
          }

          *(self + 650) &= ~1u;
        }

        else
        {
          [(PLMoviePlayerController *)self->_moviePlayer play];
        }

        [(PLVideoView *)self _verifyOrRestartPlayback];
        if (v8 & 4) == 0 && self->_delegate && (objc_opt_respondsToSelector())
        {
          [(PLVideoViewDelegate *)self->_delegate videoViewDidBeginPlayback:self];
        }
      }

      return;
    }

    pathToOriginalVideo = self->_pathToOriginalVideo;
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = pathToOriginalVideo;
    v6 = "(streamed-video-playback) will play streamed video using original video at path %@";
LABEL_7:
    _os_log_impl(&dword_21ACCD000, v4, OS_LOG_TYPE_DEFAULT, v6, &buf, 0xCu);
    goto LABEL_8;
  }

  cachedNonPersistedVideoPlaybackURLError = [(PLManagedAsset *)self->_videoCameraImage cachedNonPersistedVideoPlaybackURLError];
  if (cachedNonPersistedVideoPlaybackURLError)
  {
    v10 = cachedNonPersistedVideoPlaybackURLError;
    v11 = PLLocalizedFrameworkString();
    localizedDescription = [v10 localizedDescription];
    [-[PLVideoView window](self "window")];
    [(PLManagedAsset *)self->_videoCameraImage setCachedNonPersistedVideoPlaybackURLError:0];
    return;
  }

  [(PLVideoView *)self _displayPlaySpinner];
  if ([(PLManagedAsset *)self->_videoCameraImage cachedNonPersistedVideoPlaybackURL])
  {
    v4 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    cachedNonPersistedVideoPlaybackURL = [(PLManagedAsset *)self->_videoCameraImage cachedNonPersistedVideoPlaybackURL];
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = cachedNonPersistedVideoPlaybackURL;
    v6 = "(streamed-video-playback) already have a cachedNonPersistedVideoPlaybackURL %@";
    goto LABEL_7;
  }

  if ([MEMORY[0x277D3AD48] isCellularConnection])
  {
    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_21ACCD000, v16, OS_LOG_TYPE_DEFAULT, "Playing 360p video for cellular connection.", &buf, 2u);
    }

    v17 = 6;
  }

  else
  {
    v17 = 7;
  }

  videoCameraImage = self->_videoCameraImage;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __19__PLVideoView_play__block_invoke;
  v20[3] = &unk_2782A2020;
  v20[4] = self;
  [MEMORY[0x277D3AD48] requestVideoPlaybackURLForAsset:videoCameraImage videoType:v17 completion:v20];
}

uint64_t __19__PLVideoView_play__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 408) cachedNonPersistedVideoPlaybackURL];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(streamed-video-playback) will play video for %@", &v5, 0xCu);
  }

  result = [*(*(a1 + 32) + 408) cachedNonPersistedVideoPlaybackURL];
  if (result)
  {
    return [*(a1 + 32) play];
  }

  return result;
}

- (void)_removePlaySpinner
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  [(UIActivityIndicatorView *)self->_shadowSpinner stopAnimating];
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  [(UIActivityIndicatorView *)self->_shadowSpinner removeFromSuperview];
  self->_spinner = 0;
  self->_shadowSpinner = 0;
}

- (void)_displayPlaySpinner
{
  if (!self->_shadowSpinner)
  {
    v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    self->_shadowSpinner = v3;
    [(PLVideoView *)self addSubview:v3];
  }

  if (!self->_spinner)
  {
    self->_spinner = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    -[UIActivityIndicatorView setColor:](self->_spinner, "setColor:", [MEMORY[0x277D75348] whiteColor]);
    [(PLVideoView *)self insertSubview:self->_spinner aboveSubview:self->_shadowSpinner];
  }

  [(PLVideoView *)self setNeedsLayout];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  shadowSpinner = self->_shadowSpinner;

  [(UIActivityIndicatorView *)shadowSpinner startAnimating];
}

- (void)_verifyOrRestartPlayback
{
  v13 = *MEMORY[0x277D85DE8];
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(self + 650) >> 2) & 1;
    v5 = (*(self + 651) >> 5) & 1;
    v10[0] = 67109376;
    v10[1] = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) _verifyOrRestartPlayback playing %u didBuffer %u", v10, 0xEu);
  }

  if ((*(self + 650) & 4) != 0 && (*(self + 651) & 0x20) != 0)
  {
    [(PLMoviePlayerController *)self->_moviePlayer playbackRate];
    v7 = v6;
    v8 = PLPhotoSharingGetLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 <= 0.0)
    {
      if (v9)
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_21ACCD000, v8, OS_LOG_TYPE_DEFAULT, "(video-playback) _verifyOrRestartPlayback telling movie player to play", v10, 2u);
      }

      [(PLVideoView *)self _removePlaySpinner];
      [(PLMoviePlayerController *)self->_moviePlayer playDueToEnoughData];
    }

    else
    {
      if (v9)
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_21ACCD000, v8, OS_LOG_TYPE_DEFAULT, "(video-playback) _verifyOrRestartPlayback rate > 0", v10, 2u);
      }

      [(PLVideoView *)self _didBeginPlayback];
    }

    if (self->_videoStreamingStartTime > 0.0)
    {
      self->_videoStreamingStartTime = 0.0;
    }

    [(PLVideoView *)self _removeScrubberUpdateTimer];
    [(PLVideoView *)self _resetScrubberUpdateTimer];
  }
}

- (void)_didBeginPlayback
{
  [(PLVideoView *)self _removePlaySpinner];
  [(UIMovieScrubber *)self->_scrubber setThumbIsVisible:1];
  if ((*(self + 652) & 2) == 0)
  {
    [(PLVideoView *)self _setPlaybackDidBegin:1];
    [(PLVideoView *)self _hideVideoOverlay:1];
    [(PLVideoView *)self _hideTrimMessageView:1];
    if (self->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [(PLVideoViewDelegate *)self->_delegate videoViewDidBeginPlayback:self];
      }
    }
  }

  [(PLVideoView *)self _updatePosterFrameVisibility];
}

- (void)handleDoubleTap
{
  if (![(PLMoviePlayerView *)[(PLMoviePlayerController *)self->_moviePlayer view] destinationPlaceholderStyle])
  {
    LODWORD(v3) = 1045220557;

    [(PLVideoView *)self toggleScaleMode:v3];
  }
}

- (void)toggleScaleMode:(float)mode
{
  view = [(PLMoviePlayerController *)self->_moviePlayer view];
  if (self->_scaleMode == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  self->_scaleMode = v6;
  [(PLMoviePlayerView *)view setScaleMode:mode duration:?];
  [(PLVideoView *)self _invalidateSnapshotImage];
  posterFrameView = self->_posterFrameView;
  if (posterFrameView)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__PLVideoView_toggleScaleMode___block_invoke;
    v8[3] = &unk_2782A2020;
    selfCopy = self;
    if (mode <= 0.0)
    {
      [(PLVideoPosterFrameView *)posterFrameView setScaleMode:self->_scaleMode];
      [(PLVideoPosterFrameView *)selfCopy->_posterFrameView layoutIfNeeded];
    }

    else
    {
      [MEMORY[0x277D75D18] animateWithDuration:v8 animations:mode];
    }
  }
}

uint64_t __31__PLVideoView_toggleScaleMode___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 440) setScaleMode:*(*(a1 + 32) + 488)];
  v2 = *(*(a1 + 32) + 440);

  return [v2 layoutIfNeeded];
}

- (id)_videoSnapshot
{
  videoView = [(PLMoviePlayerView *)[(PLMoviePlayerController *)self->_moviePlayer view] videoView];
  v4 = videoView;
  if (videoView)
  {
    if ((*(self + 651) & 8) != 0 && (v5 = [(UIView *)videoView _createIOSurfaceWithPadding:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)]) != 0)
    {
      v6 = v5;
      IOSurfaceLock(v5, 1u, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v6);
      BytesPerRow = IOSurfaceGetBytesPerRow(v6);
      Width = IOSurfaceGetWidth(v6);
      Height = IOSurfaceGetHeight(v6);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v12 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
      CGColorSpaceRelease(DeviceRGB);
      if (v12)
      {
        [-[PLVideoView px_screen](self "px_screen")];
        v14 = v13;
        CGContextTranslateCTM(v12, 0.0, Height);
        CGContextScaleCTM(v12, v14, -v14);
        CGAffineTransformMakeScale(&v23, v14, -v14);
        CGContextSetBaseCTM();
        Image = CGBitmapContextCreateImage(v12);
        if (Image && (v16 = Image, [(UIView *)v4 videoRect], v24.origin.x = v14 * v17, v24.origin.y = v14 * v18, v24.size.width = v14 * v19, v24.size.height = v14 * v20, v21 = CGImageCreateWithImageInRect(v16, v24), CFRelease(v16), v21))
        {
          v4 = [MEMORY[0x277D755B8] imageWithCGImage:v21 scale:0 orientation:v14];
          CFRelease(v21);
        }

        else
        {
          v4 = 0;
        }

        CFRelease(v12);
      }

      else
      {
        v4 = 0;
      }

      IOSurfaceUnlock(v6, 1u, 0);
      CFRelease(v6);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (id)newPreviewImageData:(id *)data
{
  asset = [(AVPlayerItem *)[(AVPlayer *)[(PLMoviePlayerController *)self->_moviePlayer player] currentItem] asset];
  v6 = [MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5EA8] forAsset:asset];
  if ([v6 count])
  {
    [objc_msgSend(v6 objectAtIndex:{0), "naturalSize"}];
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v9 = v7 / v8;
  v10 = rint(v9 * 110.0);
  v11 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:asset];
  [v11 setApertureMode:*MEMORY[0x277CE5CA8]];
  [v11 setMaximumSize:{v10, 110.0}];
  [v11 setAppliesPreferredTrackTransform:1];
  v19 = 0;
  v12 = MEMORY[0x277D3B450];
  [(PLVideoView *)self startTime];
  CMTimeMakeWithSeconds(&v18, v13, 1);
  v14 = [v12 copyCGImageFromImageGenerator:v11 atTime:&v18 actualTime:0 error:&v19];
  if (!v14)
  {
    [(PLVideoView *)self startTime];
    NSLog(&cfstr_UnableToCopyCg.isa, v15, v19);
  }

  if (data)
  {
    *data = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v14];
  }

  v16 = UIImageJPEGRepresentation([MEMORY[0x277D755B8] imageWithCGImage:v14], 0.899999976);
  CGImageRelease(v14);

  return v16;
}

- (double)endTime
{
  [(UIMovieScrubber *)self->_scrubber trimEndValue];
  if (v3 == 0.0)
  {
    return self->_duration;
  }

  [(PLVideoView *)self _movieTimeFromScrubberTime:?];
  return result;
}

- (double)startTime
{
  [(PLVideoView *)self _scrubberStartTime];

  [(PLVideoView *)self _movieTimeFromScrubberTime:?];
  return result;
}

- (void)_reset
{
  [(PLVideoView *)self _removeScrubberUpdateTimer];
  [MEMORY[0x277CD9FF0] flush];
  [(PLVideoView *)self _setPlaying:0];
  Log = PLPhotoSharingGetLog();
  if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) pause due to reset", v4, 2u);
  }

  [(PLMoviePlayerController *)self->_moviePlayer pause];
  [(PLMoviePlayerController *)self->_moviePlayer setPlayerItem:0 startTime:0.0];
  *(self + 651) &= ~8u;
  *(self + 651) &= ~0x10u;
  *(self + 651) &= ~2u;
  *(self + 651) &= ~0x20u;
  [(PLVideoView *)self _setPlaybackDidBegin:0];

  self->__videoAVObjectBuilder = 0;
  [(PLVideoView *)self _setDuration:self->_duration];
  self->_cachedCurrentPlaybackTime = 0.0;
  [(UIMovieScrubber *)self->_scrubber setEditing:0];
  [(UIMovieScrubber *)self->_scrubber setValue:0.0];
  [(UIMovieScrubber *)self->_scrubber setDelegate:0];
  if ((*(self + 650) & 0x10) != 0)
  {
    [(UIMovieScrubber *)self->_scrubber setEditable:0];
    *(self + 650) &= ~0x10u;
  }

  self->_cachedThumbnails = 0;
  self->_bakedPortraitThumbnails = 0;

  self->_bakedLandscapeThumbnails = 0;
  self->_landscapeSummaryThumbnailTimestamps = 0;

  self->_portraitSummaryThumbnailTimestamps = 0;
  self->_thumbnailSize = *MEMORY[0x277CBF3A8];
  *(self + 650) &= ~0x80u;
  [(PLVideoView *)self _updatePosterFrameVisibility];
  [(PLVideoView *)self viewDidAppear];
}

- (void)_setPlaybackDidBegin:(BOOL)begin
{
  if (begin)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 652) = *(self + 652) & 0xFD | v3;
  [(PLVideoView *)self _updatePosterFrameVisibility];
}

- (void)_setPlaying:(BOOL)playing
{
  if (playing)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 650) = *(self + 650) & 0xFB | v3;
}

- (void)_updateSlalomRegionEditorState
{
  if ((*(self + 649) & 4) == 0 || [(PLVideoView *)self _localVideoUnavailable]|| [(PLVideoView *)self isEditing])
  {
    v3 = 0;
  }

  else
  {
    v3 = (*(self + 649) & 0x10) == 0 || *(self + 651) < 0;
  }

  slalomRegionEditor = self->_slalomRegionEditor;

  [(PLSlalomRegionEditor *)slalomRegionEditor setEnabled:v3];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v5 = *(self + 650);
  v6 = v5 & 8;
  if ((((v5 & 8) == 0) ^ editing))
  {
LABEL_7:
    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }

  animatedCopy = animated;
  if (editing)
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *(self + 650) = v5 & 0xF7 | v8;
  [(PLVideoView *)self _updateForEditing];
  [(UIMovieScrubber *)self->_scrubber setEditing:(*(self + 650) >> 3) & 1 animated:animatedCopy];
  if ((*(self + 650) & 8) == 0)
  {
    [(UIMovieScrubber *)self->_scrubber value];
    [(PLVideoView *)self _movieTimeFromScrubberTime:?];
    [(PLVideoView *)self setCurrentTime:?];
    v6 = *(self + 650) & 8;
    goto LABEL_7;
  }

LABEL_8:
  *(self + 650) |= 1u;
  *(self + 649) &= ~0x80u;

  [(PLVideoView *)self pause];
}

- (void)showTrimMessage:(id)message withBottomY:(float)y
{
  if ((*(self + 650) & 4) == 0)
  {
    trimMessageView = self->_trimMessageView;
    if (!trimMessageView)
    {
      [(PLVideoView *)self bounds];
      v11 = CGRectInset(v10, 10.0, 0.0);
      v8 = [[PLVideoEditingOverlayView alloc] initWithFrame:v11.origin.x, (y + -90.0), v11.size.width, 90.0];
      self->_trimMessageView = v8;
      [(PLVideoEditingOverlayView *)v8 setTitle:message];
      [(PLVideoEditingOverlayView *)self->_trimMessageView setBody:PLLocalizedFrameworkString()];
      [(PLVideoEditingOverlayView *)self->_trimMessageView setAutoresizingMask:10];
      [(PLVideoView *)self insertSubview:self->_trimMessageView aboveSubview:self->_posterFrameView];
      trimMessageView = self->_trimMessageView;
    }

    [(PLVideoEditingOverlayView *)trimMessageView setAlpha:message, 1.0];
  }
}

- (void)_createImageGenerators
{
  _thumbnailSourceAsset = [(PLVideoView *)self _thumbnailSourceAsset];
  v4 = [[PLAssetImageGenerator alloc] initWithAsset:_thumbnailSourceAsset];
  v5 = [[PLAssetImageGenerator alloc] initWithAsset:_thumbnailSourceAsset];
  self->_imageGenerators = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v4, v5, 0}];
}

- (void)_configureImageGenerator:(id)generator thumbnailSize:(CGSize)thumbnailSize forSummaryThumbnails:(BOOL)thumbnails
{
  if (thumbnailSize.width == *MEMORY[0x277CBF3A8] && thumbnailSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    thumbnailSize = self->_thumbnailSize;
  }

  [generator setMaximumSize:{thumbnailSize.width, thumbnailSize.height}];
  [generator setApertureMode:*MEMORY[0x277CE5CA8]];
  [generator setAppliesPreferredTrackTransform:1];
  if (!thumbnails && ([(PLManagedAsset *)self->_videoCameraImage isStreamedVideo]& 1) == 0)
  {
    v11 = *MEMORY[0x277CC08F0];
    v10 = v11;
    v12 = *(MEMORY[0x277CC08F0] + 16);
    v9 = v12;
    [generator setRequestedTimeToleranceBefore:&v11];
    v11 = v10;
    v12 = v9;
    [generator setRequestedTimeToleranceAfter:&v11];
  }
}

- (void)_serviceImageGenerationRequests
{
  [objc_msgSend(-[NSArray firstObject](self->_imageGenerators "firstObject")];
  if (v4 != self->_thumbnailSize.width || v3 != self->_thumbnailSize.height)
  {
    [(PLVideoView *)self _clearImageGenerators];
    [(PLVideoView *)self _createImageGenerators];
  }

  pl_dispatch_sync();
}

void __46__PLVideoView__serviceImageGenerationRequests__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v1 = *(*(a1 + 32) + 616);
  v2 = [v1 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (!v2)
  {
    return;
  }

  v3 = *v31;
  while (2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v31 != v3)
      {
        objc_enumerationMutation(v1);
      }

      v18 = *(*(&v30 + 1) + 8 * i);
      if (([v18 inUse] & 1) == 0)
      {
        v5 = 656;
        v17 = [*(*(a1 + 32) + 656) count];
        v6 = *(a1 + 32);
        if (!v17)
        {
          v5 = 664;
          if (![*(v6 + 664) count])
          {
            continue;
          }

          v6 = *(a1 + 32);
        }

        v7 = *(v6 + v5);
        *(*(a1 + 32) + v5) = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v7)
        {
          [v18 setInUse:1];
          v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v7, "count")}];
          v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v10 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v10)
          {
            v11 = *v27;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v27 != v11)
                {
                  objc_enumerationMutation(v7);
                }

                v13 = *(*(&v26 + 1) + 8 * j);
                [v13 doubleValue];
                [*(a1 + 32) _thumbnailTimeFromScrubberTime:?];
                v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];
                [v9 addObject:v14];
                v21 = 0uLL;
                v22 = 0;
                if (v14)
                {
                  [v14 CMTimeValue];
                }

                v24 = v21;
                v25 = v22;
                [v8 setObject:v13 forKey:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCMTime:", &v24)}];
              }

              v10 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v10);
          }

          v15 = [v18 imageGenerator];
          [*(a1 + 32) _configureImageGenerator:v15 thumbnailSize:v17 != 0 forSummaryThumbnails:{*(*(a1 + 32) + 528), *(*(a1 + 32) + 536)}];
          *&v21 = 0;
          *(&v21 + 1) = &v21;
          v22 = 0x2020000000;
          v23 = 0;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __46__PLVideoView__serviceImageGenerationRequests__block_invoke_2;
          v20[3] = &unk_2782A21D8;
          v16 = *(a1 + 32);
          v20[4] = v8;
          v20[5] = v16;
          v20[8] = &v21;
          v20[6] = v7;
          v20[7] = v18;
          [v15 generateCGImagesAsynchronouslyForTimes:v9 completionHandler:v20];

          _Block_object_dispose(&v21, 8);
          return;
        }
      }
    }

    v2 = [v1 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v2)
    {
      continue;
    }

    break;
  }
}

uint64_t __46__PLVideoView__serviceImageGenerationRequests__block_invoke_2(uint64_t a1, int a2, CGImageRef image)
{
  if (image)
  {
    CGImageRetain(image);
  }

  pl_dispatch_async();
  v4 = ++*(*(*(a1 + 64) + 8) + 24);
  result = [*(a1 + 48) count];
  if (v4 == result)
  {
    pl_dispatch_sync();
    return pl_dispatch_async();
  }

  return result;
}

void __46__PLVideoView__serviceImageGenerationRequests__block_invoke_3(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    v2 = *(a1 + 32);
    v6 = *(a1 + 64);
    v7 = *(a1 + 80);
    v3 = [v2 objectForKey:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCMTime:", &v6)}];
    if (v3)
    {
      v4 = v3;
      [*(*(a1 + 40) + 672) setThumbnailImage:*(a1 + 56) forTimestamp:v3];
      [*(*(a1 + 40) + 688) setObject:*(a1 + 56) forKey:v4];
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CGImageRelease(v5);
  }
}

uint64_t __46__PLVideoView__serviceImageGenerationRequests__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _serviceImageGenerationRequests];
  result = [*(a1 + 32) _canCreateMetadata];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _saveCachedThumbnailsIfNecessary];
  }

  return result;
}

uint64_t __67__PLVideoView__addThumbnailRequestForTimestamp_isSummaryThumbnail___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = &OBJC_IVAR___PLVideoView__summaryThumbnailRequestTimestamps;
  }

  else
  {
    v1 = &OBJC_IVAR___PLVideoView__detailThumbnailRequestTimestamps;
  }

  return [*(*(a1 + 32) + *v1) addObject:*(a1 + 40)];
}

- (void)movieScrubber:(id)scrubber widthDelta:(float)delta originXDelta:(float)xDelta
{
  [(UIMovieScrubber *)self->_scrubber frame];
  scrubber = self->_scrubber;
  v9 = v8 + xDelta;

  [(UIMovieScrubber *)scrubber setFrame:v9];
}

- (void)movieScrubberDidFinishRequestingThumbnails:(id)thumbnails
{
  if ((*(self + 651) & 4) != 0)
  {
    *(self + 652) &= ~4u;
  }

  [(PLVideoView *)self _serviceImageGenerationRequests];
}

- (void)_didScrubToValue:(double)value withHandle:(int)handle
{
  [(PLVideoView *)self _hideVideoOverlay:1];
  [(PLVideoView *)self _hideTrimMessageView:1];
  if ((*(self + 650) & 0x20) != 0)
  {
    *(self + 650) &= ~1u;
    *(self + 650) = *(self + 650) & 0xBF | ((self->_lastScrubbedValue < value) << 6);
    self->_lastScrubbedValue = value;
  }

  if ((handle - 1) <= 1 && (*(self + 649) & 0x80000000) == 0)
  {
    *(self + 650) |= 1u;
    self->_lastScrubbedValue = -1.0;
  }

  [(PLVideoView *)self _movieTimeFromScrubberTime:value];

  [(PLVideoView *)self setCurrentTime:?];
}

- (void)movieScrubberDidEndScrubbing:(id)scrubbing withHandle:(int)handle
{
  *(self + 650) &= ~0x20u;
  if (*(self + 649) < 0)
  {
    if ((handle - 1) <= 1)
    {
      lastScrubbedValue = self->_lastScrubbedValue;
      if (handle == 2 && (*(self + 650) & 0x40) != 0)
      {
        *(self + 650) &= ~0x40u;
      }

      if ((*(self + 650) & 8) != 0)
      {
        [(UIMovieScrubber *)self->_scrubber trimStartValue];
        v9 = v8;
        [(UIMovieScrubber *)self->_scrubber trimEndValue];
        v10 = v7;
        lastActualValue = self->_lastActualValue;
        if (lastActualValue >= v9)
        {
          v12 = self->_lastActualValue;
        }

        else
        {
          v12 = v9;
        }

        if (v12 <= v7)
        {
          v7 = v12;
        }

        if (lastActualValue < v9 || v12 > v10)
        {
          self->_lastActualValue = v7;
        }
      }

      else
      {
        v7 = self->_lastActualValue;
      }

      [(UIMovieScrubber *)self->_scrubber setValue:scrubbing, v7];
      [(PLVideoView *)self _movieTimeFromScrubberTime:self->_lastActualValue];
      [(PLVideoView *)self setCurrentTime:?];
      self->_lastScrubbedValue = self->_lastActualValue;
      if (handle == 2)
      {
        [(PLVideoView *)self _movieTimeFromScrubberTime:lastScrubbedValue];
        CMTimeMakeWithSeconds(&v17, v14, 1);
        currentItem = [(AVPlayer *)[(PLMoviePlayerController *)self->_moviePlayer player] currentItem];
        v16 = v17;
        [(AVPlayerItem *)currentItem setForwardPlaybackEndTime:&v16];
      }
    }

    [(PLVideoView *)self play];
  }

  else
  {

    [(PLVideoView *)self _invalidateSnapshotImage:scrubbing];
  }
}

- (void)movieScrubberDidBeginScrubbing:(id)scrubbing withHandle:(int)handle
{
  [(PLVideoView *)self _removeScrubberUpdateTimer];
  if ([(PLVideoView *)self playingToAirTunes])
  {
    v6 = (32 * *(self + 650)) & 0x80;
  }

  else if ([(PLMoviePlayerController *)self->_moviePlayer playbackState]== 1)
  {
    v6 = 0x80;
  }

  else
  {
    v6 = 0;
  }

  *(self + 649) = *(self + 649) & 0x7F | v6;
  *(self + 650) |= 0x20u;
  [(UIMovieScrubber *)self->_scrubber value];
  self->_lastScrubbedValue = v7;
  [(PLVideoView *)self _hideVideoOverlay:1];
  [(PLVideoView *)self _hideTrimMessageView:1];
  if (*(self + 649) < 0)
  {
    [(PLVideoView *)self pause];
    if (handle == 2)
    {
      CMTimeMakeWithSeconds(&v10, self->_duration, 1);
      currentItem = [(AVPlayer *)[(PLMoviePlayerController *)self->_moviePlayer player] currentItem];
      v9 = v10;
      [(AVPlayerItem *)currentItem setForwardPlaybackEndTime:&v9];
    }
  }
}

- (void)_resetScrubberUpdateTimer
{
  if (!self->_scrubberUpdateTimer)
  {
    self->_scrubberUpdateTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__updateScrubberValue selector:0 userInfo:1 repeats:0.25];
  }
}

- (void)_removeScrubberUpdateTimer
{
  [(NSTimer *)self->_scrubberUpdateTimer invalidate];

  self->_scrubberUpdateTimer = 0;
}

- (double)movieScrubberThumbnailAspectRatio:(id)ratio
{
  currentItem = [(AVPlayer *)[(PLMoviePlayerController *)self->_moviePlayer player] currentItem];
  if (currentItem)
  {
    [(AVPlayerItem *)currentItem presentationSize];
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v7 = 1.0;
  if (v5 > 0.0 && v6 > 0.0)
  {
    v8 = v5 / v6;
    width = self->_thumbnailSize.width;
    height = self->_thumbnailSize.height;
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      defaultFormatChooser = [MEMORY[0x277D3B228] defaultFormatChooser];
      if (v8 <= 1.0)
      {
        portraitScrubberThumbnailFormat = [defaultFormatChooser portraitScrubberThumbnailFormat];
      }

      else
      {
        portraitScrubberThumbnailFormat = [defaultFormatChooser landscapeScrubberThumbnailFormat];
      }

      [portraitScrubberThumbnailFormat size];
      width = rint(height * v8);
      self->_thumbnailSize.width = width;
      self->_thumbnailSize.height = height;
    }

    useLandscapeCache = self->_useLandscapeCache;
    if (useLandscapeCache)
    {
      v15 = 544;
    }

    else
    {
      v15 = 552;
    }

    if (!*(&self->super.super.super.isa + v15))
    {
      cachedThumbnails = self->_cachedThumbnails;
      if (!cachedThumbnails)
      {
        cachedThumbnails = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_cachedThumbnails = cachedThumbnails;
        LOBYTE(useLandscapeCache) = self->_useLandscapeCache;
      }

      *&width = v8;
      height = [(PLVideoView *)self _loadThumbnailsIntoDictionary:cachedThumbnails isLandscape:useLandscapeCache aspectRatio:width, height];
      v18 = self->_useLandscapeCache;
      v19 = height;
      v20 = &OBJC_IVAR___PLVideoView__bakedPortraitThumbnails;
      if (v18)
      {
        v20 = &OBJC_IVAR___PLVideoView__bakedLandscapeThumbnails;
      }

      *(&self->super.super.super.isa + *v20) = v19;
    }

    return v8;
  }

  return v7;
}

- (id)_loadThumbnailsIntoDictionary:(id)dictionary isLandscape:(BOOL)landscape aspectRatio:(float)ratio
{
  if (landscape)
  {
    _pathForPrebakedLandscapeScrubberThumbnails = [(PLVideoView *)self _pathForPrebakedLandscapeScrubberThumbnails];
  }

  else
  {
    _pathForPrebakedLandscapeScrubberThumbnails = [(PLVideoView *)self _pathForPrebakedPortraitScrubberThumbnails];
  }

  v8 = _pathForPrebakedLandscapeScrubberThumbnails;
  if (_pathForPrebakedLandscapeScrubberThumbnails)
  {
    defaultFormatChooser = [MEMORY[0x277D3B228] defaultFormatChooser];
    if (ratio <= 1.0)
    {
      portraitScrubberThumbnailFormat = [defaultFormatChooser portraitScrubberThumbnailFormat];
    }

    else
    {
      portraitScrubberThumbnailFormat = [defaultFormatChooser landscapeScrubberThumbnailFormat];
    }

    formatID = [portraitScrubberThumbnailFormat formatID];
    v8 = [MEMORY[0x277D3AD08] thumbnailsWithContentsOfFile:v8 format:formatID];
    v12 = [-[NSString options](v8 "options")];
    v13 = [(NSString *)v8 count];
    if (v13 >= 1)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        [dictionary setObject:-[NSString thumbnailImageAtIndex:](v8 forKey:{"thumbnailImageAtIndex:", i), objc_msgSend(v12, "objectAtIndex:", i)}];
      }
    }
  }

  return v8;
}

- (void)movieScrubber:(id)scrubber requestThumbnailImageForTimestamp:(id)timestamp isSummaryThumbnail:(BOOL)thumbnail
{
  thumbnailCopy = thumbnail;
  v8 = [(NSMutableDictionary *)self->_cachedThumbnails objectForKey:timestamp];
  if (v8)
  {
    v9 = v8;
    scrubber = self->_scrubber;

    [(UIMovieScrubber *)scrubber setThumbnailImage:v9 forTimestamp:timestamp];
  }

  else
  {

    [(PLVideoView *)self _addThumbnailRequestForTimestamp:timestamp isSummaryThumbnail:thumbnailCopy];
  }
}

- (BOOL)_didSetPhotoData
{
  videoCameraImage = self->_videoCameraImage;
  if (videoCameraImage)
  {
    return [(PLManagedAsset *)videoCameraImage complete];
  }

  else
  {
    return 1;
  }
}

- (BOOL)_canPlayCloudSharedStreamedVideoWithLocalVideo
{
  if (!self->_pathToOriginalVideo || ([MEMORY[0x277D3AD48] debugAlwaysStreamSharedVideos] & 1) != 0)
  {
    return 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  pathToOriginalVideo = self->_pathToOriginalVideo;

  return [defaultManager fileExistsAtPath:pathToOriginalVideo];
}

- (BOOL)_shouldStreamVideo
{
  if ([(PLVideoView *)self _mediaIsCloudSharedStreamedVideo])
  {
    return 1;
  }

  return [(PLVideoView *)self _shouldStreamSharedAlbumVideo];
}

- (BOOL)_shouldStreamSharedAlbumVideo
{
  videoCameraImage = self->_videoCameraImage;
  if (!videoCameraImage || ![(PLManagedAsset *)videoCameraImage cloudSharedPlaceholderKind])
  {
    return 0;
  }

  return [(PLVideoView *)self _localVideoUnavailable];
}

- (BOOL)_mediaIsCloudSharedStreamedVideo
{
  videoCameraImage = self->_videoCameraImage;
  if (videoCameraImage)
  {
    LOBYTE(videoCameraImage) = [(PLManagedAsset *)videoCameraImage isStreamedVideo];
  }

  return videoCameraImage;
}

- (BOOL)_mediaIsVideo
{
  videoCameraImage = self->_videoCameraImage;
  if (videoCameraImage)
  {
    return [(PLManagedAsset *)videoCameraImage isVideo];
  }

  else
  {
    return 1;
  }
}

- (BOOL)_mediaIsPlayable
{
  videoCameraImage = self->_videoCameraImage;
  if (!videoCameraImage || ([(PLManagedAsset *)videoCameraImage isVideo]& 1) != 0 || ([(PLManagedAsset *)self->_videoCameraImage isStreamedVideo]& 1) != 0)
  {
    return 1;
  }

  v5 = self->_videoCameraImage;

  return [(PLManagedAsset *)v5 isAudio];
}

- (NSString)_pathForPrebakedPortraitScrubberThumbnails
{
  result = self->_videoCameraImage;
  if (result)
  {
    return [(NSString *)result pathForPrebakedPortraitScrubberThumbnails];
  }

  return result;
}

- (NSString)_pathForPrebakedLandscapeScrubberThumbnails
{
  result = self->_videoCameraImage;
  if (result)
  {
    return [(NSString *)result pathForPrebakedLandscapeScrubberThumbnails];
  }

  return result;
}

- (NSString)_pathForVideoPreviewFile
{
  result = self->_videoCameraImage;
  if (result)
  {
    return [(NSString *)result pathForVideoPreviewFile];
  }

  return result;
}

- (id)_pathForOriginalFile
{
  path = [(NSURL *)self->_videoURL path];
  if ([(PLVideoView *)self _mediaIsCloudSharedStreamedVideo])
  {
    if (!self->_pathToOriginalVideo || ([MEMORY[0x277D3AD48] debugAlwaysStreamSharedVideos] & 1) != 0)
    {
      cachedNonPersistedVideoPlaybackURL = [(PLManagedAsset *)self->_videoCameraImage cachedNonPersistedVideoPlaybackURL];

      return [cachedNonPersistedVideoPlaybackURL absoluteString];
    }

    return self->_pathToOriginalVideo;
  }

  videoCameraImage = self->_videoCameraImage;
  if (!videoCameraImage)
  {
    return path;
  }

  return [(PLManagedAsset *)videoCameraImage pathForOriginalFile];
}

- (NSString)pathForVideoFile
{
  if (self->_videoCameraImage)
  {
    return [(PLManagedAsset *)self->_videoCameraImage pathForVideoFile];
  }

  else
  {
    return [(NSURL *)self->_videoURL path];
  }
}

- (void)_saveCachedThumbnailsIfNecessary
{
  v28 = *MEMORY[0x277D85DE8];
  useLandscapeCache = self->_useLandscapeCache;
  v4 = &OBJC_IVAR___PLVideoView__portraitSummaryThumbnailTimestamps;
  if (self->_useLandscapeCache)
  {
    v4 = &OBJC_IVAR___PLVideoView__landscapeSummaryThumbnailTimestamps;
  }

  v5 = *(&self->super.super.super.isa + *v4);
  v6 = &OBJC_IVAR___PLVideoView__bakedPortraitThumbnails;
  if (self->_useLandscapeCache)
  {
    v6 = &OBJC_IVAR___PLVideoView__bakedLandscapeThumbnails;
  }

  v7 = [objc_msgSend(*(&self->super.super.super.isa + *v6) "options")];
  if (v5 && ([v5 isEqualToArray:v7] & 1) == 0)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = [(NSMutableDictionary *)self->_cachedThumbnails objectForKey:*(*(&v23 + 1) + 8 * i)];
          if (v13)
          {
            [v8 addObject:v13];
          }
        }

        v10 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v14 = [v8 count];
    if (v14 == [v5 count])
    {
      v15 = *(self + 652);
      defaultFormatChooser = [MEMORY[0x277D3B228] defaultFormatChooser];
      if ((v15 & 8) != 0)
      {
        landscapeScrubberThumbnailFormat = [defaultFormatChooser landscapeScrubberThumbnailFormat];
      }

      else
      {
        landscapeScrubberThumbnailFormat = [defaultFormatChooser portraitScrubberThumbnailFormat];
      }

      formatID = [landscapeScrubberThumbnailFormat formatID];
      v19 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v5, @"timestamps", 0}];
      v20 = [objc_alloc(MEMORY[0x277D3AD08]) initWithImages:v8 format:formatID options:v19 delegate:0];

      if (useLandscapeCache)
      {
        _pathForPrebakedLandscapeScrubberThumbnails = [(PLVideoView *)self _pathForPrebakedLandscapeScrubberThumbnails];
      }

      else
      {
        _pathForPrebakedLandscapeScrubberThumbnails = [(PLVideoView *)self _pathForPrebakedPortraitScrubberThumbnails];
      }

      if (_pathForPrebakedLandscapeScrubberThumbnails && [(objc_class *)v20 saveToFile:_pathForPrebakedLandscapeScrubberThumbnails])
      {
        if (useLandscapeCache)
        {
          v22 = 544;
        }

        else
        {
          v22 = 552;
        }

        *(&self->super.super.super.isa + v22) = v20;
      }

      else
      {
      }
    }
  }
}

- (id)movieScrubber:(id)scrubber evenlySpacedTimestamps:(int)timestamps startingAt:(id)at endingAt:(id)endingAt
{
  [at doubleValue];
  v11 = v10;
  [endingAt doubleValue];
  v13 = v12;
  [(PLVideoView *)self movieScrubberDuration:scrubber];
  v15 = v14;
  if (v13 == 0.0)
  {
    goto LABEL_8;
  }

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:timestamps];
  if (timestamps >= 1)
  {
    v18 = (v13 - v11) / (timestamps - 1);
    v19 = v11;
    do
    {
      [v16 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v19)}];
      v19 = v18 + v19;
      if (v19 > v15)
      {
        v17 = v19 + -0.001;
        v20 = v19 + -0.001 > v15;
        v19 = v15;
        if (v20)
        {
          break;
        }
      }

      --timestamps;
    }

    while (timestamps);
  }

  if (!v16)
  {
LABEL_8:
    v16 = [MEMORY[0x277CBEA60] arrayWithObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  }

  [(PLVideoView *)self _scrubberStartTime];
  if (v11 == v21 && v13 == v15)
  {
    if (self->_useLandscapeCache)
    {
      v22 = 696;
    }

    else
    {
      v22 = 704;
    }

    v23 = (&self->super.super.super.isa + v22);
    if (!*v23)
    {
      *v23 = v16;
    }
  }

  return v16;
}

- (void)moviePlayerHeadsetPreviousTrackPressed:(id)pressed
{
  if ((*(self + 651) & 4) != 0 && ((*(self + 650) & 4) != 0 || (*(self + 652) & 2) != 0))
  {
    [(PLVideoView *)self _scrubToMovieTime:pressed, 0.0];
  }
}

- (void)moviePlayerHeadsetNextTrackPressed:(id)pressed
{
  if ((*(self + 651) & 4) != 0 && ((*(self + 650) & 4) != 0 || (*(self + 652) & 2) != 0))
  {
    [(PLVideoView *)self _scrubToMovieTime:pressed, self->_duration];
  }
}

- (void)moviePlayerHeadsetPlayPausePressed:(id)pressed
{
  if ((*(self + 651) & 4) != 0 && (*(self + 650) & 0x20) == 0)
  {
    if ([(PLMoviePlayerController *)self->_moviePlayer playbackState])
    {
      if ((*(self + 650) & 4) != 0)
      {
        [(PLVideoView *)self pause];
        if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
        {
          delegate = self->_delegate;

          [(PLVideoViewDelegate *)delegate videoViewDidPausePlayback:self];
        }
      }

      else
      {

        [(PLVideoView *)self play];
      }
    }

    else
    {

      [(PLVideoView *)self _playbackFinished];
    }
  }
}

- (void)moviePlayerDidChangeExternalPlaybackType:(id)type
{
  _playerIsAirplay = [(PLVideoView *)self _playerIsAirplay];
  if (self->_isAirPlay != _playerIsAirplay)
  {
    self->_isAirPlay = _playerIsAirplay;
    if (![(PLVideoView *)self _canAirPlayCurrentVideo])
    {
      pl_dispatch_async();
    }
  }
}

uint64_t __56__PLVideoView_moviePlayerDidChangeExternalPlaybackType___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 651) & 2) != 0)
  {
    *(v1 + 651) &= ~2u;
    return [*(result + 32) _prepareAndResumePlayback];
  }

  return result;
}

- (void)moviePlayerEncounteredAuthenticationError:(id)error
{
  [(PLManagedAsset *)self->_videoCameraImage setCachedNonPersistedVideoPlaybackURL:0];
  [(PLManagedAsset *)self->_videoCameraImage setCachedNonPersistedVideoPlaybackURLExpiration:0];
  [(PLManagedAsset *)self->_videoCameraImage setCachedNonPersistedVideoPlaybackURLError:0];
  *(self + 651) &= ~2u;

  [(PLVideoView *)self play];
}

- (BOOL)moviePlayerShouldNotifyOnPreparationError:(id)error
{
  _canAttemptFetchingVideoDerivative = [(PLVideoView *)self _canAttemptFetchingVideoDerivative];
  if (_canAttemptFetchingVideoDerivative)
  {
    [(PLVideoView *)self _setCanAttemptFetchingVideoDerivative:0];
    [(PLMoviePlayerController *)self->_moviePlayer resetPlayer];
    [(PLVideoView *)self _reset];
    [(PLVideoView *)self _fetchNonlocalVideo];
  }

  return !_canAttemptFetchingVideoDerivative;
}

- (void)moviePlayerControllerWillResignAsActiveController:(id)controller
{
  if (!self->_snapshotImage)
  {
    [(PLVideoView *)self _updateSnapshotImage];
  }

  if ((*(self + 651) & 2) != 0)
  {
    [controller currentTime];
    self->_cachedCurrentPlaybackTime = v5;
  }

  [(PLVideoView *)self _setMoviePlayerActive:0];
  [(PLVideoView *)self _setPlaybackDidBegin:0];
  [(PLVideoView *)self setShowsScrubber:0 duration:0.0];

  [(PLVideoView *)self _updatePosterFrameVisibility];
}

- (void)moviePlayerControllerDidBecomeActiveController:(id)controller
{
  [(PLVideoView *)self _setMoviePlayerActive:1];
  if ((*(self + 651) & 2) == 0)
  {
    *(self + 651) |= 1u;
  }

  [(PLVideoView *)self _setPlaybackDidBegin:0];
  self->_lastScrubbedValue = -1.0;
  self->_lastActualValue = 0.0;
  *(self + 650) &= ~0x40u;
}

- (void)_setMoviePlayerActive:(BOOL)active
{
  if (active)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 651) = *(self + 651) & 0xFB | v3;
  [(PLVideoView *)self _updatePosterFrameVisibility];
}

- (void)_updateScrubberForSlowMotion
{
  [(UIMovieScrubber *)self->_scrubber value];
  [(PLVideoView *)self _movieTimeFromScrubberTime:?];

  [(PLVideoView *)self _scrubToMovieTime:?];
}

- (void)_configurePlayerForStreamedVideoIfNecessary
{
  v4[1] = *MEMORY[0x277D85DE8];
  if ([(PLVideoView *)self _shouldStreamVideo])
  {
    if (![(PLVideoView *)self _canPlayCloudSharedStreamedVideoWithLocalVideo])
    {
      player = [(PLMoviePlayerController *)self->_moviePlayer player];
      v4[0] = *MEMORY[0x277CE5D98];
      -[AVPlayer setExpectedAssetTypes:](player, "setExpectedAssetTypes:", [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1]);
    }
  }
}

- (id)_assetForVideoURL:(id)l
{
  _optionsForAVURLAsset = [(PLVideoView *)self _optionsForAVURLAsset];
  v5 = MEMORY[0x277CE6650];

  return [v5 URLAssetWithURL:l options:_optionsForAVURLAsset];
}

- (id)_assetForVideoPath:(id)path
{
  v4 = [PLMoviePlayerController AVAssetURLWithPath:path];
  _optionsForAVURLAsset = [(PLVideoView *)self _optionsForAVURLAsset];
  v6 = MEMORY[0x277CE6650];

  return [v6 URLAssetWithURL:v4 options:_optionsForAVURLAsset];
}

- (id)_optionsForAVURLAsset
{
  if (![(PLVideoView *)self _mediaIsCloudSharedStreamedVideo]|| [(PLVideoView *)self _canPlayCloudSharedStreamedVideoWithLocalVideo])
  {
    return 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [dictionary setObject:v5 forKey:*MEMORY[0x277CE6270]];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [dictionary setObject:v6 forKey:*MEMORY[0x277CE6230]];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [dictionary setObject:v7 forKey:*MEMORY[0x277CE6258]];
  if (([MEMORY[0x277D3AD48] debugAlwaysStreamSharedVideos] & 1) == 0)
  {
    streamdVideoCache = [MEMORY[0x277D3AD48] streamdVideoCache];
    [dictionary setObject:streamdVideoCache forKey:*MEMORY[0x277CE61F8]];
  }

  return dictionary;
}

- (void)_updateVideoAVObjectBuilderFromContentEditingInput:(id)input
{
  audiovisualAsset = [input audiovisualAsset];

  adjustmentData = [input adjustmentData];
  if (adjustmentData)
  {
    v7 = [objc_alloc(MEMORY[0x277D3B518]) initWithFormatIdentifier:objc_msgSend(adjustmentData formatVersion:"formatIdentifier") data:objc_msgSend(adjustmentData baseVersion:"formatVersion") editorBundleID:objc_msgSend(adjustmentData renderTypes:{"data"), 0, 0, 0}];
    self->__videoAVObjectBuilder = [objc_alloc(MEMORY[0x277D3B510]) initWithVideoAsset:audiovisualAsset videoAdjustments:v7];
  }

  else
  {
    self->__videoAVObjectBuilder = [objc_alloc(MEMORY[0x277D3B510]) initWithVideoAsset:audiovisualAsset videoAdjustments:0];
  }
}

- (BOOL)_canHandleAdjustmentData:(id)data
{
  v3 = [objc_alloc(MEMORY[0x277D3B518]) initWithFormatIdentifier:objc_msgSend(data formatVersion:"formatIdentifier") data:objc_msgSend(data baseVersion:"formatVersion") editorBundleID:objc_msgSend(data renderTypes:{"data"), 0, 0, 0}];
  isRecognizedFormat = [v3 isRecognizedFormat];

  return isRecognizedFormat;
}

- (BOOL)_prepareMoviePlayerIfNeeded
{
  LODWORD(v3) = [(UIView *)self pl_isOnScreen:[(PLVideoView *)self px_screen]];
  if (v3)
  {
    if (![(PLVideoView *)self _mediaIsCloudSharedStreamedVideo]|| [(PLVideoView *)self _canPlayCloudSharedStreamedVideoWithLocalVideo]|| (v3 = [(PLManagedAsset *)self->_videoCameraImage cachedNonPersistedVideoPlaybackURL]) != 0)
    {
      if ((*(self + 651) & 2) != 0 || (*(self + 651) & 4) == 0 || !self->_moviePlayer || ![(PLVideoView *)self _canAccessVideo])
      {
        if (self->_moviePlayer)
        {
LABEL_17:
          LOBYTE(v3) = 1;
          return v3;
        }

        [(PLVideoView *)self _setupMoviePlayerIfNecessary];
LABEL_19:
        LOBYTE(v3) = 0;
        return v3;
      }

      if (!self->__videoAVObjectBuilder)
      {
        if (self->_videoURL)
        {
          goto LABEL_11;
        }

        if (![(PLVideoView *)self _mediaIsCloudSharedStreamedVideo])
        {
          if (self->_videoCameraImage)
          {
            if (!self->__isFetchingVideo && ![(PLVideoView *)self _localVideoUnavailable])
            {
              [(PLVideoView *)self _fetchLocalContentEditingInput];
            }

            goto LABEL_19;
          }

          goto LABEL_12;
        }

        if (-[PLVideoView _canPlayCloudSharedStreamedVideoWithLocalVideo](self, "_canPlayCloudSharedStreamedVideoWithLocalVideo") ? [MEMORY[0x277CBEBC0] fileURLWithPath:self->_pathToOriginalVideo isDirectory:0] : -[PLManagedAsset cachedNonPersistedVideoPlaybackURL](self->_videoCameraImage, "cachedNonPersistedVideoPlaybackURL"))
        {
LABEL_11:
          v4 = [(PLVideoView *)self _assetForVideoURL:?];
          self->__videoAVObjectBuilder = [objc_alloc(MEMORY[0x277D3B510]) initWithVideoAsset:v4 videoAdjustments:0];
        }
      }

LABEL_12:
      _shouldPlayFlattenedVideo = [(PLVideoView *)self _shouldPlayFlattenedVideo];
      v6 = _shouldPlayFlattenedVideo;
      if (!_shouldPlayFlattenedVideo || [(PLVideoView *)self _isFlattenedVideoUpToDate])
      {
        *(self + 651) |= 2u;
        [(PLVideoView *)self _configurePlayerForStreamedVideoIfNecessary];
        v17 = 0;
        v18 = &v17;
        v19 = 0x3052000000;
        v20 = __Block_byref_object_copy__4158;
        v21 = __Block_byref_object_dispose__4159;
        v22 = 0;
        if (v6)
        {
          v7 = [(PLVideoView *)self _assetForVideoPath:[(PLVideoView *)self _filePathForFlattenedVideo]];
          v8 = [MEMORY[0x277CE65B0] playerItemWithAsset:v7];
          v18[5] = v8;
        }

        else
        {
          videoAVObjectBuilder = self->__videoAVObjectBuilder;
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __42__PLVideoView__prepareMoviePlayerIfNeeded__block_invoke_103;
          v16[3] = &unk_2782A2160;
          v16[4] = &v17;
          [(PFVideoAVObjectBuilder *)videoAVObjectBuilder requestPlayerItemWithResultHandler:v16];
          v10 = v18[5];
        }

        if ([-[PFVideoAVObjectBuilder videoAdjustments](self->__videoAVObjectBuilder "videoAdjustments")])
        {
          [(PLVideoView *)self _updateScrubberForSlowMotion];
        }

        [(PLMoviePlayerController *)self->_moviePlayer setPlayerItem:v18[5] startTime:self->_cachedCurrentPlaybackTime];
        view = [(PLMoviePlayerController *)self->_moviePlayer view];
        [(PLMoviePlayerView *)view setClipsToBounds:1];
        [(PLMoviePlayerView *)view setScaleMode:self->_scaleMode];
        *(self + 651) &= ~1u;
        [(PLVideoView *)self _clearImageGenerators];
        [(PLVideoView *)self _createImageGenerators];
        if (([(PLMoviePlayerController *)self->_moviePlayer bufferingState]& 0xB) != 0)
        {
          *(self + 651) |= 0x20u;
        }

        if ([(PLMoviePlayerController *)self->_moviePlayer isPreparedForPlayback])
        {
          [(PLVideoView *)self moviePlayerReadyToPlay:self->_moviePlayer];
        }

        _Block_object_dispose(&v17, 8);
        goto LABEL_17;
      }

      if (!self->_airplayExportSession)
      {
        asset = [(AVPlayerItem *)[(AVPlayer *)[(PLMoviePlayerController *)self->_moviePlayer player] currentItem] asset];
        if ([(AVAsset *)asset isMemberOfClass:objc_opt_class()])
        {
          v13 = [(AVAsset *)asset URL];
          if ([v13 isFileURL])
          {
            if ([objc_msgSend(v13 "path")])
            {
              [(PLVideoView *)self pause];
              [(PLMoviePlayerController *)self->_moviePlayer setPlayerItem:0 startTime:0.0];
            }
          }
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __42__PLVideoView__prepareMoviePlayerIfNeeded__block_invoke;
        v23[3] = &unk_2782A2048;
        v23[4] = self;
        [(PLVideoView *)self _flattenVideoWithCompletionHandler:v23];
      }

      goto LABEL_19;
    }
  }

  return v3;
}

uint64_t __42__PLVideoView__prepareMoviePlayerIfNeeded__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _prepareAndResumePlayback];
  }

  return result;
}

id __42__PLVideoView__prepareMoviePlayerIfNeeded__block_invoke_103(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (void)_fetchLocalContentEditingInput
{
  v3 = objc_alloc_init(MEMORY[0x277CD9850]);
  [v3 setNetworkAccessAllowed:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__PLVideoView__fetchLocalContentEditingInput__block_invoke;
  v6[3] = &unk_2782A2110;
  v6[4] = self;
  [v3 setCanHandleAdjustmentData:v6];
  self->__isFetchingVideo = 1;
  v4 = [(PLManagedAsset *)self->_videoCameraImage pl_PHAssetFromPhotoLibrary:pl_appPhotoLibrary()];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PLVideoView__fetchLocalContentEditingInput__block_invoke_2;
  v5[3] = &unk_2782A2138;
  v5[4] = self;
  [v4 requestContentEditingInputWithOptions:v3 completionHandler:v5];
}

uint64_t __45__PLVideoView__fetchLocalContentEditingInput__block_invoke_3(id *a1)
{
  *(a1[4] + 757) = 0;
  v2 = [a1[5] audiovisualAsset];
  if ([a1[6] objectForKeyedSubscript:*MEMORY[0x277CD9BA8]] || !objc_msgSend(v2, "isPlayable"))
  {
    v5 = a1[4];

    return [v5 _fetchNonlocalVideo];
  }

  else
  {
    [a1[4] _setCanAttemptFetchingVideoDerivative:1];
    [a1[4] _updateVideoAVObjectBuilderFromContentEditingInput:a1[5]];
    [a1[4] _setLocalVideoUnavailable:0];
    [a1[4] _updateSlalomRegionEditorState];
    *(a1[4] + 651) &= ~2u;
    v3 = a1[4];

    return [v3 _prepareAndResumePlayback];
  }
}

- (void)_fetchNonlocalVideo
{
  [(PLVideoView *)self _setLocalVideoUnavailable:1];
  [(PLVideoView *)self _updateSlalomRegionEditorState];
  if ([(PLVideoView *)self isPlaying])
  {
    [(PLVideoView *)self _displayPlaySpinner];
  }

  v3 = objc_alloc_init(MEMORY[0x277CD9A00]);
  [v3 setNetworkAccessAllowed:1];
  [v3 setStreamingAllowed:1];
  [v3 setVideoComplementAllowed:1];
  [v3 setVersion:0];
  self->__isFetchingVideo = 1;
  v4 = [(PLManagedAsset *)self->_videoCameraImage pl_PHAssetFromPhotoLibrary:pl_appPhotoLibrary()];
  defaultManager = [MEMORY[0x277CD9898] defaultManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__PLVideoView__fetchNonlocalVideo__block_invoke;
  v6[3] = &unk_2782A20E8;
  v6[4] = self;
  v6[5] = v4;
  [defaultManager requestPlayerItemForVideo:v4 options:v3 resultHandler:v6];
}

void __34__PLVideoView__fetchNonlocalVideo__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 757) = 0;
  v2 = [*(a1 + 40) asset];
  if (v2)
  {
    v3 = v2;

    *(*(a1 + 32) + 768) = [objc_alloc(MEMORY[0x277D3B510]) initWithVideoAsset:v3 videoAdjustments:0];
    *(*(a1 + 32) + 651) &= ~2u;
    v4 = *(a1 + 32);

    [v4 _prepareAndResumePlayback];
  }

  else
  {
    Log = PLBackendGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_ERROR, "Failed to fetch playback objects for %@", &v7, 0xCu);
    }
  }
}

- (void)_prepareAndResumePlayback
{
  isPlaying = [(PLVideoView *)self isPlaying];
  [(PLVideoView *)self _prepareMoviePlayerIfNeeded];
  if (isPlaying && ![(PLVideoView *)self isPlaying])
  {

    [(PLVideoView *)self play];
  }
}

- (void)moviePlayerDurationAvailable:(id)available
{
  [(PLMoviePlayerController *)self->_moviePlayer duration];
  if (self->_duration != v4)
  {
    [(PLVideoView *)self _setDuration:?];

    [(PLVideoView *)self _updateScrubberVisibilityWithDuration:0.0];
  }
}

- (void)moviePlayerReadyToDisplay:(id)display
{
  [(PLVideoView *)self _insertMoviePlayerViewIfNecessary];
  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(display "view")];
  v6 = *(self + 651);
  if (((v5 ^ ((v6 & 0x10) == 0)) & 1) == 0)
  {
    if (v5)
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *(self + 651) = v6 & 0xEF | v7;

    [(PLVideoView *)self _updatePosterFrameVisibility];
  }
}

- (void)moviePlayerReadyToPlay:(id)play
{
  [(PLVideoView *)self _insertMoviePlayerViewIfNecessary];
  if ((*(self + 651) & 8) == 0 && (*(self + 651) & 1) == 0)
  {
    *(self + 651) |= 8u;
    [(PLMoviePlayerController *)self->_moviePlayer duration];
    [(PLVideoView *)self _setDuration:?];
    posterFrameView = self->_posterFrameView;
    if (posterFrameView)
    {
      if (![(PLVideoPosterFrameView *)posterFrameView image])
      {
        [(AVPlayerItem *)[(AVPlayer *)[(PLMoviePlayerController *)self->_moviePlayer player] currentItem] presentationSize];
        v6 = v5;
        v8 = v7;
        [(PLVideoView *)self _updateScaleModeForSize:?];
        [(PLMoviePlayerView *)[(PLMoviePlayerController *)self->_moviePlayer view] setScaleMode:self->_scaleMode];
        [(PLVideoPosterFrameView *)self->_posterFrameView setScaleMode:self->_scaleMode];
        if ((*(self + 652) & 0x20) != 0)
        {
          *(self + 652) &= ~0x20u;
          [(PLVideoView *)self _requestPreviewPosterFrameForVideoSize:v6, v8];
        }
      }
    }

    [(PLVideoView *)self _setNeedsReloadScrubberThumbnails:1];
    [(PLVideoView *)self _updateScrubberVisibilityWithDuration:0.0];
    [(PLVideoView *)self performSelector:sel__updatePosterFrameVisibility withObject:0 afterDelay:0.1];
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegate = self->_delegate;

      [(PLVideoViewDelegate *)delegate videoViewIsReadyToBeginPlayback:self];
    }
  }
}

- (void)_savePreviewPosterFrameImage:(CGImage *)image
{
  v5 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:image];
  [(PLVideoPosterFrameView *)self->_posterFrameView setImage:v5];

  _pathForVideoPreviewFile = [(PLVideoView *)self _pathForVideoPreviewFile];
  if (_pathForVideoPreviewFile)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:_pathForVideoPreviewFile isDirectory:0];
    v8 = CGImageDestinationCreateWithURL(v7, [*MEMORY[0x277CE1DC0] identifier], 1uLL, 0);
    if (v8)
    {
      v9 = v8;
      CGImageDestinationAddImage(v8, image, 0);
      CGImageDestinationFinalize(v9);

      CFRelease(v9);
    }
  }
}

- (void)_requestPreviewPosterFrameForVideoSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v15[1] = *MEMORY[0x277D85DE8];
  [-[PLVideoView px_screen](self "px_screen")];
  [(PLVideoView *)self convertRect:0 fromView:?];
  v7 = v6;
  v8 = width / height;
  v9 = v6 * v8;
  v10 = rintf(v9);
  _thumbnailSourceAsset = [(PLVideoView *)self _thumbnailSourceAsset];
  v12 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:_thumbnailSourceAsset];
  [(PLVideoView *)self _configureImageGenerator:v12 thumbnailSize:1 forSummaryThumbnails:v10, v7];
  v15[0] = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__PLVideoView__requestPreviewPosterFrameForVideoSize___block_invoke;
  v14[3] = &unk_2782A2098;
  v14[4] = self;
  v14[5] = v12;
  [v12 generateCGImagesAsynchronouslyForTimes:v13 completionHandler:v14];
}

void __54__PLVideoView__requestPreviewPosterFrameForVideoSize___block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  pl_dispatch_async();
}

void __54__PLVideoView__requestPreviewPosterFrameForVideoSize___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    [*(a1 + 32) _savePreviewPosterFrameImage:*(a1 + 48)];
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)moviePlayerPlaybackStateDidChange:(id)change fromPlaybackState:(unint64_t)state
{
  v5 = [(PLMoviePlayerController *)self->_moviePlayer playbackState:change];
  if (v5 == 3)
  {
    [(PLVideoView *)self _removePlaySpinner];
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegate = self->_delegate;

      [(PLVideoViewDelegate *)delegate videoViewPlaybackDidFail:self];
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 || (*(self + 650) & 4) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    if ((*(self + 650) & 4) == 0)
    {
      return;
    }

    [(PLMoviePlayerController *)self->_moviePlayer currentTime];
    v7 = v6;
    [(PLMoviePlayerController *)self->_moviePlayer duration];
    if (vabdd_f64(v7, v8) < 1.0)
    {
LABEL_8:

      [(PLVideoView *)self _playbackFinished];
      return;
    }

    [(PLVideoView *)self moviePlayerHeadsetPlayPausePressed:0];
  }
}

- (void)moviePlayerPlaybackRateDidChange:(id)change
{
  [(PLMoviePlayerController *)self->_moviePlayer playbackRate];
  if (v4 == 1)
  {
    Log = PLPhotoSharingGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) moviePlayerPlaybackRateDidChange to 1", v7, 2u);
    }

    if ((*(self + 650) & 4) != 0)
    {
      [(PLVideoView *)self _didBeginPlayback];
    }
  }

  else if (!v4)
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ACCD000, v5, OS_LOG_TYPE_DEFAULT, "(video-playback) moviePlayerPlaybackRateDidChange to 0", buf, 2u);
    }

    [(PLVideoView *)self _updateSnapshotImage];
  }
}

- (void)moviePlayerBufferingStateDidChange:(id)change
{
  bufferingState = [(PLMoviePlayerController *)self->_moviePlayer bufferingState];
  if ([(PLVideoView *)self _shouldStreamVideo])
  {
    v5 = (bufferingState & 0xA) != 0;
  }

  else
  {
    v5 = bufferingState;
  }

  if (v5)
  {
    Log = PLPhotoSharingGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) play due to buffer state change", buf, 2u);
    }

    *(self + 651) |= 0x20u;
    [(PLVideoView *)self _verifyOrRestartPlayback];
  }

  else if ([(PLVideoView *)self _shouldStreamVideo]&& (bufferingState & 4) != 0)
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ACCD000, v7, OS_LOG_TYPE_DEFAULT, "(video-playback) pauseDueToInsufficientData due to buffer state change", v8, 2u);
    }

    *(self + 651) &= ~0x20u;
    [(PLVideoView *)self _displayPlaySpinner];
  }
}

- (void)_reloadScrubberThumbnailsIfNeeded
{
  if ((*(self + 650) & 2) != 0 && self->_scrubber && (*(self + 651) & 4) != 0)
  {
    *(self + 650) &= ~2u;
    [(UIMovieScrubber *)self->_scrubber setDelegate:self];
    [(UIMovieScrubber *)self->_scrubber setDataSource:self];
    scrubber = self->_scrubber;

    [(UIMovieScrubber *)scrubber reloadData];
  }
}

- (void)_setNeedsReloadScrubberThumbnails:(BOOL)thumbnails
{
  if (thumbnails)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 650) = *(self + 650) & 0xFD | v3;
}

- (void)layoutSubviews
{
  if (*(self + 651) < 0)
  {
    [(PLVideoView *)self _updateScrubberFrame];
  }

  [(PLVideoView *)self bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  spinner = self->_spinner;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [(UIActivityIndicatorView *)spinner setCenter:MidX, CGRectGetMidY(v13)];
  [(UIActivityIndicatorView *)self->_spinner center];
  [(UIActivityIndicatorView *)self->_shadowSpinner setCenter:v10 + 1.0, v9 + 1.0];

  [(PLVideoView *)self _reloadScrubberThumbnailsIfNeeded];
}

- (void)_updateScaleModeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = size.width >= size.height;
  [(PLVideoView *)self bounds];
  v8 = v7;
  [(PLVideoView *)self bounds];
  if (v6 != v8 < v9)
  {
    self->_scaleMode = 2;
  }

  *(self + 652) = *(self + 652) & 0xF7 | (8 * (width >= height));
}

- (void)updateScaleMode
{
  if (self->_posterFrameImage)
  {
    self->_scaleMode = 1;
    [(UIImage *)self->_posterFrameImage size];
    [(PLVideoView *)self _updateScaleModeForSize:?];
    [(PLMoviePlayerView *)[(PLMoviePlayerController *)self->_moviePlayer view] setScaleMode:self->_scaleMode];
    posterFrameView = self->_posterFrameView;
    scaleMode = self->_scaleMode;

    [(PLVideoPosterFrameView *)posterFrameView setScaleMode:scaleMode];
  }
}

- (void)_hideTrimMessageView:(BOOL)view
{
  viewCopy = view;
  [(PLVideoEditingOverlayView *)self->_trimMessageView alpha];
  if (v5 == 1.0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__PLVideoView__hideTrimMessageView___block_invoke;
    v11[3] = &unk_2782A2020;
    v11[4] = self;
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __36__PLVideoView__hideTrimMessageView___block_invoke_2;
    v9 = &unk_2782A2048;
    selfCopy = self;
    if (viewCopy)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v11 animations:&v6 completion:0.25];
    }

    else
    {
      [(PLVideoEditingOverlayView *)self->_trimMessageView setAlpha:0.0, v6, v7];
      (v8)(&v6, 1);
    }
  }
}

- (void)removeVideoOverlay
{
  [(PLVideoOverlayButton *)self->_videoOverlayPlayButton removeFromSuperview];
  [PLVideoView _enqueueOverlayPlayButton:self->_videoOverlayPlayButton];

  self->_videoOverlayPlayButton = 0;
  *(self + 651) &= ~0x40u;
}

- (void)_hideVideoOverlay:(BOOL)overlay
{
  if ((*(self + 651) & 0x40) != 0)
  {
    *(self + 651) &= ~0x40u;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__PLVideoView__hideVideoOverlay___block_invoke;
    v8[3] = &unk_2782A2020;
    v8[4] = self;
    v3 = MEMORY[0x277D85DD0];
    v4 = 3221225472;
    v5 = __33__PLVideoView__hideVideoOverlay___block_invoke_2;
    v6 = &unk_2782A2048;
    selfCopy = self;
    if (overlay)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v8 animations:&v3 completion:0.25];
    }

    else
    {
      [(PLVideoOverlayButton *)self->_videoOverlayPlayButton setAlpha:0.0, v3, v4];
      (v5)(&v3, 1);
    }
  }
}

- (void)_videoOverlayFadeOutDidFinish
{
  [(PLVideoView *)self removeVideoOverlay];
  [(PLVideoEditingOverlayView *)self->_trimMessageView removeFromSuperview];

  self->_trimMessageView = 0;
}

- (void)_showVideoOverlay
{
  if ((*(self + 649) & 1) != 0 && (*(self + 650) & 4) == 0 && [(PLVideoView *)self _canAccessVideo])
  {
    if (self->_videoOverlayPlayButton)
    {
      goto LABEL_8;
    }

    if ([(PLVideoView *)self _mediaIsPlayable])
    {
      v3 = +[PLVideoView _dequeueOverlayPlayButton];
      self->_videoOverlayPlayButton = v3;
      [(PLVideoOverlayButton *)v3 setTarget:self action:sel_playButtonClicked_];
    }

    if (self->_videoOverlayPlayButton)
    {
LABEL_8:
      *(self + 651) |= 0x40u;
      [(PLVideoOverlayButton *)self->_videoOverlayPlayButton frame];
      v5 = v4;
      v7 = v6;
      [(PLVideoView *)self addSubview:self->_videoOverlayPlayButton];
      [-[PLVideoOverlayButton superview](self->_videoOverlayPlayButton "superview")];
      [(PLVideoOverlayButton *)self->_videoOverlayPlayButton setFrame:rint((v9 - v5) * 0.5), rint((v8 - v7) * 0.5), v5, v7];
      [(PLVideoOverlayButton *)self->_videoOverlayPlayButton setAutoresizingMask:45];
      videoOverlayPlayButton = self->_videoOverlayPlayButton;

      [(PLVideoOverlayButton *)videoOverlayPlayButton setAlpha:1.0];
    }
  }
}

- (BOOL)_canAccessVideo
{
  videoCameraImage = self->_videoCameraImage;
  if (videoCameraImage && [(PLManagedAsset *)videoCameraImage complete]&& ![(PLManagedAsset *)self->_videoCameraImage isTimelapsePlaceholder]|| self->_videoURL)
  {
    return [(PLManagedAsset *)self->_videoCameraImage isPhotoIrisPlaceholder]^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldShowSlalomEditor
{
  if (PLRunningFromPhotosApplication())
  {
    v3 = 1;
  }

  else
  {
    v3 = MEMORY[0x21CEE1A10]();
  }

  if (![(PLVideoView *)self allowSlalomEditor]|| !v3 || ![(PLManagedAsset *)self->_videoCameraImage isMogul])
  {
    return 0;
  }

  videoAdjustments = [(PFVideoAVObjectBuilder *)self->__videoAVObjectBuilder videoAdjustments];

  return [videoAdjustments isRecognizedFormat];
}

- (void)_removeScrubber
{
  [(UIView *)self->_scrubberBackgroundView removeFromSuperview];

  self->_scrubberBackgroundView = 0;
  [(UIMovieScrubber *)self->_scrubber setDataSource:0];
  [(UIMovieScrubber *)self->_scrubber setDelegate:0];
  [(UIMovieScrubber *)self->_scrubber removeFromSuperview];

  self->_scrubber = 0;
  [(PLSlalomRegionEditor *)self->_slalomRegionEditor removeFromSuperview];
  [(PLSlalomRegionEditor *)self->_slalomRegionEditor setDelegate:0];

  self->_slalomRegionEditor = 0;
}

- (void)_createScrubberIfNeeded
{
  _shouldShowSlalomEditor = [(PLVideoView *)self _shouldShowSlalomEditor];
  canEdit = [(PLVideoView *)self canEdit];
  scrubber = self->_scrubber;
  if (scrubber && (self->__slalomRegionEditorCreatedForScrubber != _shouldShowSlalomEditor || canEdit != [(UIMovieScrubber *)scrubber isEditable]))
  {
    [(PLVideoView *)self _removeScrubber];
  }

  if ((*(self + 649) & 0x10) != 0 && !self->_scrubberBackgroundView)
  {
    [(PLVideoView *)self bounds];
    Width = CGRectGetWidth(v14);
    [(PLVideoView *)self _scrubberBackgroundHeight];
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, v7}];
    self->_scrubberBackgroundView = v8;
    [(UIView *)v8 setAutoresizingMask:34];
    [(UIView *)self->_scrubberBackgroundView setDeliversTouchesForGesturesToSuperview:0];
    -[UIView setBackgroundColor:](self->_scrubberBackgroundView, "setBackgroundColor:", [MEMORY[0x277D75348] colorWithWhite:0.101960786 alpha:0.75]);
    [(PLVideoView *)self addSubview:self->_scrubberBackgroundView];
  }

  [(PLVideoView *)self scrubberWidth];
  if (!self->_scrubber)
  {
    v10 = [objc_alloc(MEMORY[0x277D75740]) initWithFrame:{0.0, 1.0, v9, 0.0}];
    self->_scrubber = v10;
    [(UIMovieScrubber *)v10 setEditable:canEdit];
    v11 = 8.0;
    if (!canEdit)
    {
      v11 = 0.0;
    }

    [(UIMovieScrubber *)self->_scrubber setEdgeInset:v11];
    [(UIMovieScrubber *)self->_scrubber setAutoresizingMask:2];
    [(UIMovieScrubber *)self->_scrubber setZoomDelay:0.5];
    [(UIMovieScrubber *)self->_scrubber setMinimumTrimLength:1.0];
    [(UIView *)self->_scrubberBackgroundView addSubview:self->_scrubber];
    *(self + 652) |= 4u;
    [(UIMovieScrubber *)self->_scrubber setDelegate:self];
    [(UIMovieScrubber *)self->_scrubber setDataSource:self];
    if (self->_maximumTrimLength != 0.0)
    {
      [(UIMovieScrubber *)self->_scrubber setMaximumTrimLength:?];
    }

    if ((*(self + 650) & 8) != 0)
    {
      [(UIMovieScrubber *)self->_scrubber setEditing:1 animated:1];
    }

    if (!self->_slalomRegionEditor && _shouldShowSlalomEditor)
    {
      [(UIMovieScrubber *)self->_scrubber frame];
      v12 = [[PLSlalomRegionEditor alloc] initWithFrame:v15.origin.x, CGRectGetMaxY(v15), v15.size.width, 30.0];
      self->_slalomRegionEditor = v12;
      [(PLSlalomRegionEditor *)v12 setAutoresizingMask:2];
      [(PLSlalomRegionEditor *)self->_slalomRegionEditor setDelegate:self];
      [(PLVideoView *)self _updateSlalomRegionEditorRange];
      [(PLVideoView *)self _updateSlalomRegionEditorState];
      [(UIView *)self->_scrubberBackgroundView addSubview:self->_slalomRegionEditor];
    }

    self->__slalomRegionEditorCreatedForScrubber = _shouldShowSlalomEditor;

    [(PLVideoView *)self _updateForEditing];
  }
}

- (double)_scrubberBackgroundHeight
{
  _shouldShowSlalomEditor = [(PLVideoView *)self _shouldShowSlalomEditor];
  result = 42.0;
  if (_shouldShowSlalomEditor)
  {
    return 72.0;
  }

  return result;
}

- (double)scrubberWidth
{
  result = self->_scrubberWidth;
  if (result == 0.0)
  {
    [(PLVideoView *)self bounds];
    result = CGRectGetWidth(v4);
    self->_scrubberWidth = result;
  }

  return result;
}

- (void)_updateScrubberFrame
{
  scrubberBackgroundView = self->_scrubberBackgroundView;
  if (scrubberBackgroundView && [(UIView *)scrubberBackgroundView superview]== self)
  {
    v4 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(PLVideoViewDelegate *)self->_delegate videoViewScrubberYOrigin:self forOrientation:v4];
      v6 = v5;
    }

    else
    {
      [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
      v8 = v7;
      [MEMORY[0x277D75780] defaultSizeForOrientation:v4];
      v10 = v9;
      v6 = (v8 + v10);
    }

    [(UIView *)self->_scrubberBackgroundView frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(PLVideoView *)self _scrubberBackgroundHeight];
    [(UIView *)self->_scrubberBackgroundView setFrame:v12, v14, v16, v6 + v17];
    [(UIMovieScrubber *)self->_scrubber frame];
    scrubber = self->_scrubber;

    [(UIMovieScrubber *)scrubber setFrame:?];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  superview = [(UIMovieScrubber *)self->_scrubber superview];
  scrubberBackgroundView = self->_scrubberBackgroundView;
  v10 = superview != scrubberBackgroundView || scrubberBackgroundView == 0;
  if (v10 || (scrubber = self->_scrubber, [(UIMovieScrubber *)scrubber convertPoint:self fromView:x, y], result = [(UIMovieScrubber *)scrubber hitTest:event withEvent:?], !result && ((slalomRegionEditor = self->_slalomRegionEditor) == 0 || ([(PLSlalomRegionEditor *)self->_slalomRegionEditor convertPoint:self fromView:x, y], (result = [(PLSlalomRegionEditor *)slalomRegionEditor hitTest:event withEvent:?]) == 0))))
  {
    if ([(PLVideoView *)self pointInside:event withEvent:x, y])
    {
      if ((*(self + 651) & 0x40) != 0)
      {
        videoOverlayPlayButton = self->_videoOverlayPlayButton;
        [(PLVideoOverlayButton *)videoOverlayPlayButton convertPoint:[(PLVideoOverlayButton *)videoOverlayPlayButton superview] fromView:x, y];
        result = [(PLVideoOverlayButton *)videoOverlayPlayButton hitTest:event withEvent:?];
      }

      else
      {
        result = 0;
      }

      if (!result)
      {
        return self;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PLVideoView;
  [(PLVideoView *)&v5 touchesEnded:ended withEvent:event];
  [(PLVideoView *)self _hideTrimMessageView:1];
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = PLVideoView;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ path:%@>", -[PLVideoView description](&v3, sel_description), -[PLVideoView pathForVideoFile](self, "pathForVideoFile")];
}

- (void)setDelegate:(id)delegate
{
  if (self->_delegate != delegate)
  {
    self->_delegate = delegate;
    if (delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        if ([(PLVideoViewDelegate *)self->_delegate videoViewCanCreateMetadata:self])
        {
          v4 = 16;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }

      *(self + 652) = *(self + 652) & 0xEF | v4;
      scrubber = self->_scrubber;
      delegate = self;
    }

    else
    {
      scrubber = self->_scrubber;
    }

    [(UIMovieScrubber *)scrubber setDelegate:delegate];
  }
}

- (void)_tearDownMoviePlayer
{
  [(PLMoviePlayerController *)self->_moviePlayer setDelegate:0];
  [(PLMoviePlayerController *)self->_moviePlayer requestToResignAsActiveController];
  if ((*(self + 650) & 4) != 0)
  {
    [(PLMoviePlayerController *)self->_moviePlayer stop];
  }

  [(PLMoviePlayerView *)[(PLMoviePlayerController *)self->_moviePlayer view] removeFromSuperview];

  self->_moviePlayer = 0;
}

- (void)_insertMoviePlayerViewIfNecessary
{
  [(PLVideoView *)self _setupMoviePlayerIfNecessary];
  if (![(PLVideoView *)self _didInsertMoviePlayerView])
  {
    view = [(PLMoviePlayerController *)self->_moviePlayer view];
    [(PLVideoView *)self bounds];
    [(PLMoviePlayerView *)view setFrame:?];
    [(PLMoviePlayerView *)view setAutoresizingMask:18];
    [(PLVideoView *)self insertSubview:view belowSubview:self->_posterFrameView];
    self->__didInsertMoviePlayerView = 1;
  }
}

- (void)_setupMoviePlayerIfNecessary
{
  if (!self->_moviePlayer)
  {
    v3 = objc_alloc_init(PLMoviePlayerController);
    self->_moviePlayer = v3;
    [(PLMoviePlayerController *)v3 setDelegate:self];
    [(PLMoviePlayerController *)self->_moviePlayer requestToBecomeActiveController];
    self->__didInsertMoviePlayerView = 0;
    self->_isAirPlay = [(PLVideoView *)self _playerIsAirplay];
  }
}

- (void)dealloc
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
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(PLVideoView *)self _commitPendingAdjustmentsUpdateAndWait:0 completionHandler:0];

  [(PLVideoView *)self setImageTile:0];
  [(PLVideoView *)self _tearDownMoviePlayer];

  [(PLVideoOverlayButton *)self->_videoOverlayPlayButton removeFromSuperview];
  [PLVideoView _enqueueOverlayPlayButton:self->_videoOverlayPlayButton];

  self->_videoOverlayPlayButton = 0;
  [(UIMovieScrubber *)self->_scrubber setDelegate:0];
  [(UIMovieScrubber *)self->_scrubber setDataSource:0];

  [(PLSlalomRegionEditor *)self->_slalomRegionEditor setDelegate:0];
  thumbnailReqQueue = self->_thumbnailReqQueue;
  if (thumbnailReqQueue)
  {
    dispatch_release(thumbnailReqQueue);
  }

  [(PLVideoView *)self _clearImageGenerators];

  [(PLVideoView *)self _cancelAirplayExportSession];
  v6.receiver = self;
  v6.super_class = PLVideoView;
  [(PLVideoView *)&v6 dealloc];
}

- (void)_networkReachabilityDidChange:(id)change
{
  videoCameraImage = self->_videoCameraImage;
  if (videoCameraImage && [(PLManagedAsset *)videoCameraImage cachedNonPersistedVideoPlaybackURL])
  {
    Log = PLPhotoSharingGetLog();
    if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ACCD000, Log, OS_LOG_TYPE_DEFAULT, "(video-playback) network reachability changes. Clears out cached video URL.", v6, 2u);
    }

    [(PLManagedAsset *)self->_videoCameraImage setCachedNonPersistedVideoPlaybackURL:0];
    [(PLManagedAsset *)self->_videoCameraImage setCachedNonPersistedVideoPlaybackURLExpiration:0];
    [(PLManagedAsset *)self->_videoCameraImage setCachedNonPersistedVideoPlaybackURLError:0];
  }
}

- (id)_initWithFrame:(CGRect)frame videoCameraImage:(id)image orientation:(int64_t)orientation
{
  v18.receiver = self;
  v18.super_class = PLVideoView;
  v7 = [(PLVideoView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_useLandscapeCache = (orientation - 3) < 2;
    v7->_videoCameraImage = image;
    v8->_summaryThumbnailRequestTimestamps = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8->_detailThumbnailRequestTimestamps = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8->_scrubberWidth = 0.0;
    *(v8 + 649) |= 0x10u;
    v8->_scaleMode = 1;
    *(v8 + 649) = *(v8 + 649) & 0xFE | [(PLVideoView *)v8 _canAccessVideo];
    *(v8 + 649) &= ~2u;
    if ([(PLManagedAsset *)v8->_videoCameraImage isStreamedVideo])
    {
      v8->_pathToOriginalVideo = [(PLManagedAsset *)v8->_videoCameraImage pathToOriginalVideoFile];
    }

    [(PLVideoView *)v8 setAutoresizingMask:18];
    [(PLVideoView *)v8 bounds];
    v13 = [[PLVideoPosterFrameView alloc] initWithFrame:v9, v10, v11, v12];
    v8->_posterFrameView = v13;
    [(PLVideoPosterFrameView *)v13 setScaleMode:v8->_scaleMode];
    [(PLVideoPosterFrameView *)v8->_posterFrameView setAutoresizingMask:18];
    [(PLVideoView *)v8 addSubview:v8->_posterFrameView];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__screenDidConnect_ name:*MEMORY[0x277D76E98] object:0];
    [defaultCenter addObserver:v8 selector:sel__screenDidDisconnect_ name:*MEMORY[0x277D76EA0] object:0];
    v15 = MEMORY[0x277D76620];
    NSClassFromString(&cfstr_Plphotosapplic_0.isa);
    if (objc_opt_isKindOfClass())
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    [v16 enableNetworkObservation];
    [defaultCenter addObserver:v8 selector:sel__networkReachabilityDidChange_ name:*MEMORY[0x277D3ADF0] object:0];
    v8->_thumbnailReqQueue = dispatch_queue_create("com.apple.mobileslideshow.videoThumbnails", 0);
    v8->_prepareMoviePlayerForScrubberAutomatically = 1;
  }

  return v8;
}

- (PLVideoView)initWithFrame:(CGRect)frame videoCameraImage:(id)image orientation:(int64_t)orientation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([image isVideo] & 1) != 0 || (objc_msgSend(image, "isStreamedVideo") & 1) != 0 || (objc_msgSend(image, "isAudio"))
  {

    return [(PLVideoView *)self _initWithFrame:image videoCameraImage:orientation orientation:x, y, width, height];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"videoCameraImage must be either video or audio"];
    return 0;
  }
}

+ (void)_enqueueOverlayPlayButton:(id)button
{
  if (button)
  {
    [_overlayButtonQueue addObject:?];
  }
}

+ (id)_dequeueOverlayPlayButton
{
  v2 = _overlayButtonQueue;
  if (!_overlayButtonQueue)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    _overlayButtonQueue = v2;
  }

  firstObject = [v2 firstObject];
  if (firstObject)
  {
    v4 = firstObject;
    v5 = firstObject;
    [_overlayButtonQueue removeObjectAtIndex:0];
    return v4;
  }

  else
  {
    v7 = MEMORY[0x277D75D18];

    return [v7 pl_videoOverlayButtonWithStyle:0];
  }
}

+ (id)videoViewForVideoFileAtURL:(id)l
{
  v4 = [[self alloc] _initWithFrame:0 videoCameraImage:1 orientation:{0.0, 0.0, 1.0, 1.0}];
  v5 = v4;
  *(v4 + 424) = [l copy];
  *(v4 + 649) = *(v4 + 649) & 0xFE | [v4 _canAccessVideo];
  return v4;
}

@end