@interface PXMomentShareStatusPresentation
+ (PXMomentShareStatusPresentation)new;
- (NSString)description;
- (PXCMMInvitation)invitation;
- (PXDisplayMomentShare)momentShare;
- (PXMomentShareStatusPresentation)init;
- (PXMomentShareStatusPresentation)initWithMomentShare:(id)share presentationStyle:(int64_t)style;
- (PXMomentShareStatusPresentation)initWithMomentShareStatus:(id)status presentationStyle:(int64_t)style;
- (void)_updateCPLStatus;
- (void)_updateCountsAndStatus;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAction:(id)action;
- (void)setActionConfirmationAlertButtonTitle:(id)title;
- (void)setActionConfirmationAlertSubtitle:(id)subtitle;
- (void)setActionConfirmationAlertTitle:(id)title;
- (void)setActionTitle:(id)title;
- (void)setActivityProgress:(float)progress;
- (void)setActivityTitle:(id)title;
- (void)setAssetsSaveStatusTitle:(id)title;
- (void)setAssetsTitle:(id)title;
- (void)setByline:(id)byline;
- (void)setExpirationTitle:(id)title;
- (void)setIdleTitle:(id)title;
- (void)setNumberOfAssetsCopied:(int64_t)copied;
- (void)setNumberOfAssetsNotCopied:(int64_t)copied;
- (void)setPauseTitle:(id)title;
- (void)setState:(int64_t)state;
- (void)setType:(int64_t)type;
@end

@implementation PXMomentShareStatusPresentation

- (void)_updateCPLStatus
{
  status = [(PXCPLUIStatusProvider *)self->_statusProvider status];
  IsPaused = _IsPaused(status);
  isPaused = [(PXMomentShareStatusPresentation *)self isPaused];
  if (IsPaused)
  {
    failureDescription = [status failureDescription];
    actionTitle = [status actionTitle];
    actionConfirmationAlertTitle = [status actionConfirmationAlertTitle];
    actionConfirmationAlertSubtitle = [status actionConfirmationAlertSubtitle];
    actionConfirmationAlertButtonTitle = [status actionConfirmationAlertButtonTitle];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PXMomentShareStatusPresentation__updateCPLStatus__block_invoke;
    aBlock[3] = &unk_1E774C648;
    v9 = status;
    v34 = v9;
    v10 = _Block_copy(aBlock);

    serviceAction = [v9 serviceAction];
  }

  else
  {
    v10 = 0;
    actionConfirmationAlertButtonTitle = 0;
    actionConfirmationAlertSubtitle = 0;
    actionTitle = 0;
    failureDescription = 0;
    actionConfirmationAlertTitle = 0;
    serviceAction = 0;
  }

  pauseStatusDescription = [(PXMomentShareStatusPresentation *)self pauseStatusDescription];
  if (failureDescription != pauseStatusDescription && ![failureDescription isEqualToString:pauseStatusDescription])
  {
    goto LABEL_20;
  }

  v28 = isPaused;
  pauseResolutionActionTitle = [(PXMomentShareStatusPresentation *)self pauseResolutionActionTitle];
  if (actionTitle != pauseResolutionActionTitle && ![actionTitle isEqualToString:pauseResolutionActionTitle])
  {
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  pauseResolutionActionConfirmationAlertTitle = [(PXMomentShareStatusPresentation *)self pauseResolutionActionConfirmationAlertTitle];
  v15 = actionConfirmationAlertTitle;
  v16 = pauseResolutionActionConfirmationAlertTitle;
  v30 = v15;
  if (v15 != pauseResolutionActionConfirmationAlertTitle && ![v15 isEqualToString:pauseResolutionActionConfirmationAlertTitle])
  {
LABEL_18:

    actionConfirmationAlertTitle = v30;
    goto LABEL_19;
  }

  v27 = v10;
  pauseResolutionActionConfirmationAlertSubtitle = [(PXMomentShareStatusPresentation *)self pauseResolutionActionConfirmationAlertSubtitle];
  if (actionConfirmationAlertSubtitle != pauseResolutionActionConfirmationAlertSubtitle && ![actionConfirmationAlertSubtitle isEqualToString:pauseResolutionActionConfirmationAlertSubtitle])
  {
LABEL_17:

    v10 = v27;
    goto LABEL_18;
  }

  pauseResolutionActionConfirmationAlertButtonTitle = [(PXMomentShareStatusPresentation *)self pauseResolutionActionConfirmationAlertButtonTitle];
  if (actionConfirmationAlertButtonTitle != pauseResolutionActionConfirmationAlertButtonTitle && ![actionConfirmationAlertButtonTitle isEqualToString:pauseResolutionActionConfirmationAlertButtonTitle])
  {

    serviceAction = v26;
    goto LABEL_17;
  }

  v29 = (v26 != [(PXMomentShareStatusPresentation *)self pauseResolutionActionType]) | IsPaused ^ v28;

  serviceAction = v26;
  actionConfirmationAlertTitle = v30;
  v10 = v27;
  if ((v29 & 1) == 0)
  {
    v19 = 0;
    v21 = actionConfirmationAlertButtonTitle;
    v20 = actionConfirmationAlertSubtitle;
    goto LABEL_22;
  }

LABEL_21:
  [(PXMomentShareStatusPresentation *)self setIsPaused:IsPaused];
  [(PXMomentShareStatusPresentation *)self setPauseStatusDescription:failureDescription];
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionTitle:actionTitle];
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionConfirmationAlertTitle:actionConfirmationAlertTitle];
  v20 = actionConfirmationAlertSubtitle;
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionConfirmationAlertSubtitle:actionConfirmationAlertSubtitle];
  v21 = actionConfirmationAlertButtonTitle;
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionConfirmationAlertButtonTitle:actionConfirmationAlertButtonTitle];
  [(PXMomentShareStatusPresentation *)self setPauseResolutionAction:v10];
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionType:serviceAction];
  v19 = 1;
LABEL_22:
  v22 = status;
  v23 = v22;
  if (v22)
  {
    v24 = v10;
    if (_IsPaused(v22))
    {
      v25 = 0;
      goto LABEL_29;
    }

    if ([v23 state])
    {
      v25 = [v23 activity] != 2;
      goto LABEL_29;
    }
  }

  else
  {
    v24 = v10;
  }

  v25 = 1;
LABEL_29:

  if (v25 != [(PXMomentShareStatusPresentation *)self isReadyForUpdates])
  {
    [(PXMomentShareStatusPresentation *)self setIsReadyForUpdates:v25];
LABEL_32:
    [(PXMomentShareStatusPresentation *)self _updateCountsAndStatus];
    goto LABEL_33;
  }

  if (v19)
  {
    goto LABEL_32;
  }

LABEL_33:
}

void __51__PXMomentShareStatusPresentation__updateCPLStatus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) action];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (MomentShareStatusObservationContext == context)
  {
    [(PXMomentShareStatusPresentation *)self _updateCountsAndStatus];
  }

  else
  {
    if (PXCPLUIStatusProviderObservationContext_230086 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusPresentation.m" lineNumber:637 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXMomentShareStatusPresentation *)self _updateCPLStatus];
  }
}

- (void)_updateCountsAndStatus
{
  momentShareStatus = [(PXMomentShareStatusPresentation *)self momentShareStatus];
  momentShare = [momentShareStatus momentShare];
  if (momentShare)
  {
    copyingAssetsFetchResult = [momentShareStatus copyingAssetsFetchResult];
    v61 = [copyingAssetsFetchResult count];
    copiedAssetsFetchResult = [momentShareStatus copiedAssetsFetchResult];
    v64 = [copiedAssetsFetchResult count];
    allAssetsFetchResult = [momentShareStatus allAssetsFetchResult];
    v58 = [allAssetsFetchResult count];

    cloudPhotoCount = [momentShare cloudPhotoCount];
    cloudVideoCount = [momentShare cloudVideoCount];
    photosCount = [momentShare photosCount];
    videosCount = [momentShare videosCount];
    invitation = [momentShareStatus invitation];
    owner = [invitation owner];
    localizedName = [owner localizedName];

    selfCopy = self;
    presentationStyle = self->_presentationStyle;
    px_momentShareType = [momentShare px_momentShareType];
    v54 = PLLocalizedCountDescription();
    [momentShare expiryDate];
    if (objc_claimAutoreleasedReturnValue())
    {
      expiryDate = [momentShare expiryDate];
      PXCMMStringForExpiryDate(expiryDate, 1);
    }

    v15 = videosCount + photosCount;

    if (localizedName)
    {
      PXLocalizedStringFromTable(@"PXCMMFromSender", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v16 = cloudVideoCount + cloudPhotoCount;
    isPaused = [(PXMomentShareStatusPresentation *)selfCopy isPaused];
    aggregateMediaType = [momentShare aggregateMediaType];
    v19 = px_momentShareType;
    v55 = momentShare;
    v56 = momentShareStatus;
    if (px_momentShareType != 1)
    {
      if (!px_momentShareType)
      {
        v20 = v15 > v58 && v15 <= v16;
        if (v15 > v16 && presentationStyle <= 3)
        {
          if (isPaused)
          {
            PXLocalizedAssetCountForUsage(v15 - v16, aggregateMediaType, 0, 3);
          }

          PXLocalizedAssetCountForUsage(v15, aggregateMediaType, 0, 2);
        }

        if (presentationStyle == 2 && v20)
        {
          PXLocalizedAssetCountForUsage(v15 - v58, aggregateMediaType, 0, 4);
        }

        if (presentationStyle == 1)
        {
          v35 = 19;
        }

        else
        {
          v35 = 0;
        }

        PXLocalizedAssetCountForUsage(v15, aggregateMediaType, 0, v35);
      }

      v25 = 0;
      v29 = 0;
      v23 = 0;
      v24 = v61;
      v30 = v64;
      v36 = videosCount + photosCount;
      goto LABEL_48;
    }

    v22 = [momentShare status] == 3 && v15 > v58;
    v53 = videosCount + photosCount;
    if (videosCount + photosCount == v64)
    {
      v88 = photosCount;
      v89 = videosCount;
      v90 = 0;
      v23 = PXLocalizedStringForDetailedCounts(&v88, @"PXCMMFooterPhotosSavedAllTitle", @"PXCMMFooterVideosSavedAllTitle", @"PXCMMFooterItemsSavedAllTitle");
    }

    else
    {
      if (v61 > 0)
      {
        Result = PXCMMMediaTypeForFetchResult(copyingAssetsFetchResult);
        PXLocalizedAssetCountForUsage(v61, Result, 0, 8);
      }

      if (v64 >= 1)
      {
        v88 = photosCount;
        v89 = videosCount;
        v90 = 0;
        PXLocalizedStringForDetailedCounts(&v88, @"PXCMMFooter_%ld_PhotosSavedTitleFormat", @"PXCMMFooter_%ld_VideosSavedTitleFormat", @"PXCMMFooter_%ld_ItemsSavedTitleFormat");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }

      v23 = 0;
    }

    if (v22)
    {
      if (isPaused)
      {
        PXLocalizedAssetCountForUsage(v53 - v58, aggregateMediaType, 0, 6);
      }

      if (presentationStyle > 4)
      {
        v46 = 0;
      }

      else if (presentationStyle == 2)
      {
        v46 = 4;
        if ([(PXMomentShareStatusPresentation *)selfCopy isReadyForUpdates]&& v53 > v16)
        {
          v47 = +[PXCompleteMyMomentSettings sharedInstance];
          if ([v47 disableDescriptiveWaiting])
          {
            v46 = 4;
          }

          else
          {
            v46 = 7;
          }
        }
      }

      else
      {
        v46 = 4;
      }

      PXLocalizedAssetCountForUsage(v53 - v58, aggregateMediaType, 0, v46);
    }

    v24 = v61;
    if (v61 >= 1)
    {
      v33 = PXCMMMediaTypeForFetchResult(copyingAssetsFetchResult);
      v34 = v64 + v61;
      if (isPaused)
      {
        PXLocalizedAssetCountForUsage(v34, v33, 0, 9);
      }

      PXLocalizedAssetCountForUsage(v34, v33, 0, 8);
    }

    if (v64 < 1)
    {
      v36 = videosCount + photosCount;
      if ((presentationStyle - 3) < 2 || !presentationStyle)
      {
        PXLocalizedAssetCountForUsage(v53, aggregateMediaType, 0, 0);
      }

      if (presentationStyle == 2)
      {
        PXLocalizedAssetCountForUsage(v53, aggregateMediaType, 0, 4);
      }

      v25 = 0;
      v29 = 0;
      v19 = 1;
      v30 = v64;
      goto LABEL_48;
    }

    if (v53 == v64)
    {
      v25 = 6;
      if (presentationStyle > 2)
      {
        if (presentationStyle == 3)
        {
          PXLocalizedAssetCountForUsage(v64, aggregateMediaType, 0, 0);
        }

        if (presentationStyle == 4)
        {
          PXLocalizedAssetCountForUsage(v64, aggregateMediaType, 0, 0);
        }
      }

      else
      {
        if (!presentationStyle)
        {
          v50 = v23;
          v51 = PXCMMMediaTypeForFetchResult(copiedAssetsFetchResult);
          v52 = PXLocalizedAssetMessageForUsage(v51, 0, 0);

          v29 = v52;
          v24 = v61;
          v23 = v50;
          v25 = 6;
          goto LABEL_83;
        }

        if (presentationStyle == 1)
        {
          v26 = v23;
          v27 = PXCMMMediaTypeForFetchResult(copiedAssetsFetchResult);
          v28 = PXLocalizedAssetMessageForUsage(v27, 1, 0);
          v24 = v61;
          v29 = v28;
          v23 = v26;
          v25 = 6;
LABEL_83:
          v19 = 1;
          v36 = videosCount + photosCount;
          v30 = v64;
LABEL_48:
          v63 = v23;
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = __57__PXMomentShareStatusPresentation__updateCountsAndStatus__block_invoke;
          v69[3] = &unk_1E7748708;
          v70 = v54;
          v71 = v23;
          v72 = @" ";
          v73 = 0;
          v74 = v29;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v87 = -1.0;
          v82 = v19;
          v83 = v25;
          v84 = v36;
          v85 = v30;
          v86 = v24;
          v37 = v29;
          v59 = 0;
          v62 = 0;
          v38 = 0;
          v39 = 0;
          v67 = 0;
          v65 = 0;
          v40 = 0;
          v41 = v37;
          v42 = 0;
          v43 = @" ";
          v44 = v63;
          v45 = v54;
          [(PXMomentShareStatusPresentation *)selfCopy performChanges:v69];

          momentShare = v55;
          momentShareStatus = v56;
          goto LABEL_49;
        }
      }

LABEL_80:
      v29 = 0;
      goto LABEL_83;
    }

    v25 = 5;
    if (presentationStyle > 2)
    {
      if (presentationStyle == 4)
      {
        PXLocalizedAssetCountForUsage(v53, aggregateMediaType, 0, 0);
      }

      if (presentationStyle != 3)
      {
        goto LABEL_80;
      }
    }

    else if (presentationStyle)
    {
      if (presentationStyle == 1)
      {
        v48 = PXCMMMediaTypeForFetchResult(copiedAssetsFetchResult);
        PXLocalizedAssetCountForUsage(v64, v48, 0, 18);
      }

      goto LABEL_80;
    }

    v49 = PXCMMMediaTypeForFetchResult(copiedAssetsFetchResult);
    PXLocalizedAssetCountForUsage(v53 - v64, v49, 0, 20);
  }

LABEL_49:
}

void __57__PXMomentShareStatusPresentation__updateCountsAndStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 128);
  v5 = a2;
  [v5 setType:v3];
  [v5 setAssetsTitle:*(a1 + 32)];
  [v5 setAssetsSaveStatusTitle:*(a1 + 40)];
  [v5 setExpirationTitle:*(a1 + 48)];
  [v5 setActivityTitle:*(a1 + 56)];
  [v5 setIdleTitle:*(a1 + 64)];
  [v5 setPauseTitle:*(a1 + 72)];
  [v5 setActionTitle:*(a1 + 80)];
  [v5 setActionConfirmationAlertTitle:*(a1 + 88)];
  [v5 setActionConfirmationAlertSubtitle:*(a1 + 96)];
  [v5 setActionConfirmationAlertButtonTitle:*(a1 + 104)];
  [v5 setAction:*(a1 + 120)];
  [v5 setByline:*(a1 + 112)];
  LODWORD(v4) = *(a1 + 168);
  [v5 setActivityProgress:v4];
  [v5 setState:*(a1 + 136)];
  [v5 setNumberOfAssetsNotCopied:*(a1 + 144) - (*(a1 + 152) + *(a1 + 160))];
  [v5 setNumberOfAssetsCopied:*(a1 + 152)];
}

- (void)setNumberOfAssetsCopied:(int64_t)copied
{
  if (self->_numberOfAssetsCopied != copied)
  {
    self->_numberOfAssetsCopied = copied;
    [(PXMomentShareStatusPresentation *)self signalChange:0x10000];
  }
}

- (void)setNumberOfAssetsNotCopied:(int64_t)copied
{
  if (self->_numberOfAssetsNotCopied != copied)
  {
    self->_numberOfAssetsNotCopied = copied;
    [(PXMomentShareStatusPresentation *)self signalChange:0x4000];
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(PXMomentShareStatusPresentation *)self signalChange:0x2000];
  }
}

- (void)setActivityProgress:(float)progress
{
  if (self->_activityProgress != progress)
  {
    self->_activityProgress = progress;
    [(PXMomentShareStatusPresentation *)self signalChange:4096];
  }
}

- (void)setByline:(id)byline
{
  bylineCopy = byline;
  v5 = bylineCopy;
  if (self->_byline != bylineCopy)
  {
    v9 = bylineCopy;
    v6 = [(NSString *)bylineCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      byline = self->_byline;
      self->_byline = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:2048];
      v5 = v9;
    }
  }
}

- (void)setAction:(id)action
{
  if (self->_action != action)
  {
    v4 = [action copy];
    action = self->_action;
    self->_action = v4;

    [(PXMomentShareStatusPresentation *)self signalChange:1024];
  }
}

- (void)setActionConfirmationAlertButtonTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_actionConfirmationAlertButtonTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      actionConfirmationAlertButtonTitle = self->_actionConfirmationAlertButtonTitle;
      self->_actionConfirmationAlertButtonTitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:512];
      v5 = v9;
    }
  }
}

- (void)setActionConfirmationAlertSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = subtitleCopy;
  if (self->_actionConfirmationAlertSubtitle != subtitleCopy)
  {
    v9 = subtitleCopy;
    v6 = [(NSString *)subtitleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      actionConfirmationAlertSubtitle = self->_actionConfirmationAlertSubtitle;
      self->_actionConfirmationAlertSubtitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:256];
      v5 = v9;
    }
  }
}

- (void)setActionConfirmationAlertTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_actionConfirmationAlertTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      actionConfirmationAlertTitle = self->_actionConfirmationAlertTitle;
      self->_actionConfirmationAlertTitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:128];
      v5 = v9;
    }
  }
}

- (void)setActionTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_actionTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      actionTitle = self->_actionTitle;
      self->_actionTitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:64];
      v5 = v9;
    }
  }
}

- (void)setPauseTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_pauseTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      pauseTitle = self->_pauseTitle;
      self->_pauseTitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:32];
      v5 = v9;
    }
  }
}

- (void)setIdleTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_idleTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      idleTitle = self->_idleTitle;
      self->_idleTitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:16];
      v5 = v9;
    }
  }
}

- (void)setActivityTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_activityTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      activityTitle = self->_activityTitle;
      self->_activityTitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:8];
      v5 = v9;
    }
  }
}

- (void)setExpirationTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_expirationTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      expirationTitle = self->_expirationTitle;
      self->_expirationTitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:4];
      v5 = v9;
    }
  }
}

- (void)setAssetsSaveStatusTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_assetsSaveStatusTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      assetsSaveStatusTitle = self->_assetsSaveStatusTitle;
      self->_assetsSaveStatusTitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:0x8000];
      v5 = v9;
    }
  }
}

- (void)setAssetsTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_assetsTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      assetsTitle = self->_assetsTitle;
      self->_assetsTitle = v7;

      [(PXMomentShareStatusPresentation *)self signalChange:2];
      v5 = v9;
    }
  }
}

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [(PXMomentShareStatusPresentation *)self signalChange:1];
  }
}

- (void)didPerformChanges
{
  v7 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = PXMomentShareStatusPresentation;
  [(PXMomentShareStatusPresentation *)&v4 didPerformChanges];
  if ([(PXMomentShareStatusPresentation *)self currentChanges])
  {
    v3 = PLSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[PXMomentShareStatusPresentation] Did transition to %@", buf, 0xCu);
    }
  }
}

- (PXCMMInvitation)invitation
{
  momentShareStatus = [(PXMomentShareStatusPresentation *)self momentShareStatus];
  invitation = [momentShareStatus invitation];

  return invitation;
}

- (PXDisplayMomentShare)momentShare
{
  momentShareStatus = [(PXMomentShareStatusPresentation *)self momentShareStatus];
  momentShare = [momentShareStatus momentShare];

  return momentShare;
}

- (NSString)description
{
  v27 = MEMORY[0x1E696AEC0];
  v26 = objc_opt_class();
  presentationStyle = self->_presentationStyle;
  if (presentationStyle > 4)
  {
    v25 = 0;
  }

  else
  {
    v25 = off_1E7748728[presentationStyle];
  }

  type = self->_type;
  v5 = @"receiver";
  if (type != 1)
  {
    v5 = 0;
  }

  if (type)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"sender";
  }

  v24 = v6;
  v7 = 0;
  state = self->_state;
  if (state <= 6)
  {
    v7 = off_1E7748750[state];
  }

  v23 = v7;
  activityTitle = self->_activityTitle;
  if (!activityTitle)
  {
    activityTitle = @"-";
  }

  v22 = activityTitle;
  activityProgress = self->_activityProgress;
  if (self->_pauseTitle)
  {
    pauseTitle = self->_pauseTitle;
  }

  else
  {
    pauseTitle = @"-";
  }

  if (self->_actionTitle)
  {
    actionTitle = self->_actionTitle;
  }

  else
  {
    actionTitle = @"-";
  }

  if (self->_actionConfirmationAlertTitle)
  {
    actionConfirmationAlertTitle = self->_actionConfirmationAlertTitle;
  }

  else
  {
    actionConfirmationAlertTitle = @"-";
  }

  if (self->_actionConfirmationAlertSubtitle)
  {
    actionConfirmationAlertSubtitle = self->_actionConfirmationAlertSubtitle;
  }

  else
  {
    actionConfirmationAlertSubtitle = @"-";
  }

  if (self->_actionConfirmationAlertButtonTitle)
  {
    actionConfirmationAlertButtonTitle = self->_actionConfirmationAlertButtonTitle;
  }

  else
  {
    actionConfirmationAlertButtonTitle = @"-";
  }

  if (self->_assetsTitle)
  {
    assetsTitle = self->_assetsTitle;
  }

  else
  {
    assetsTitle = @"-";
  }

  if (self->_expirationTitle)
  {
    expirationTitle = self->_expirationTitle;
  }

  else
  {
    expirationTitle = @"-";
  }

  if (self->_idleTitle)
  {
    idleTitle = self->_idleTitle;
  }

  else
  {
    idleTitle = @"-";
  }

  momentShare = [(PXMomentShareStatus *)self->_momentShareStatus momentShare];
  v20 = [v27 stringWithFormat:@"<%@:%p, style:%@, type:%@, state:%@, activity:%@, progress:%f, pause:%@, action:%@, alert:%@/%@/%@, assets:%@, expiration:%@, idle:%@, share:%@>", v26, self, v25, v24, v23, v22, *&activityProgress, pauseTitle, actionTitle, actionConfirmationAlertTitle, actionConfirmationAlertSubtitle, actionConfirmationAlertButtonTitle, assetsTitle, expirationTitle, idleTitle, momentShare];

  return v20;
}

- (PXMomentShareStatusPresentation)initWithMomentShare:(id)share presentationStyle:(int64_t)style
{
  shareCopy = share;
  if (!shareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusPresentation.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v8 = [[PXPhotoKitMomentShareStatus alloc] initWithPhotoKitMomentShare:shareCopy];
  v9 = [(PXMomentShareStatusPresentation *)self initWithMomentShareStatus:v8 presentationStyle:style];

  return v9;
}

- (PXMomentShareStatusPresentation)initWithMomentShareStatus:(id)status presentationStyle:(int64_t)style
{
  statusCopy = status;
  if (!statusCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusPresentation.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"momentShareStatus"}];
  }

  v15.receiver = self;
  v15.super_class = PXMomentShareStatusPresentation;
  v9 = [(PXMomentShareStatusPresentation *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_presentationStyle = style;
    objc_storeStrong(&v9->_momentShareStatus, status);
    [(PXMomentShareStatus *)v10->_momentShareStatus registerChangeObserver:v10 context:MomentShareStatusObservationContext];
    if ((v10->_presentationStyle & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      statusProvider = [statusCopy statusProvider];
      statusProvider = v10->_statusProvider;
      v10->_statusProvider = statusProvider;

      [(PXCPLUIStatusProvider *)v10->_statusProvider registerChangeObserver:v10 context:PXCPLUIStatusProviderObservationContext_230086];
      [(PXMomentShareStatusPresentation *)v10 _updateCPLStatus];
    }

    [(PXMomentShareStatusPresentation *)v10 _updateCountsAndStatus];
  }

  return v10;
}

- (PXMomentShareStatusPresentation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusPresentation.m" lineNumber:123 description:{@"%s is not available as initializer", "-[PXMomentShareStatusPresentation init]"}];

  abort();
}

+ (PXMomentShareStatusPresentation)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusPresentation.m" lineNumber:127 description:{@"%s is not available as initializer", "+[PXMomentShareStatusPresentation new]"}];

  abort();
}

@end