@interface PXMomentShareStatusPresentation
+ (PXMomentShareStatusPresentation)new;
- (NSString)description;
- (PXCMMInvitation)invitation;
- (PXDisplayMomentShare)momentShare;
- (PXMomentShareStatusPresentation)init;
- (PXMomentShareStatusPresentation)initWithMomentShare:(id)a3 presentationStyle:(int64_t)a4;
- (PXMomentShareStatusPresentation)initWithMomentShareStatus:(id)a3 presentationStyle:(int64_t)a4;
- (void)_updateCPLStatus;
- (void)_updateCountsAndStatus;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAction:(id)a3;
- (void)setActionConfirmationAlertButtonTitle:(id)a3;
- (void)setActionConfirmationAlertSubtitle:(id)a3;
- (void)setActionConfirmationAlertTitle:(id)a3;
- (void)setActionTitle:(id)a3;
- (void)setActivityProgress:(float)a3;
- (void)setActivityTitle:(id)a3;
- (void)setAssetsSaveStatusTitle:(id)a3;
- (void)setAssetsTitle:(id)a3;
- (void)setByline:(id)a3;
- (void)setExpirationTitle:(id)a3;
- (void)setIdleTitle:(id)a3;
- (void)setNumberOfAssetsCopied:(int64_t)a3;
- (void)setNumberOfAssetsNotCopied:(int64_t)a3;
- (void)setPauseTitle:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setType:(int64_t)a3;
@end

@implementation PXMomentShareStatusPresentation

- (void)_updateCPLStatus
{
  v3 = [(PXCPLUIStatusProvider *)self->_statusProvider status];
  IsPaused = _IsPaused(v3);
  v5 = [(PXMomentShareStatusPresentation *)self isPaused];
  if (IsPaused)
  {
    v6 = [v3 failureDescription];
    v7 = [v3 actionTitle];
    v8 = [v3 actionConfirmationAlertTitle];
    v32 = [v3 actionConfirmationAlertSubtitle];
    v31 = [v3 actionConfirmationAlertButtonTitle];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PXMomentShareStatusPresentation__updateCPLStatus__block_invoke;
    aBlock[3] = &unk_1E774C648;
    v9 = v3;
    v34 = v9;
    v10 = _Block_copy(aBlock);

    v11 = [v9 serviceAction];
  }

  else
  {
    v10 = 0;
    v31 = 0;
    v32 = 0;
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v11 = 0;
  }

  v12 = [(PXMomentShareStatusPresentation *)self pauseStatusDescription];
  if (v6 != v12 && ![v6 isEqualToString:v12])
  {
    goto LABEL_20;
  }

  v28 = v5;
  v13 = [(PXMomentShareStatusPresentation *)self pauseResolutionActionTitle];
  if (v7 != v13 && ![v7 isEqualToString:v13])
  {
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v14 = [(PXMomentShareStatusPresentation *)self pauseResolutionActionConfirmationAlertTitle];
  v15 = v8;
  v16 = v14;
  v30 = v15;
  if (v15 != v14 && ![v15 isEqualToString:v14])
  {
LABEL_18:

    v8 = v30;
    goto LABEL_19;
  }

  v27 = v10;
  v17 = [(PXMomentShareStatusPresentation *)self pauseResolutionActionConfirmationAlertSubtitle];
  if (v32 != v17 && ![v32 isEqualToString:v17])
  {
LABEL_17:

    v10 = v27;
    goto LABEL_18;
  }

  v18 = [(PXMomentShareStatusPresentation *)self pauseResolutionActionConfirmationAlertButtonTitle];
  if (v31 != v18 && ![v31 isEqualToString:v18])
  {

    v11 = v26;
    goto LABEL_17;
  }

  v29 = (v26 != [(PXMomentShareStatusPresentation *)self pauseResolutionActionType]) | IsPaused ^ v28;

  v11 = v26;
  v8 = v30;
  v10 = v27;
  if ((v29 & 1) == 0)
  {
    v19 = 0;
    v21 = v31;
    v20 = v32;
    goto LABEL_22;
  }

LABEL_21:
  [(PXMomentShareStatusPresentation *)self setIsPaused:IsPaused];
  [(PXMomentShareStatusPresentation *)self setPauseStatusDescription:v6];
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionTitle:v7];
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionConfirmationAlertTitle:v8];
  v20 = v32;
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionConfirmationAlertSubtitle:v32];
  v21 = v31;
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionConfirmationAlertButtonTitle:v31];
  [(PXMomentShareStatusPresentation *)self setPauseResolutionAction:v10];
  [(PXMomentShareStatusPresentation *)self setPauseResolutionActionType:v11];
  v19 = 1;
LABEL_22:
  v22 = v3;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (MomentShareStatusObservationContext == a5)
  {
    [(PXMomentShareStatusPresentation *)self _updateCountsAndStatus];
  }

  else
  {
    if (PXCPLUIStatusProviderObservationContext_230086 != a5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusPresentation.m" lineNumber:637 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXMomentShareStatusPresentation *)self _updateCPLStatus];
  }
}

- (void)_updateCountsAndStatus
{
  v3 = [(PXMomentShareStatusPresentation *)self momentShareStatus];
  v4 = [v3 momentShare];
  if (v4)
  {
    v60 = [v3 copyingAssetsFetchResult];
    v61 = [v60 count];
    v57 = [v3 copiedAssetsFetchResult];
    v64 = [v57 count];
    v5 = [v3 allAssetsFetchResult];
    v58 = [v5 count];

    v6 = [v4 cloudPhotoCount];
    v7 = [v4 cloudVideoCount];
    v8 = [v4 photosCount];
    v9 = [v4 videosCount];
    v10 = [v3 invitation];
    v11 = [v10 owner];
    v12 = [v11 localizedName];

    v68 = self;
    presentationStyle = self->_presentationStyle;
    v66 = [v4 px_momentShareType];
    v54 = PLLocalizedCountDescription();
    [v4 expiryDate];
    if (objc_claimAutoreleasedReturnValue())
    {
      v14 = [v4 expiryDate];
      PXCMMStringForExpiryDate(v14, 1);
    }

    v15 = v9 + v8;

    if (v12)
    {
      PXLocalizedStringFromTable(@"PXCMMFromSender", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    v16 = v7 + v6;
    v17 = [(PXMomentShareStatusPresentation *)v68 isPaused];
    v18 = [v4 aggregateMediaType];
    v19 = v66;
    v55 = v4;
    v56 = v3;
    if (v66 != 1)
    {
      if (!v66)
      {
        v20 = v15 > v58 && v15 <= v16;
        if (v15 > v16 && presentationStyle <= 3)
        {
          if (v17)
          {
            PXLocalizedAssetCountForUsage(v15 - v16, v18, 0, 3);
          }

          PXLocalizedAssetCountForUsage(v15, v18, 0, 2);
        }

        if (presentationStyle == 2 && v20)
        {
          PXLocalizedAssetCountForUsage(v15 - v58, v18, 0, 4);
        }

        if (presentationStyle == 1)
        {
          v35 = 19;
        }

        else
        {
          v35 = 0;
        }

        PXLocalizedAssetCountForUsage(v15, v18, 0, v35);
      }

      v25 = 0;
      v29 = 0;
      v23 = 0;
      v24 = v61;
      v30 = v64;
      v36 = v9 + v8;
      goto LABEL_48;
    }

    v22 = [v4 status] == 3 && v15 > v58;
    v53 = v9 + v8;
    if (v9 + v8 == v64)
    {
      v88 = v8;
      v89 = v9;
      v90 = 0;
      v23 = PXLocalizedStringForDetailedCounts(&v88, @"PXCMMFooterPhotosSavedAllTitle", @"PXCMMFooterVideosSavedAllTitle", @"PXCMMFooterItemsSavedAllTitle");
    }

    else
    {
      if (v61 > 0)
      {
        Result = PXCMMMediaTypeForFetchResult(v60);
        PXLocalizedAssetCountForUsage(v61, Result, 0, 8);
      }

      if (v64 >= 1)
      {
        v88 = v8;
        v89 = v9;
        v90 = 0;
        PXLocalizedStringForDetailedCounts(&v88, @"PXCMMFooter_%ld_PhotosSavedTitleFormat", @"PXCMMFooter_%ld_VideosSavedTitleFormat", @"PXCMMFooter_%ld_ItemsSavedTitleFormat");
        objc_claimAutoreleasedReturnValue();
        PXLocalizedStringWithValidatedFormat();
      }

      v23 = 0;
    }

    if (v22)
    {
      if (v17)
      {
        PXLocalizedAssetCountForUsage(v53 - v58, v18, 0, 6);
      }

      if (presentationStyle > 4)
      {
        v46 = 0;
      }

      else if (presentationStyle == 2)
      {
        v46 = 4;
        if ([(PXMomentShareStatusPresentation *)v68 isReadyForUpdates]&& v53 > v16)
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

      PXLocalizedAssetCountForUsage(v53 - v58, v18, 0, v46);
    }

    v24 = v61;
    if (v61 >= 1)
    {
      v33 = PXCMMMediaTypeForFetchResult(v60);
      v34 = v64 + v61;
      if (v17)
      {
        PXLocalizedAssetCountForUsage(v34, v33, 0, 9);
      }

      PXLocalizedAssetCountForUsage(v34, v33, 0, 8);
    }

    if (v64 < 1)
    {
      v36 = v9 + v8;
      if ((presentationStyle - 3) < 2 || !presentationStyle)
      {
        PXLocalizedAssetCountForUsage(v53, v18, 0, 0);
      }

      if (presentationStyle == 2)
      {
        PXLocalizedAssetCountForUsage(v53, v18, 0, 4);
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
          PXLocalizedAssetCountForUsage(v64, v18, 0, 0);
        }

        if (presentationStyle == 4)
        {
          PXLocalizedAssetCountForUsage(v64, v18, 0, 0);
        }
      }

      else
      {
        if (!presentationStyle)
        {
          v50 = v23;
          v51 = PXCMMMediaTypeForFetchResult(v57);
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
          v27 = PXCMMMediaTypeForFetchResult(v57);
          v28 = PXLocalizedAssetMessageForUsage(v27, 1, 0);
          v24 = v61;
          v29 = v28;
          v23 = v26;
          v25 = 6;
LABEL_83:
          v19 = 1;
          v36 = v9 + v8;
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
          [(PXMomentShareStatusPresentation *)v68 performChanges:v69];

          v4 = v55;
          v3 = v56;
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
        PXLocalizedAssetCountForUsage(v53, v18, 0, 0);
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
        v48 = PXCMMMediaTypeForFetchResult(v57);
        PXLocalizedAssetCountForUsage(v64, v48, 0, 18);
      }

      goto LABEL_80;
    }

    v49 = PXCMMMediaTypeForFetchResult(v57);
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

- (void)setNumberOfAssetsCopied:(int64_t)a3
{
  if (self->_numberOfAssetsCopied != a3)
  {
    self->_numberOfAssetsCopied = a3;
    [(PXMomentShareStatusPresentation *)self signalChange:0x10000];
  }
}

- (void)setNumberOfAssetsNotCopied:(int64_t)a3
{
  if (self->_numberOfAssetsNotCopied != a3)
  {
    self->_numberOfAssetsNotCopied = a3;
    [(PXMomentShareStatusPresentation *)self signalChange:0x4000];
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(PXMomentShareStatusPresentation *)self signalChange:0x2000];
  }
}

- (void)setActivityProgress:(float)a3
{
  if (self->_activityProgress != a3)
  {
    self->_activityProgress = a3;
    [(PXMomentShareStatusPresentation *)self signalChange:4096];
  }
}

- (void)setByline:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_byline != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setAction:(id)a3
{
  if (self->_action != a3)
  {
    v4 = [a3 copy];
    action = self->_action;
    self->_action = v4;

    [(PXMomentShareStatusPresentation *)self signalChange:1024];
  }
}

- (void)setActionConfirmationAlertButtonTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionConfirmationAlertButtonTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setActionConfirmationAlertSubtitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionConfirmationAlertSubtitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setActionConfirmationAlertTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionConfirmationAlertTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setActionTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setPauseTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_pauseTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setIdleTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_idleTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setActivityTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activityTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setExpirationTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_expirationTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setAssetsSaveStatusTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_assetsSaveStatusTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setAssetsTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_assetsTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setType:(int64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
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
      v6 = self;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[PXMomentShareStatusPresentation] Did transition to %@", buf, 0xCu);
    }
  }
}

- (PXCMMInvitation)invitation
{
  v2 = [(PXMomentShareStatusPresentation *)self momentShareStatus];
  v3 = [v2 invitation];

  return v3;
}

- (PXDisplayMomentShare)momentShare
{
  v2 = [(PXMomentShareStatusPresentation *)self momentShareStatus];
  v3 = [v2 momentShare];

  return v3;
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

  v19 = [(PXMomentShareStatus *)self->_momentShareStatus momentShare];
  v20 = [v27 stringWithFormat:@"<%@:%p, style:%@, type:%@, state:%@, activity:%@, progress:%f, pause:%@, action:%@, alert:%@/%@/%@, assets:%@, expiration:%@, idle:%@, share:%@>", v26, self, v25, v24, v23, v22, *&activityProgress, pauseTitle, actionTitle, actionConfirmationAlertTitle, actionConfirmationAlertSubtitle, actionConfirmationAlertButtonTitle, assetsTitle, expirationTitle, idleTitle, v19];

  return v20;
}

- (PXMomentShareStatusPresentation)initWithMomentShare:(id)a3 presentationStyle:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusPresentation.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v8 = [[PXPhotoKitMomentShareStatus alloc] initWithPhotoKitMomentShare:v7];
  v9 = [(PXMomentShareStatusPresentation *)self initWithMomentShareStatus:v8 presentationStyle:a4];

  return v9;
}

- (PXMomentShareStatusPresentation)initWithMomentShareStatus:(id)a3 presentationStyle:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusPresentation.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"momentShareStatus"}];
  }

  v15.receiver = self;
  v15.super_class = PXMomentShareStatusPresentation;
  v9 = [(PXMomentShareStatusPresentation *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_presentationStyle = a4;
    objc_storeStrong(&v9->_momentShareStatus, a3);
    [(PXMomentShareStatus *)v10->_momentShareStatus registerChangeObserver:v10 context:MomentShareStatusObservationContext];
    if ((v10->_presentationStyle & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v11 = [v8 statusProvider];
      statusProvider = v10->_statusProvider;
      v10->_statusProvider = v11;

      [(PXCPLUIStatusProvider *)v10->_statusProvider registerChangeObserver:v10 context:PXCPLUIStatusProviderObservationContext_230086];
      [(PXMomentShareStatusPresentation *)v10 _updateCPLStatus];
    }

    [(PXMomentShareStatusPresentation *)v10 _updateCountsAndStatus];
  }

  return v10;
}

- (PXMomentShareStatusPresentation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusPresentation.m" lineNumber:123 description:{@"%s is not available as initializer", "-[PXMomentShareStatusPresentation init]"}];

  abort();
}

+ (PXMomentShareStatusPresentation)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXMomentShareStatusPresentation.m" lineNumber:127 description:{@"%s is not available as initializer", "+[PXMomentShareStatusPresentation new]"}];

  abort();
}

@end