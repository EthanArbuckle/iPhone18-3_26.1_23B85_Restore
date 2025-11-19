@interface PXContentSyndicationAttributionInfo
+ (id)_applyAttributesToTitle:(id)a3;
+ (id)_nameStringForContact:(id)a3;
+ (id)_sharedContactFetchSerialQueue;
+ (id)appIconFetchQueue;
- (BOOL)_isAppInstalledOnDeviceForBundleIdentifier:(id)a3;
- (CNContact)contact;
- (NSAttributedString)savedFromTitle;
- (NSAttributedString)syndicationSharedWithInMessagesAttributedTitle;
- (NSString)axDescriptionForSyndicationContactImage;
- (NSString)axDescriptionForSyndicationReplyButton;
- (NSString)axHintForSyndicationButton;
- (NSString)receivingGroupDisplayName;
- (NSString)senderAppName;
- (NSString)syndicationAttributionIdentifier;
- (NSString)syndicationSenderDisplayName;
- (PXContentSyndicationAttributionInfo)initWithAsset:(id)a3;
- (PXContentSyndicationAttributionInfoChangeDelegate)changeDelegate;
- (UIImage)senderThumbnailImage;
- (void)_fetchContactWithIdentifier:(id)a3 completion:(id)a4;
- (void)_handleAttributionChanges;
- (void)_handleContactFetchCompletion:(id)a3 error:(id)a4 oldSyndicationSenderDisplayName:(id)a5 oldSyndicationSharedWithTitle:(id)a6 oldImageData:(id)a7;
- (void)_invalidateAttributedStrings;
- (void)_updateAppNameColorForAttributedString:(id)a3 defaultFontValue:(id)a4;
- (void)createSyndicatedAppIconWithSize:(CGSize)a3 scale:(double)a4 completion:(id)a5;
- (void)fetchAppIconThumbnailImageWithCompletion:(id)a3;
- (void)setHighlight:(id)a3;
@end

@implementation PXContentSyndicationAttributionInfo

- (PXContentSyndicationAttributionInfoChangeDelegate)changeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);

  return WeakRetained;
}

- (void)_handleContactFetchCompletion:(id)a3 error:(id)a4 oldSyndicationSenderDisplayName:(id)a5 oldSyndicationSharedWithTitle:(id)a6 oldImageData:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(PXContentSyndicationAttributionInfo *)self asset];
      v19 = [v18 uuid];
      *buf = 138543618;
      v31 = v19;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Info Panel attribution: Contact refresh failed for asset UUID: %{public}@ with error: %@", buf, 0x16u);
    }
  }

  [(PXContentSyndicationAttributionInfo *)self setContact:v12];
  v20 = [(PXContentSyndicationAttributionInfo *)self syndicationSenderDisplayName];
  if (v20 == v14 || [v14 isEqualToString:v20])
  {
    v21 = [(PXContentSyndicationAttributionInfo *)self syndicationSharedWithInMessagesAttributedTitle];
    v22 = [v21 copy];
    if (v22 == v15 || ([v15 isEqualToString:v22] & 1) != 0)
    {
      _ThumbnailImageDataFromAttributionContact(v12);
      v23 = v12;
      v24 = v14;
      v25 = v15;
      v27 = v26 = v13;
      v29 = [v16 isEqualToData:v27];

      v13 = v26;
      v15 = v25;
      v14 = v24;
      v12 = v23;

      if (v29)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  v28 = [(PXContentSyndicationAttributionInfo *)self changeDelegate];
  [v28 syndicationAttributionInfoDidChange:self];

LABEL_14:
}

- (void)_fetchContactWithIdentifier:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[PXContentSyndicationAttributionInfo _sharedContactFetchSerialQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__PXContentSyndicationAttributionInfo__fetchContactWithIdentifier_completion___block_invoke;
    v15[3] = &unk_1E774C2F0;
    v16 = v6;
    v17 = v7;
    dispatch_async(v8, v15);

    v9 = v16;
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(PXContentSyndicationAttributionInfo *)self asset];
      v12 = [v11 uuid];
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Info Panel attribution: No contact to fetch with asset UUID: %{public}@", buf, 0xCu);
    }

    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A588];
    v19 = @"Contact ID nil while attempting to fetch contact.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = [v13 initWithDomain:@"PhotosUISyndicationDomain" code:0 userInfo:v9];
    (*(v7 + 2))(v7, 0, v14);
  }
}

void __78__PXContentSyndicationAttributionInfo__fetchContactWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C208];
  v18[0] = *MEMORY[0x1E695C258];
  v18[1] = v2;
  v3 = *MEMORY[0x1E695C400];
  v18[2] = *MEMORY[0x1E695C330];
  v18[3] = v3;
  v4 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v18[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];

  v6 = +[PXPeopleUtilities sharedContactStore];
  v7 = *(a1 + 32);
  v17 = 0;
  v8 = [v6 unifiedContactWithIdentifier:v7 keysToFetch:v5 error:&v17];
  v9 = v17;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PXContentSyndicationAttributionInfo__fetchContactWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E774A0E0;
  v10 = *(a1 + 40);
  v15 = v9;
  v16 = v10;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)_handleAttributionChanges
{
  v3 = [(PXContentSyndicationAttributionInfo *)self syndicationSenderDisplayName];
  v4 = [(PXContentSyndicationAttributionInfo *)self syndicationSharedWithInMessagesAttributedTitle];
  v5 = [v4 copy];

  v6 = [(PXContentSyndicationAttributionInfo *)self contact];
  v7 = _ThumbnailImageDataFromAttributionContact(v6);

  [(PXContentSyndicationAttributionInfo *)self setContact:0];
  [(PXContentSyndicationAttributionInfo *)self setSenderThumbnailImage:0];
  [(PXContentSyndicationAttributionInfo *)self setSyndicationSenderDisplayName:0];
  objc_initWeak(&location, self);
  v8 = [(PXContentSyndicationAttributionInfo *)self contact];
  v9 = [v8 identifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PXContentSyndicationAttributionInfo__handleAttributionChanges__block_invoke;
  v13[3] = &unk_1E7730C38;
  objc_copyWeak(&v17, &location);
  v10 = v3;
  v14 = v10;
  v11 = v5;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  [(PXContentSyndicationAttributionInfo *)self _fetchContactWithIdentifier:v9 completion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __64__PXContentSyndicationAttributionInfo__handleAttributionChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleContactFetchCompletion:v6 error:v5 oldSyndicationSenderDisplayName:*(a1 + 32) oldSyndicationSharedWithTitle:*(a1 + 40) oldImageData:*(a1 + 48)];
}

- (CNContact)contact
{
  v23 = *MEMORY[0x1E69E9840];
  contact = self->_contact;
  if (!contact)
  {
    v4 = [(PXContentSyndicationAttributionInfo *)self highlight];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 attributions];
      v7 = [v6 firstObject];

      v8 = [v7 sender];
      v9 = [v8 contact];
      v10 = self->_contact;
      self->_contact = v9;

      if (!self->_contact)
      {
        v11 = [v7 relatedPersons];
        v12 = [v11 firstObject];
        v13 = [v12 contact];
        v14 = self->_contact;
        self->_contact = v13;

        if (!self->_contact)
        {
          v15 = PLUIGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [(PXContentSyndicationAttributionInfo *)self asset];
            v17 = [v16 uuid];
            v19 = 138412546;
            v20 = v5;
            v21 = 2114;
            v22 = v17;
            _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Info Panel attribution: Contact not found for highlight: %@ asset UUID: %{public}@", &v19, 0x16u);
          }
        }
      }
    }

    contact = self->_contact;
  }

  return contact;
}

- (NSString)receivingGroupDisplayName
{
  receivingGroupDisplayName = self->_receivingGroupDisplayName;
  if (!receivingGroupDisplayName)
  {
    self->_receivingGroupDisplayName = &stru_1F1741150;
    v4 = [(PXContentSyndicationAttributionInfo *)self highlight];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 attributions];
      v7 = [v6 firstObject];

      if ([v7 isGroupConversation])
      {
        v8 = [v7 groupDisplayName];
        v9 = [v8 copy];
        v10 = self->_receivingGroupDisplayName;
        self->_receivingGroupDisplayName = v9;
      }
    }

    receivingGroupDisplayName = self->_receivingGroupDisplayName;
  }

  return receivingGroupDisplayName;
}

- (void)_updateAppNameColorForAttributedString:(id)a3 defaultFontValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E69DB648];
  v8 = [v5 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__PXContentSyndicationAttributionInfo__updateAppNameColorForAttributedString_defaultFontValue___block_invoke;
  v11[3] = &unk_1E7730C10;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v10 enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0, v11}];
}

void __95__PXContentSyndicationAttributionInfo__updateAppNameColorForAttributedString_defaultFontValue___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v14 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v14 fontDescriptor];
    v10 = [v9 symbolicTraits];

    if ((v10 & 2) != 0)
    {
      [*(a1 + 32) addAttribute:*MEMORY[0x1E69DB648] value:*(a1 + 40) range:{a3, a4}];
      v11 = *(a1 + 32);
      v12 = *MEMORY[0x1E69DB650];
      v13 = [MEMORY[0x1E69DC888] labelColor];
      [v11 addAttribute:v12 value:v13 range:{a3, a4}];

      *a5 = 1;
    }
  }
}

- (void)_invalidateAttributedStrings
{
  savedFromTitle = self->_savedFromTitle;
  self->_savedFromTitle = 0;

  syndicationSharedWithInMessagesAttributedTitle = self->_syndicationSharedWithInMessagesAttributedTitle;
  self->_syndicationSharedWithInMessagesAttributedTitle = 0;
}

- (void)setHighlight:(id)a3
{
  objc_storeStrong(&self->_highlight, a3);
  self->_syndicationAttributionInfoIsLoading = 0;
  self->_hasSyndicationAttributionInfo = a3 != 0;
  v5 = [(PXContentSyndicationAttributionInfo *)self changeDelegate];
  [v5 syndicationAttributionInfoDidChange:self];
}

- (NSString)axHintForSyndicationButton
{
  axHintForSyndicationButton = self->_axHintForSyndicationButton;
  if (!axHintForSyndicationButton)
  {
    [(PXContentSyndicationAttributionInfo *)self syndicationSenderDisplayName];
    if (objc_claimAutoreleasedReturnValue())
    {
      PXLocalizedStringFromTable(@"AX_HINT_SYNDICATION_ATTRIBUTION_VISION", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    axHintForSyndicationButton = self->_axHintForSyndicationButton;
  }

  return axHintForSyndicationButton;
}

- (NSString)axDescriptionForSyndicationReplyButton
{
  axDescriptionForSyndicationReplyButton = self->_axDescriptionForSyndicationReplyButton;
  if (!axDescriptionForSyndicationReplyButton)
  {
    [(PXContentSyndicationAttributionInfo *)self syndicationSenderDisplayName];
    if (objc_claimAutoreleasedReturnValue())
    {
      PXLocalizedStringFromTable(@"AX_LABEL_SYNDICATION_ATTRIBUTION_REPLY_BUTTON", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    axDescriptionForSyndicationReplyButton = self->_axDescriptionForSyndicationReplyButton;
  }

  return axDescriptionForSyndicationReplyButton;
}

- (NSString)axDescriptionForSyndicationContactImage
{
  axDescriptionForSyndicationContactImage = self->_axDescriptionForSyndicationContactImage;
  if (!axDescriptionForSyndicationContactImage)
  {
    [(PXContentSyndicationAttributionInfo *)self syndicationSenderDisplayName];
    if (objc_claimAutoreleasedReturnValue())
    {
      PXLocalizedStringFromTable(@"AX_LABEL_SYNDICATION_ATTRIBUTION_CONTACT_IMAGE", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    axDescriptionForSyndicationContactImage = self->_axDescriptionForSyndicationContactImage;
  }

  return axDescriptionForSyndicationContactImage;
}

- (NSString)syndicationAttributionIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  syndicationAttributionIdentifier = self->_syndicationAttributionIdentifier;
  if (!syndicationAttributionIdentifier)
  {
    v4 = [(PXContentSyndicationAttributionInfo *)self highlight];
    v5 = [v4 attributions];
    v6 = [v5 firstObject];

    if (v6)
    {
      v7 = [v6 uniqueIdentifier];
      v8 = [v7 copy];
      v9 = self->_syndicationAttributionIdentifier;
      self->_syndicationAttributionIdentifier = v8;
    }

    else
    {
      v7 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = [(PXContentSyndicationAttributionInfo *)self asset];
        v11 = [v10 uuid];
        v13 = 138543618;
        v14 = v4;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Attribution Info: No SLAttribution found for highlight: %{public}@ asset UUID: %{public}@", &v13, 0x16u);
      }
    }

    syndicationAttributionIdentifier = self->_syndicationAttributionIdentifier;
  }

  return syndicationAttributionIdentifier;
}

- (BOOL)_isAppInstalledOnDeviceForBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69635F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];

  return v5 != 0;
}

- (void)createSyndicatedAppIconWithSize:(CGSize)a3 scale:(double)a4 completion:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = [(PXContentSyndicationAttributionInfo *)self asset];
  v11 = [v10 curationProperties];

  v12 = [v11 importedByBundleIdentifier];
  v13 = +[PXContentSyndicationAttributionInfo appIconFetchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PXContentSyndicationAttributionInfo_createSyndicatedAppIconWithSize_scale_completion___block_invoke;
  block[3] = &unk_1E7730BE8;
  v19 = width;
  v20 = height;
  v21 = a4;
  v17 = v12;
  v18 = v9;
  v14 = v9;
  v15 = v12;
  dispatch_async(v13, block);
}

void __88__PXContentSyndicationAttributionInfo_createSyndicatedAppIconWithSize_scale_completion___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:*(a1 + 32)];
  v3 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:*(a1 + 48) scale:{*(a1 + 56), *(a1 + 64)}];
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v2 prepareImagesForImageDescriptors:v4];

  v5 = [v2 imageForDescriptor:v3];
  if ([v5 placeholder])
  {
    v6 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"appstore.app"];
  }

  else
  {
    if (!v5)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v5, "CGImage")}];
  }

  v7 = v6;
LABEL_6:
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PXContentSyndicationAttributionInfo_createSyndicatedAppIconWithSize_scale_completion___block_invoke_2;
  v10[3] = &unk_1E774C2F0;
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (void)fetchAppIconThumbnailImageWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(PXContentSyndicationAttributionInfo *)self senderAppName];
  if (v4)
  {
    [(PXContentSyndicationAttributionInfo *)self createSyndicatedAppIconWithSize:v5 scale:32.0 completion:32.0, 3.0];
  }
}

- (UIImage)senderThumbnailImage
{
  senderThumbnailImage = self->_senderThumbnailImage;
  if (!senderThumbnailImage)
  {
    v4 = [(PXContentSyndicationAttributionInfo *)self contact];
    v5 = _ThumbnailImageDataFromAttributionContact(v4);
    if (v5)
    {
      v6 = [MEMORY[0x1E69DCAB8] imageWithData:v5];
      v7 = self->_senderThumbnailImage;
      self->_senderThumbnailImage = v6;
    }

    senderThumbnailImage = self->_senderThumbnailImage;
  }

  return senderThumbnailImage;
}

- (NSAttributedString)savedFromTitle
{
  savedFromTitle = self->_savedFromTitle;
  if (!savedFromTitle)
  {
    v4 = [(PXContentSyndicationAttributionInfo *)self senderAppName];
    v5 = [(PXContentSyndicationAttributionInfo *)self _sfaAttributes];
    v6 = [(PXContentSyndicationAttributionInfo *)self _sfaAppNameAttributes];
    if (v4)
    {
      PXLocalizedStringFromTable(@"ATTRIBUTION_SAVED_FROM_APP", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      [v4 px_stringConvertedToHTMLString];
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    v7 = PXLocalizedStringFromTable(@"ATTRIBUTION_SAVED_FROM", @"PhotosUICore");
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v5];
    v9 = self->_savedFromTitle;
    self->_savedFromTitle = v8;

    savedFromTitle = self->_savedFromTitle;
  }

  return savedFromTitle;
}

- (NSAttributedString)syndicationSharedWithInMessagesAttributedTitle
{
  syndicationSharedWithInMessagesAttributedTitle = self->_syndicationSharedWithInMessagesAttributedTitle;
  if (!syndicationSharedWithInMessagesAttributedTitle)
  {
    PXLocalizedStringFromTable(@"SYNDICATION_ATTRIBUTION_SHARED_WITH_YOU_IN_MESSAGES", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    [(PXContentSyndicationAttributionInfo *)self syndicationSenderDisplayName];
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  return syndicationSharedWithInMessagesAttributedTitle;
}

- (NSString)senderAppName
{
  senderAppName = self->_senderAppName;
  if (!senderAppName)
  {
    v4 = [(PXContentSyndicationAttributionInfo *)self asset];
    v5 = [v4 syndicatedAppDisplayName];
    v6 = [v5 copy];
    v7 = self->_senderAppName;
    self->_senderAppName = v6;

    senderAppName = self->_senderAppName;
  }

  return senderAppName;
}

- (NSString)syndicationSenderDisplayName
{
  syndicationSenderDisplayName = self->_syndicationSenderDisplayName;
  if (!syndicationSenderDisplayName)
  {
    v4 = [(PXContentSyndicationAttributionInfo *)self contact];
    if (v4)
    {
      v5 = [objc_opt_class() _nameStringForContact:v4];
    }

    else
    {
      v5 = &stru_1F1741150;
    }

    v6 = self->_syndicationSenderDisplayName;
    self->_syndicationSenderDisplayName = &v5->isa;

    syndicationSenderDisplayName = self->_syndicationSenderDisplayName;
  }

  return syndicationSenderDisplayName;
}

- (PXContentSyndicationAttributionInfo)initWithAsset:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAttributionInfo.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v20.receiver = self;
  v20.super_class = PXContentSyndicationAttributionInfo;
  v7 = [(PXContentSyndicationAttributionInfo *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_asset, a3);
    if (([v6 px_isSyndicatedAsset] & 1) != 0 || objc_msgSend(v6, "px_wasSavedThroughSyndication"))
    {
      if ([v6 px_canLoadSyndicationAttributionInfo])
      {
        v9 = +[PXContentSyndicationPhotoKitSocialLayerHighlightProvider sharedInstance];
        highlightProvider = v8->_highlightProvider;
        v8->_highlightProvider = v9;

        v8->_syndicationAttributionInfoIsLoading = 1;
        v11 = PXLocalizedStringFromTable(@"AX_LABEL_SYNDICATION_ATTRIBUTION_LOADING", @"PhotosUICore");
        axDescriptionForSyndicationLoadingIndicator = v8->_axDescriptionForSyndicationLoadingIndicator;
        v8->_axDescriptionForSyndicationLoadingIndicator = v11;

        objc_initWeak(&location, v8);
        v13 = v8->_highlightProvider;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __53__PXContentSyndicationAttributionInfo_initWithAsset___block_invoke;
        v17[3] = &unk_1E7730BC0;
        objc_copyWeak(&v18, &location);
        [(PXContentSyndicationPhotoKitSocialLayerHighlightProvider *)v13 fetchSocialLayerHighlightForAsset:v6 completion:v17];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v8 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

void __53__PXContentSyndicationAttributionInfo_initWithAsset___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHighlight:v3];

  if (!v3)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [v6 asset];
      v8 = [v7 uuid];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unexpected nil highlight for asset UUID: %{public}@", &v9, 0xCu);
    }
  }
}

+ (id)_applyAttributesToTitle:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PXContentSyndicationAttributionInfo _primaryFont];
  v5 = +[PXContentSyndicationAttributionInfo _displayNameFont];
  v7 = *MEMORY[0x1E69DB650];
  v16[0] = *MEMORY[0x1E69DB648];
  v6 = v16[0];
  v16[1] = v7;
  v17[0] = v4;
  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v17[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v14[1] = v7;
  v15[0] = v5;
  v14[0] = v6;
  v10 = [MEMORY[0x1E69DC888] labelColor];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [MEMORY[0x1E696AAB0] px_attributedStringWithHTMLString:v3 defaultAttributes:v9 emphasizedAttributes:v11 italicizedAttributes:v9];

  return v12;
}

+ (id)_nameStringForContact:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v6 = &stru_1F1741150;
    goto LABEL_17;
  }

  v6 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:0];
  if ([(__CFString *)v6 length])
  {
    goto LABEL_17;
  }

  v7 = [v5 emailAddresses];
  v8 = [v7 firstObject];

  if (!v8)
  {
    v11 = [v5 phoneNumbers];
    v12 = [v11 firstObject];

    if (!v12)
    {
      v16 = PLUIGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v5;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Info Panel attribution: No display string found for attribution contact: %@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    v13 = [v12 value];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_11:
        v14 = [v13 stringValue];
        v15 = [v14 copy];

        v6 = v15;
LABEL_15:

        goto LABEL_16;
      }

      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      v27 = [v13 px_descriptionForAssertionMessage];
      [v23 handleFailureInMethod:a2 object:a1 file:@"PXContentSyndicationAttributionInfo.m" lineNumber:438 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"phoneNumberValue", v25, v27}];
    }

    else
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [v23 handleFailureInMethod:a2 object:a1 file:@"PXContentSyndicationAttributionInfo.m" lineNumber:438 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"phoneNumberValue", v25}];
    }

    goto LABEL_11;
  }

  v9 = [v8 value];
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXContentSyndicationAttributionInfo.m" lineNumber:432 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"emailValue", v20}];
LABEL_22:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v22 = [v9 px_descriptionForAssertionMessage];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXContentSyndicationAttributionInfo.m" lineNumber:432 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"emailValue", v20, v22}];

    goto LABEL_22;
  }

LABEL_6:
  v10 = [v9 copy];

  v6 = v10;
LABEL_16:

LABEL_17:

  return v6;
}

+ (id)_sharedContactFetchSerialQueue
{
  if (_sharedContactFetchSerialQueue_onceToken != -1)
  {
    dispatch_once(&_sharedContactFetchSerialQueue_onceToken, &__block_literal_global_190_36594);
  }

  v3 = _sharedContactFetchSerialQueue_serialQueue;

  return v3;
}

+ (id)appIconFetchQueue
{
  if (appIconFetchQueue_onceToken != -1)
  {
    dispatch_once(&appIconFetchQueue_onceToken, &__block_literal_global_36597);
  }

  v3 = appIconFetchQueue_serialQueue;

  return v3;
}

@end