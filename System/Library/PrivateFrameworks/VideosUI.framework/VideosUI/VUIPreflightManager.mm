@interface VUIPreflightManager
+ (id)defaultPreflightManager;
- (BOOL)_isAllowedToPlayOrPurchase;
- (BOOL)_isSportingEvent;
- (BOOL)_isTrailer;
- (BOOL)_shouldShowAgeConfirmationAlert;
- (VUIPreflightManager)init;
- (id)_getAdamId;
- (id)_getCanonicalMeta;
- (id)_getMediaApiResourceType;
- (id)_lastAgeConfirmationPrompted;
- (id)_ratingDomain;
- (id)_ratingValue;
- (int64_t)_lastConfirmedAge;
- (int64_t)_requiredAgeForPlayback;
- (void)_logRatingsInfo:(id)info maxAllowedRank:(id)rank ratingValue:(id)value;
- (void)_performAgeGateVerificationWithCompletion:(id)completion;
- (void)_performRestrictionsCheckWithCompletion:(id)completion;
- (void)_preflightDownloadWithCompletion:(id)completion;
- (void)_preflightWithOptions:(int64_t)options userInfo:(id)info completion:(id)completion;
- (void)_promptForHighQualityDownloadsWithCompletion:(id)completion;
- (void)_setLastAgeConfirmationPrompted:(id)prompted;
- (void)_setLastConfirmedAge:(int64_t)age;
- (void)_showAgeConfirmationWithPresentingViewController:(id)controller completion:(id)completion;
- (void)_showRestrictionsAlertForRatingDomain:(id)domain completion:(id)completion;
- (void)preflightWithOptions:(int64_t)options completion:(id)completion;
- (void)setFrequencyOfAgeConfirmation:(id)confirmation;
- (void)setMediaItem:(id)item;
- (void)setRestrictionsState:(int64_t)state;
- (void)setVideosPlayable:(id)playable;
@end

@implementation VUIPreflightManager

+ (id)defaultPreflightManager
{
  if (defaultPreflightManager_onceToken != -1)
  {
    +[VUIPreflightManager defaultPreflightManager];
  }

  v3 = defaultPreflightManager_defaultPreflightManager;

  return v3;
}

void __46__VUIPreflightManager_defaultPreflightManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = defaultPreflightManager_defaultPreflightManager;
  defaultPreflightManager_defaultPreflightManager = v0;
}

- (VUIPreflightManager)init
{
  v3.receiver = self;
  v3.super_class = VUIPreflightManager;
  result = [(VUIPreflightManager *)&v3 init];
  if (result)
  {
    result->_restrictionsCheckType = 0;
    result->_contentAllowsCellularDownload = 1;
  }

  return result;
}

- (void)setVideosPlayable:(id)playable
{
  playableCopy = playable;
  if (self->_videosPlayable != playableCopy)
  {
    objc_storeStrong(&self->_videosPlayable, playable);
    mediaItem = self->_mediaItem;
    self->_mediaItem = 0;

    if (playableCopy)
    {
      metadata = [(VUIVideosPlayable *)playableCopy metadata];

      if (!metadata)
      {
        v8 = VUIDefaultLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(VUIPreflightManager *)playableCopy setVideosPlayable:v8];
        }
      }

      if (sFrequencyOfConfirmation == -1)
      {
        frequencyOfAgeConfirmation = [(VUIVideosPlayable *)playableCopy frequencyOfAgeConfirmation];
        v10 = frequencyOfAgeConfirmation;
        if (frequencyOfAgeConfirmation)
        {
          sFrequencyOfConfirmation = [frequencyOfAgeConfirmation integerValue];
        }
      }
    }
  }
}

- (void)setFrequencyOfAgeConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  objc_storeStrong(&self->_frequencyOfAgeConfirmation, confirmation);
  v5 = confirmationCopy;
  if (confirmationCopy)
  {
    sFrequencyOfConfirmation = [confirmationCopy integerValue];
    v5 = confirmationCopy;
  }
}

- (void)setMediaItem:(id)item
{
  itemCopy = item;
  if (self->_mediaItem != itemCopy)
  {
    v9 = itemCopy;
    objc_storeStrong(&self->_mediaItem, item);
    videosPlayable = self->_videosPlayable;
    self->_videosPlayable = 0;

    itemCopy = v9;
    if (v9)
    {
      if (sFrequencyOfConfirmation == -1)
      {
        v7 = [(TVPMediaItem *)v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5BD8]];
        v8 = v7;
        if (v7)
        {
          sFrequencyOfConfirmation = [v7 integerValue];
        }

        itemCopy = v9;
      }
    }
  }
}

- (void)preflightWithOptions:(int64_t)options completion:(id)completion
{
  completionCopy = completion;
  presentingController = [(VUIPreflightManager *)self presentingController];

  if (presentingController)
  {
    [(VUIPreflightManager *)self _preflightWithOptions:options userInfo:0 completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)setRestrictionsState:(int64_t)state
{
  v5 = VUIDefaultLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (state == 2)
  {
    if (v6)
    {
      v10 = 0;
      v7 = "VUIPreflightManager::Setting restrictionsState to VUIRestrictionsStateWaitingForUIDismissal";
      v8 = &v10;
      goto LABEL_12;
    }
  }

  else if (state == 1)
  {
    if (v6)
    {
      v11 = 0;
      v7 = "VUIPreflightManager::Setting restrictionsState to VUIRestrictionsStatePerformingValidation";
      v8 = &v11;
      goto LABEL_12;
    }
  }

  else if (state)
  {
    if (v6)
    {
      v9 = 0;
      v7 = "VUIPreflightManager::Setting restrictionsState to unknown value";
      v8 = &v9;
      goto LABEL_12;
    }
  }

  else if (v6)
  {
    v12 = 0;
    v7 = "VUIPreflightManager::Setting restrictionsState to VUIRestrictionsStateIdle";
    v8 = &v12;
LABEL_12:
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
  }

  self->_restrictionsState = state;
}

- (void)_preflightWithOptions:(int64_t)options userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  optionsCopy = options;
  objc_initWeak(&location, self);
  if (!infoCopy)
  {
    infoCopy = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__VUIPreflightManager__preflightWithOptions_userInfo_completion___block_invoke;
  aBlock[3] = &unk_1E8732F80;
  objc_copyWeak(&v35, &location);
  v10 = completionCopy;
  v34 = v10;
  v11 = infoCopy;
  v33 = v11;
  v12 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __65__VUIPreflightManager__preflightWithOptions_userInfo_completion___block_invoke_28;
  v26[3] = &unk_1E8732FA8;
  objc_copyWeak(&v31, &location);
  v30 = &v37;
  v13 = v12;
  v28 = v13;
  v14 = v11;
  v27 = v14;
  v15 = v10;
  v29 = v15;
  v16 = _Block_copy(v26);
  v17 = v16;
  v18 = v38[3];
  if (v18)
  {
    v20 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __65__VUIPreflightManager__preflightWithOptions_userInfo_completion___block_invoke_2;
    v25[3] = &unk_1E872D790;
    v25[4] = v16;
    [(VUIPreflightManager *)self _performRestrictionsCheckWithCompletion:v25];
LABEL_9:
    v19 = (v20 + 4);
    goto LABEL_10;
  }

  if ((v18 & 2) != 0)
  {
    v20 = v24;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__VUIPreflightManager__preflightWithOptions_userInfo_completion___block_invoke_3;
    v24[3] = &unk_1E872D790;
    v24[4] = v16;
    [(VUIPreflightManager *)self _performAgeGateVerificationWithCompletion:v24];
    goto LABEL_9;
  }

  if ((v18 & 8) != 0)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__VUIPreflightManager__preflightWithOptions_userInfo_completion___block_invoke_4;
    v21[3] = &unk_1E8732FD0;
    v22 = v14;
    v23 = v17;
    [(VUIPreflightManager *)self _preflightDownloadWithCompletion:v21];
    v19 = &v22;

LABEL_10:
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v37, 8);
}

void __65__VUIPreflightManager__preflightWithOptions_userInfo_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained savedRestrictionsCompletion];

  v4 = VUIDefaultLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIPreflightManager::not resetting params to nil because they will be used for pending restrictions check", &v8, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIPreflightManager::setting params to nil", &v8, 2u);
    }

    [WeakRetained setVideosPlayable:0];
    [WeakRetained setMediaItem:0];
    [WeakRetained setMediaEntity:0];
    [WeakRetained setExtrasInfo:0];
    [WeakRetained setContentRating:0];
    [WeakRetained setIsSubscriptionPurchaseWithoutPlayback:0];
    [WeakRetained setContentAllowsCellularDownload:1];
  }

  if (*(a1 + 40))
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = VUIBoolLogString();
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPreflightManager::finished preflighting with result: %@", &v8, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  [WeakRetained setPresentingController:0];
}

void __65__VUIPreflightManager__preflightWithOptions_userInfo_completion___block_invoke_28(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (a2)
  {
    *(*(*(a1 + 56) + 8) + 24) &= ~a3;
    v7 = *(*(*(a1 + 56) + 8) + 24);
    if (v7)
    {
      [WeakRetained _preflightWithOptions:v7 userInfo:*(a1 + 32) completion:*(a1 + 48)];
      goto LABEL_7;
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
  }

  v8();
LABEL_7:
}

uint64_t __65__VUIPreflightManager__preflightWithOptions_userInfo_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [v6 setObject:v7 forKey:VUIPreflightCellularAllowedKey[0]];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v8 setObject:v9 forKey:VUIPreflightDownloadQualityKey];

  v10 = *(*(a1 + 40) + 16);

  return v10();
}

- (void)_logRatingsInfo:(id)info maxAllowedRank:(id)rank ratingValue:(id)value
{
  v29 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  rankCopy = rank;
  valueCopy = value;
  v10 = *MEMORY[0x1E69D5B10];
  if ([infoCopy isEqualToString:*MEMORY[0x1E69D5B10]])
  {
    v11 = VUIDefaultLogObject();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v27 = 138412290;
    v28 = v10;
LABEL_7:
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPreflightManager::restriction validation for domain : %@", &v27, 0xCu);
    goto LABEL_10;
  }

  v12 = *MEMORY[0x1E69D5B18];
  v13 = [infoCopy isEqualToString:*MEMORY[0x1E69D5B18]];
  v14 = VUIDefaultLogObject();
  v11 = v14;
  if (v13)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v27 = 138412290;
    v28 = v12;
    goto LABEL_7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [VUIPreflightManager _logRatingsInfo:infoCopy maxAllowedRank:v11 ratingValue:?];
  }

LABEL_10:

  v15 = VUIDefaultLogObject();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (valueCopy)
  {
    if (!v16)
    {
      goto LABEL_16;
    }

    integerValue = [valueCopy integerValue];
    v27 = 134217984;
    v28 = integerValue;
    v18 = "VUIPreflightManager::restriction validation with value : %ld";
    v19 = v15;
    v20 = 12;
  }

  else
  {
    if (!v16)
    {
      goto LABEL_16;
    }

    LOWORD(v27) = 0;
    v18 = "VUIPreflightManager::no ratingValue for content";
    v19 = v15;
    v20 = 2;
  }

  _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, v18, &v27, v20);
LABEL_16:

  v21 = VUIDefaultLogObject();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (rankCopy)
  {
    if (v22)
    {
      integerValue2 = [rankCopy integerValue];
      v27 = 134217984;
      v28 = integerValue2;
      v24 = "VUIPreflightManager::restriction validation max allowed rank : %ld";
      v25 = v21;
      v26 = 12;
LABEL_21:
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, v24, &v27, v26);
    }
  }

  else if (v22)
  {
    LOWORD(v27) = 0;
    v24 = "VUIPreflightManager::Most permissive restriction";
    v25 = v21;
    v26 = 2;
    goto LABEL_21;
  }
}

- (id)_ratingDomain
{
  mediaItem = [(VUIPreflightManager *)self mediaItem];

  if (mediaItem)
  {
    mediaItem2 = [(VUIPreflightManager *)self mediaItem];
    v5 = [mediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B08]];
LABEL_20:
    contentRating = v5;
    goto LABEL_21;
  }

  videosPlayable = [(VUIPreflightManager *)self videosPlayable];

  if (!videosPlayable)
  {
    extrasInfo = [(VUIPreflightManager *)self extrasInfo];

    if (extrasInfo)
    {
      contentRating = *MEMORY[0x1E69D5B10];
      goto LABEL_22;
    }

    mediaEntity = [(VUIPreflightManager *)self mediaEntity];
    if (mediaEntity)
    {
    }

    else
    {
      contentRating = [(VUIPreflightManager *)self contentRating];

      if (!contentRating)
      {
        goto LABEL_22;
      }
    }

    mediaEntity2 = [(VUIPreflightManager *)self mediaEntity];
    if (mediaEntity2)
    {
      mediaEntity3 = [(VUIPreflightManager *)self mediaEntity];
      mediaItem2 = [mediaEntity3 contentRating];
    }

    else
    {
      mediaItem2 = [(VUIPreflightManager *)self contentRating];
    }

    ratingSystemKind = [mediaItem2 ratingSystemKind];
    v10 = MEMORY[0x1E69D5B18];
    if (ratingSystemKind != 2)
    {
      v10 = MEMORY[0x1E69D5B10];
    }

    goto LABEL_19;
  }

  videosPlayable2 = [(VUIPreflightManager *)self videosPlayable];
  metadata = [videosPlayable2 metadata];
  mediaItem2 = [metadata ratingDomain];

  if ([mediaItem2 length])
  {
    v9 = [mediaItem2 isEqualToString:@"Show"];
    v10 = MEMORY[0x1E69D5B18];
    if (!v9)
    {
      v10 = MEMORY[0x1E69D5B10];
    }

LABEL_19:
    v5 = *v10;
    goto LABEL_20;
  }

  contentRating = 0;
LABEL_21:

LABEL_22:

  return contentRating;
}

- (BOOL)_isTrailer
{
  mediaItem = [(VUIPreflightManager *)self mediaItem];

  if (mediaItem)
  {
    mediaItem2 = [(VUIPreflightManager *)self mediaItem];
    videosPlayable = [mediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];

    LOBYTE(mediaItem2) = [videosPlayable isEqualToString:*MEMORY[0x1E69D5EC0]];
LABEL_5:

    return mediaItem2;
  }

  mediaItem2 = [(VUIPreflightManager *)self videosPlayable];

  if (mediaItem2)
  {
    videosPlayable = [(VUIPreflightManager *)self videosPlayable];
    mediaType = [videosPlayable mediaType];
    LOBYTE(mediaItem2) = [mediaType isEqualToString:@"Trailer"];

    goto LABEL_5;
  }

  return mediaItem2;
}

- (BOOL)_isSportingEvent
{
  mediaItem = [(VUIPreflightManager *)self mediaItem];
  if (mediaItem)
  {
    v4 = mediaItem;
    mediaItem2 = [(VUIPreflightManager *)self mediaItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      mediaItem3 = [(VUIPreflightManager *)self mediaItem];
      LOBYTE(videosPlayable) = [mediaItem3 isSportingEvent];
LABEL_6:

      return videosPlayable;
    }
  }

  videosPlayable = [(VUIPreflightManager *)self videosPlayable];

  if (videosPlayable)
  {
    mediaItem3 = [(VUIPreflightManager *)self videosPlayable];
    mediaType = [mediaItem3 mediaType];
    LOBYTE(videosPlayable) = [mediaType isEqualToString:@"SportingEvent"];

    goto LABEL_6;
  }

  return videosPlayable;
}

- (id)_ratingValue
{
  mediaItem = [(VUIPreflightManager *)self mediaItem];

  if (mediaItem)
  {
    mediaItem2 = [(VUIPreflightManager *)self mediaItem];
    contentRating = [mediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B20]];
LABEL_3:
    ratingValue = contentRating;
LABEL_6:

    goto LABEL_7;
  }

  videosPlayable = [(VUIPreflightManager *)self videosPlayable];

  if (videosPlayable)
  {
    mediaItem2 = [(VUIPreflightManager *)self videosPlayable];
    metadata = [mediaItem2 metadata];
    ratingValue = [metadata ratingValue];

    goto LABEL_6;
  }

  extrasInfo = [(VUIPreflightManager *)self extrasInfo];

  if (extrasInfo)
  {
    mediaItem2 = [(VUIPreflightManager *)self extrasInfo];
    contentRating = [mediaItem2 contentRating];
    goto LABEL_3;
  }

  mediaEntity = [(VUIPreflightManager *)self mediaEntity];
  if (mediaEntity)
  {

LABEL_15:
    mediaEntity2 = [(VUIPreflightManager *)self mediaEntity];
    if (mediaEntity2)
    {
      mediaEntity3 = [(VUIPreflightManager *)self mediaEntity];
      mediaItem2 = [mediaEntity3 contentRating];
    }

    else
    {
      mediaItem2 = [(VUIPreflightManager *)self contentRating];
    }

    contentRating = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(mediaItem2, "rank")}];
    goto LABEL_3;
  }

  ratingValue = [(VUIPreflightManager *)self contentRating];

  if (ratingValue)
  {
    goto LABEL_15;
  }

LABEL_7:

  return ratingValue;
}

- (void)_performRestrictionsCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPreflightManager::will perform restrictions check", buf, 2u);
  }

  if (completionCopy)
  {
    if ([(VUIPreflightManager *)self _isSportingEvent])
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPreflightManager::isSportingEvent – skipping validation", v8, 2u);
      }
    }

    else if (![(VUIPreflightManager *)self _isAllowedToPlayOrPurchase])
    {
      _ratingDomain = [(VUIPreflightManager *)self _ratingDomain];
      [(VUIPreflightManager *)self _showRestrictionsAlertForRatingDomain:_ratingDomain completion:completionCopy];

      goto LABEL_11;
    }

    completionCopy[2](completionCopy, 1);
  }

LABEL_11:
}

- (void)_showRestrictionsAlertForRatingDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPreflightManager::media is not allowed by restrictions, showing alert.", buf, 2u);
  }

  if ([(VUIPreflightManager *)self _isTrailer])
  {
    v9 = @"TRANSACTION_RESTRICTED_TRAILER";
  }

  else
  {
    v9 = @"TRANSACTION_RESTRICTED_MOVIE";
    if ([domainCopy length] && objc_msgSend(domainCopy, "isEqualToString:", *MEMORY[0x1E69D5B18]))
    {
      v9 = @"TRANSACTION_RESTRICTED_TVSHOW";
    }
  }

  if ([(VUIPreflightManager *)self restrictionsCheckType]== 1)
  {
    v9 = @"DOWNLOAD_RESTRICTED_TVSHOW";
    if ([domainCopy length])
    {
      if ([domainCopy isEqualToString:*MEMORY[0x1E69D5B10]])
      {
        v9 = @"DOWNLOAD_RESTRICTED_MOVIE";
      }
    }
  }

  v10 = +[VUILocalizationManager sharedInstance];
  v11 = [v10 localizedStringForKey:v9];
  v12 = [VUIAlertController vui_alertControllerWithTitle:0 message:v11 preferredStyle:1];

  v13 = +[VUILocalizationManager sharedInstance];
  v14 = [v13 localizedStringForKey:@"SETTINGS"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __72__VUIPreflightManager__showRestrictionsAlertForRatingDomain_completion___block_invoke;
  v27[3] = &unk_1E8732FF8;
  v15 = completionCopy;
  v28 = v15;
  v16 = [VUIAlertAction vui_actionWithTitle:v14 style:0 handler:v27];
  [v12 vui_addAction:v16];

  v17 = +[VUILocalizationManager sharedInstance];
  v18 = [v17 localizedStringForKey:@"OK"];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __72__VUIPreflightManager__showRestrictionsAlertForRatingDomain_completion___block_invoke_2;
  v25 = &unk_1E8732FF8;
  v26 = v15;
  v19 = v15;
  v20 = [VUIAlertAction vui_actionWithTitle:v18 style:0 handler:&v22];
  [v12 vui_addAction:{v20, v22, v23, v24, v25}];

  presentingController = [(VUIPreflightManager *)self presentingController];
  [v12 vui_presentAlertFromPresentingController:presentingController animated:1 completion:0];
}

void __72__VUIPreflightManager__showRestrictionsAlertForRatingDomain_completion___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=SCREEN_TIME&path=CONTENT_PRIVACY"];
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:v4 withOptions:0];

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }
}

uint64_t __72__VUIPreflightManager__showRestrictionsAlertForRatingDomain_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (BOOL)_isAllowedToPlayOrPurchase
{
  _ratingDomain = [(VUIPreflightManager *)self _ratingDomain];
  _ratingValue = [(VUIPreflightManager *)self _ratingValue];
  if ([_ratingDomain length])
  {
    if ([_ratingDomain isEqualToString:*MEMORY[0x1E69D5B10]])
    {
      v5 = +[VUISettingsManager sharedInstance];
      maxMovieRank = [v5 maxMovieRank];
    }

    else
    {
      maxMovieRank = 0;
    }

    if ([_ratingDomain isEqualToString:*MEMORY[0x1E69D5B18]])
    {
      v17 = +[VUISettingsManager sharedInstance];
      maxTVShowRank = [v17 maxTVShowRank];

      maxMovieRank = maxTVShowRank;
    }

    [(VUIPreflightManager *)self _logRatingsInfo:_ratingDomain maxAllowedRank:maxMovieRank ratingValue:_ratingValue];
    integerValue = [_ratingValue integerValue];
    integerValue2 = [maxMovieRank integerValue];
    v22 = integerValue > 0 && integerValue2 >= integerValue;
    if (_ratingValue)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (maxMovieRank)
    {
      v15 = maxMovieRank;
    }

    else
    {
      v15 = 0;
    }

    if (maxMovieRank)
    {
      v16 = v23;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(VUIPreflightManager *)v7 _isAllowedToPlayOrPurchase:v8];
    }

    v15 = 0;
    v16 = 1;
  }

  return v16;
}

- (int64_t)_requiredAgeForPlayback
{
  requiredAgeForPlayback = [(VUIPreflightManager *)self requiredAgeForPlayback];

  if (requiredAgeForPlayback)
  {
    requiredAgeForPlayback2 = [(VUIPreflightManager *)self requiredAgeForPlayback];
    if (!requiredAgeForPlayback2)
    {
      return -1;
    }

LABEL_9:
    integerValue = [requiredAgeForPlayback2 integerValue];

    return integerValue;
  }

  mediaItem = [(VUIPreflightManager *)self mediaItem];

  if (mediaItem)
  {
    mediaItem2 = [(VUIPreflightManager *)self mediaItem];
    requiredAgeForPlayback3 = [mediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D00]];
  }

  else
  {
    videosPlayable = [(VUIPreflightManager *)self videosPlayable];

    if (!videosPlayable)
    {
      return -1;
    }

    mediaItem2 = [(VUIPreflightManager *)self videosPlayable];
    requiredAgeForPlayback3 = [mediaItem2 requiredAgeForPlayback];
  }

  requiredAgeForPlayback2 = requiredAgeForPlayback3;

  if (requiredAgeForPlayback2)
  {
    goto LABEL_9;
  }

  return -1;
}

- (void)_performAgeGateVerificationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[VUIAgeVerification sharedInstance];
  isAgeVerificationEnabled = [v5 isAgeVerificationEnabled];

  if (isAgeVerificationEnabled)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPreflightManager:: isAgeVerificationEnabled=YES. Calling VUIAgeVerification", buf, 2u);
    }

    _getAdamId = [(VUIPreflightManager *)self _getAdamId];
    _getMediaApiResourceType = [(VUIPreflightManager *)self _getMediaApiResourceType];
    _getCanonicalMeta = [(VUIPreflightManager *)self _getCanonicalMeta];
    v11 = +[VUIAgeVerification sharedInstance];
    _ratingValue = [(VUIPreflightManager *)self _ratingValue];
    _ratingDomain = [(VUIPreflightManager *)self _ratingDomain];
    [v11 performAgeGateVerificationWithRatingValue:_ratingValue ratingDomain:_ratingDomain adamId:_getAdamId resourceType:_getMediaApiResourceType canonicalMeta:_getCanonicalMeta completion:completionCopy];
  }

  else if ([(VUIPreflightManager *)self _shouldShowAgeConfirmationAlert])
  {
    objc_initWeak(buf, self);
    presentingController = [(VUIPreflightManager *)self presentingController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__VUIPreflightManager__performAgeGateVerificationWithCompletion___block_invoke;
    v15[3] = &unk_1E872DE58;
    objc_copyWeak(&v17, buf);
    v16 = completionCopy;
    [(VUIPreflightManager *)self _showAgeConfirmationWithPresentingViewController:presentingController completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __65__VUIPreflightManager__performAgeGateVerificationWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    v4 = [WeakRetained _requiredAgeForPlayback];
    v5 = [MEMORY[0x1E695DF00] date];
    [WeakRetained _setLastAgeConfirmationPrompted:v5];

    [WeakRetained _setLastConfirmedAge:v4];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }
}

- (id)_getAdamId
{
  mediaItem = [(VUIPreflightManager *)self mediaItem];

  if (mediaItem)
  {
    mediaItem2 = [(VUIPreflightManager *)self mediaItem];
    adamID = [mediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
LABEL_8:
    mediaEntity = adamID;
LABEL_9:

    goto LABEL_10;
  }

  videosPlayable = [(VUIPreflightManager *)self videosPlayable];

  if (videosPlayable)
  {
    videosPlayable2 = [(VUIPreflightManager *)self videosPlayable];
LABEL_7:
    mediaItem2 = videosPlayable2;
    adamID = [videosPlayable2 adamID];
    goto LABEL_8;
  }

  extrasInfo = [(VUIPreflightManager *)self extrasInfo];

  if (extrasInfo)
  {
    videosPlayable2 = [(VUIPreflightManager *)self extrasInfo];
    goto LABEL_7;
  }

  mediaEntity = [(VUIPreflightManager *)self mediaEntity];

  if (mediaEntity)
  {
    mediaItem2 = [(VUIPreflightManager *)self mediaEntity];
    storeID = [mediaItem2 storeID];
    mediaEntity = [storeID stringValue];

    goto LABEL_9;
  }

LABEL_10:

  return mediaEntity;
}

- (id)_getMediaApiResourceType
{
  mediaItem = [(VUIPreflightManager *)self mediaItem];

  if (mediaItem)
  {
    mediaItem2 = [(VUIPreflightManager *)self mediaItem];
    v5 = [mediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];

    LOBYTE(mediaItem2) = [v5 isEqualToString:*MEMORY[0x1E69D5ED0]];
    if ((mediaItem2 & 1) == 0)
    {
      return @"movies";
    }

    return @"tv-episodes";
  }

  videosPlayable = [(VUIPreflightManager *)self videosPlayable];

  if (!videosPlayable)
  {
    extrasInfo = [(VUIPreflightManager *)self extrasInfo];

    if (extrasInfo)
    {
      return @"movies";
    }

    mediaEntity = [(VUIPreflightManager *)self mediaEntity];

    if (!mediaEntity)
    {
      return @"movies";
    }

    mediaEntity2 = [(VUIPreflightManager *)self mediaEntity];
    type = [mediaEntity2 type];
    mediaCategoryType = [type mediaCategoryType];

    if (!mediaCategoryType)
    {
      return @"movies";
    }

    return @"tv-episodes";
  }

  videosPlayable2 = [(VUIPreflightManager *)self videosPlayable];
  mediaType = [videosPlayable2 mediaType];
  v9 = [mediaType isEqualToString:@"Movie"];

  if ((v9 & 1) == 0)
  {
    return @"tv-episodes";
  }

  return @"movies";
}

- (id)_getCanonicalMeta
{
  v22[3] = *MEMORY[0x1E69E9840];
  videosPlayable = [(VUIPreflightManager *)self videosPlayable];

  if (videosPlayable)
  {
    videosPlayable2 = [(VUIPreflightManager *)self videosPlayable];
    metadata = [videosPlayable2 metadata];

    title = [metadata title];
    showTitle = [metadata showTitle];
    artworkURLFormat = [metadata artworkURLFormat];
    artworkAspectRatio = [metadata artworkAspectRatio];
  }

  else
  {
    title = [(VUIPreflightManager *)self mediaItem];

    if (!title)
    {
      showTitle = 0;
      artworkURLFormat = 0;
      artworkAspectRatio = 0;
      v10 = 0;
      goto LABEL_11;
    }

    mediaItem = [(VUIPreflightManager *)self mediaItem];
    title = [mediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

    mediaItem2 = [(VUIPreflightManager *)self mediaItem];
    showTitle = [mediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D38]];

    mediaItem3 = [(VUIPreflightManager *)self mediaItem];
    metadata = [mediaItem3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DB8]];

    if (metadata)
    {
      metadata = metadata;
      artworkAspectRatio = &unk_1F5E5EC50;
      artworkURLFormat = metadata;
    }

    else
    {
      mediaItem4 = [(VUIPreflightManager *)self mediaItem];
      artworkURLFormat = [mediaItem4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AB8]];

      artworkAspectRatio = &unk_1F5E5EC60;
    }
  }

  v10 = 0;
  if (title && artworkURLFormat && artworkAspectRatio)
  {
    v11 = [artworkURLFormat dataUsingEncoding:4];
    v12 = [v11 base64EncodedStringWithOptions:0];
    v13 = MEMORY[0x1E695DF90];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", artworkAspectRatio, @"title", @"imageUrlString", @"aspectRatio", title, v12];
    v22[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:3];
    v10 = [v13 dictionaryWithDictionary:v15];

    [v10 vui_setObjectIfNotNil:showTitle forKey:@"showTitle"];
  }

LABEL_11:

  return v10;
}

- (int64_t)_lastConfirmedAge
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"lastConfirmedAge"];

  return v3;
}

- (void)_setLastConfirmedAge:(int64_t)age
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:age forKey:@"lastConfirmedAge"];
}

- (id)_lastAgeConfirmationPrompted
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"ageConfirmationLastPrompted"];

  return v3;
}

- (void)_setLastAgeConfirmationPrompted:(id)prompted
{
  v3 = MEMORY[0x1E695E000];
  promptedCopy = prompted;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:promptedCopy forKey:@"ageConfirmationLastPrompted"];
}

- (BOOL)_shouldShowAgeConfirmationAlert
{
  if ([(VUIPreflightManager *)self _isTrailer])
  {
    return 0;
  }

  _requiredAgeForPlayback = [(VUIPreflightManager *)self _requiredAgeForPlayback];
  if (_requiredAgeForPlayback < 1)
  {
    return 0;
  }

  v4 = _requiredAgeForPlayback;
  _lastConfirmedAge = [(VUIPreflightManager *)self _lastConfirmedAge];
  _lastAgeConfirmationPrompted = [(VUIPreflightManager *)self _lastAgeConfirmationPrompted];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:_lastAgeConfirmationPrompted];
  if (_lastAgeConfirmationPrompted)
  {
    v10 = sFrequencyOfConfirmation < (v8 / 60.0) || v4 > _lastConfirmedAge;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_showAgeConfirmationWithPresentingViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  _requiredAgeForPlayback = [(VUIPreflightManager *)self _requiredAgeForPlayback];
  v7 = MEMORY[0x1E696AEC0];
  v8 = +[VUILocalizationManager sharedInstance];
  v9 = [v8 localizedStringForKey:@"AGE_GATE_CONFIRMATION_MESSAGE"];
  v10 = [v7 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%d %d" error:0, _requiredAgeForPlayback, _requiredAgeForPlayback];

  v11 = [VUIAlertController vui_alertControllerWithTitle:0 message:v10 preferredStyle:1];
  v12 = +[VUILocalizationManager sharedInstance];
  v13 = [v12 localizedStringForKey:@"YES"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __83__VUIPreflightManager__showAgeConfirmationWithPresentingViewController_completion___block_invoke;
  v23[3] = &unk_1E8732FF8;
  v14 = completionCopy;
  v24 = v14;
  v15 = [VUIAlertAction vui_actionWithTitle:v13 style:0 handler:v23];
  [v11 vui_addAction:v15];

  v16 = +[VUILocalizationManager sharedInstance];
  v17 = [v16 localizedStringForKey:@"NO"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __83__VUIPreflightManager__showAgeConfirmationWithPresentingViewController_completion___block_invoke_2;
  v21[3] = &unk_1E8732FF8;
  v22 = v14;
  v18 = v14;
  v19 = [VUIAlertAction vui_actionWithTitle:v17 style:1 handler:v21];
  [v11 vui_addAction:v19];

  presentingController = [(VUIPreflightManager *)self presentingController];
  [v11 vui_presentAlertFromPresentingController:presentingController animated:1 completion:0];
}

uint64_t __83__VUIPreflightManager__showAgeConfirmationWithPresentingViewController_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __83__VUIPreflightManager__showAgeConfirmationWithPresentingViewController_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_preflightDownloadWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke;
  aBlock[3] = &unk_1E872E828;
  objc_copyWeak(&v15, &location);
  v5 = completionCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  if (+[VUIAuthenticationManager userHasActiveAccount])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_131;
    v11[3] = &unk_1E872D7E0;
    v12 = v6;
    [(VUIPreflightManager *)self _promptForHighQualityDownloadsWithCompletion:v11];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_2_132;
    v7[3] = &unk_1E8733020;
    objc_copyWeak(&v10, &location);
    v8 = v6;
    v9 = v5;
    [VUIAuthenticationManager requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v7];

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x1E69E4428] sharedMonitor];
  v4 = [v3 networkType];

  if (ICEnvironmentNetworkTypeIsCellular())
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Network type is cellular", buf, 2u);
    }

    if ([WeakRetained contentAllowsCellularDownload])
    {
      v6 = +[VUIPlaybackSettings sharedSettings];
      v7 = [v6 cellularDataDownloadEnabled];

      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = +[VUIPlaybackSettings sharedSettings];
        (*(v8 + 16))(v8, 1, 1, [v9 preferredCellularDownloadQuality]);
      }

      else
      {
        v47 = MGGetBoolAnswer();
        v48 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
        v9 = [v48 localizedStringForKey:@"ASK_TO_USE_CELLULAR_DATA_FOR_DOWNLOADS_MESSAGE_TITLE" value:0 table:@"VideosUIEmbedded"];

        v49 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
        v50 = v49;
        if (v47)
        {
          v51 = @"ASK_TO_USE_CELLULAR_DATA_FOR_DOWNLOADS_MESSAGE_WLAN";
        }

        else
        {
          v51 = @"ASK_TO_USE_CELLULAR_DATA_FOR_DOWNLOADS_MESSAGE_WIFI";
        }

        v63 = [v49 localizedStringForKey:v51 value:0 table:@"VideosUIEmbedded"];

        v52 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
        v62 = [v52 localizedStringForKey:@"ALWAYS_USE_CELLULAR_DATA_FOR_DOWNLOADS_BUTTON_TITLE" value:0 table:@"VideosUIEmbedded"];

        v53 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
        v54 = [v53 localizedStringForKey:@"USE_CELLULAR_DATA_JUST_FOR_THIS_DOWNLOAD_BUTTON_TITLE" value:0 table:@"VideosUIEmbedded"];

        v55 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
        v56 = [v55 localizedStringForKey:@"DONT_USE_CELLULAR_DATA_FOR_DOWNLOADS_BUTTON_TITLE" value:0 table:@"VideosUIEmbedded"];

        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_116;
        v70[3] = &unk_1E8732FF8;
        v71 = *(a1 + 32);
        v57 = [VUIAlertAction vui_actionWithTitle:v62 style:0 handler:v70];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_2;
        v68[3] = &unk_1E8732FF8;
        v69 = *(a1 + 32);
        v58 = [VUIAlertAction vui_actionWithTitle:v54 style:0 handler:v68];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_3;
        v66[3] = &unk_1E8732FF8;
        v67 = *(a1 + 32);
        v59 = [VUIAlertAction vui_actionWithTitle:v56 style:0 handler:v66];
        v60 = [VUIAlertController vui_alertControllerWithTitle:v9 message:v63 preferredStyle:1];
        [v60 vui_addAction:v57 isPreferred:1];
        [v60 vui_addAction:v58];
        [v60 vui_addAction:v59];
        v61 = [WeakRetained presentingController];
        [v60 vui_presentAlertFromPresentingController:v61 animated:1 completion:0];
      }
    }

    else
    {
      v19 = VUIDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      v27 = MGGetBoolAnswer();
      v28 = +[VUILocalizationManager sharedInstance];
      v29 = v28;
      if (v27)
      {
        v30 = @"CANT_DOWNLOAD_NO_NETWORK_CONNECT_TO_WLAN_TITLE";
      }

      else
      {
        v30 = @"CANT_DOWNLOAD_NO_NETWORK_CONNECT_TO_WIFI_TITLE";
      }

      if (v27)
      {
        v31 = @"CANT_DOWNLOAD_NO_NETWORK_CONNECT_TO_WLAN_MESSAGE";
      }

      else
      {
        v31 = @"CANT_DOWNLOAD_NO_NETWORK_CONNECT_TO_WIFI_MESSAGE";
      }

      v9 = [v28 localizedStringForKey:v30];

      v32 = +[VUILocalizationManager sharedInstance];
      v33 = [v32 localizedStringForKey:v31];

      v34 = [VUIAlertController vui_alertControllerWithTitle:v9 message:v33 preferredStyle:1];
      v35 = +[VUILocalizationManager sharedInstance];
      v36 = [v35 localizedStringForKey:@"OK"];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_129;
      v64[3] = &unk_1E8732FF8;
      v65 = *(a1 + 32);
      v37 = [VUIAlertAction vui_actionWithTitle:v36 style:0 handler:v64];

      [v34 vui_addAction:v37];
      v38 = [WeakRetained presentingController];
      [v34 vui_presentAlertFromPresentingController:v38 animated:1 completion:0];
    }
  }

  else
  {
    v10 = VUIDefaultLogObject();
    v11 = v10;
    if (v4)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Network type is non-cellular", buf, 2u);
      }

      v12 = +[VUIPlaybackSettings sharedSettings];
      v13 = [v12 cellularDataDownloadEnabled];

      if (v13)
      {
        v14 = +[VUIPlaybackSettings sharedSettings];
        v15 = [v14 preferredWifiDownloadQuality];

        v16 = +[VUIPlaybackSettings sharedSettings];
        v17 = [v16 preferredCellularDownloadQuality];

        if (v15 == v17 || (v13 = 0, v15 == 1) && !v17)
        {
          v13 = 1;
        }
      }

      v18 = *(a1 + 32);
      v9 = +[VUIPlaybackSettings sharedSettings];
      (*(v18 + 16))(v18, 1, v13, [v9 preferredWifiDownloadQuality]);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_cold_1(v11, v39, v40, v41, v42, v43, v44, v45);
      }

      v46 = *(a1 + 32);
      v9 = +[VUIPlaybackSettings sharedSettings];
      (*(v46 + 16))(v46, 0, 0, [v9 preferredWifiDownloadQuality]);
    }
  }
}

void __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_116(uint64_t a1)
{
  v2 = +[VUIPlaybackSettings sharedSettings];
  [v2 setCellularDataDownloadEnabled:1];

  v3 = *(a1 + 32);
  v4 = +[VUIPlaybackSettings sharedSettings];
  (*(v3 + 16))(v3, 1, 1, [v4 preferredCellularDownloadQuality]);
}

void __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[VUIPlaybackSettings sharedSettings];
  (*(v1 + 16))(v1, 1, 1, [v2 preferredCellularDownloadQuality]);
}

void __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[VUIPlaybackSettings sharedSettings];
  (*(v1 + 16))(v1, 0, 0, [v2 preferredCellularDownloadQuality]);
}

void __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_129(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[VUIPlaybackSettings sharedSettings];
  (*(v1 + 16))(v1, 0, 0, [v2 preferredCellularDownloadQuality]);
}

void __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_2_132(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__VUIPreflightManager__preflightDownloadWithCompletion___block_invoke_3_133;
    v8[3] = &unk_1E872D7E0;
    v9 = *(a1 + 32);
    [WeakRetained _promptForHighQualityDownloadsWithCompletion:v8];

    v4 = v9;
  }

  else
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Not starting download since user was unable to sign in", v7, 2u);
    }

    v6 = *(a1 + 40);
    v4 = +[VUIPlaybackSettings sharedSettings];
    (*(v6 + 16))(v6, 0, 0, [v4 preferredCellularDownloadQuality]);
  }
}

- (void)_promptForHighQualityDownloadsWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setVideosPlayable:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 canonicalID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIPreflightManager::videosPlayable missing metadata for ratings preflight for canonicalId %@", &v4, 0xCu);
}

- (void)_logRatingsInfo:(uint64_t)a1 maxAllowedRank:(NSObject *)a2 ratingValue:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIPreflightManager:: unrecognized rating domain %@", &v2, 0xCu);
}

@end