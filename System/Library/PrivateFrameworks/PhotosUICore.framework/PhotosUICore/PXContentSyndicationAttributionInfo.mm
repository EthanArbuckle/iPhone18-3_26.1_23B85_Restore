@interface PXContentSyndicationAttributionInfo
+ (id)_applyAttributesToTitle:(id)title;
+ (id)_nameStringForContact:(id)contact;
+ (id)_sharedContactFetchSerialQueue;
+ (id)appIconFetchQueue;
- (BOOL)_isAppInstalledOnDeviceForBundleIdentifier:(id)identifier;
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
- (PXContentSyndicationAttributionInfo)initWithAsset:(id)asset;
- (PXContentSyndicationAttributionInfoChangeDelegate)changeDelegate;
- (UIImage)senderThumbnailImage;
- (void)_fetchContactWithIdentifier:(id)identifier completion:(id)completion;
- (void)_handleAttributionChanges;
- (void)_handleContactFetchCompletion:(id)completion error:(id)error oldSyndicationSenderDisplayName:(id)name oldSyndicationSharedWithTitle:(id)title oldImageData:(id)data;
- (void)_invalidateAttributedStrings;
- (void)_updateAppNameColorForAttributedString:(id)string defaultFontValue:(id)value;
- (void)createSyndicatedAppIconWithSize:(CGSize)size scale:(double)scale completion:(id)completion;
- (void)fetchAppIconThumbnailImageWithCompletion:(id)completion;
- (void)setHighlight:(id)highlight;
@end

@implementation PXContentSyndicationAttributionInfo

- (PXContentSyndicationAttributionInfoChangeDelegate)changeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);

  return WeakRetained;
}

- (void)_handleContactFetchCompletion:(id)completion error:(id)error oldSyndicationSenderDisplayName:(id)name oldSyndicationSharedWithTitle:(id)title oldImageData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  errorCopy = error;
  nameCopy = name;
  titleCopy = title;
  dataCopy = data;
  if (!completionCopy)
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      asset = [(PXContentSyndicationAttributionInfo *)self asset];
      uuid = [asset uuid];
      *buf = 138543618;
      v31 = uuid;
      v32 = 2112;
      v33 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Info Panel attribution: Contact refresh failed for asset UUID: %{public}@ with error: %@", buf, 0x16u);
    }
  }

  [(PXContentSyndicationAttributionInfo *)self setContact:completionCopy];
  syndicationSenderDisplayName = [(PXContentSyndicationAttributionInfo *)self syndicationSenderDisplayName];
  if (syndicationSenderDisplayName == nameCopy || [nameCopy isEqualToString:syndicationSenderDisplayName])
  {
    syndicationSharedWithInMessagesAttributedTitle = [(PXContentSyndicationAttributionInfo *)self syndicationSharedWithInMessagesAttributedTitle];
    v22 = [syndicationSharedWithInMessagesAttributedTitle copy];
    if (v22 == titleCopy || ([titleCopy isEqualToString:v22] & 1) != 0)
    {
      _ThumbnailImageDataFromAttributionContact(completionCopy);
      v23 = completionCopy;
      v24 = nameCopy;
      v25 = titleCopy;
      v27 = v26 = errorCopy;
      v29 = [dataCopy isEqualToData:v27];

      errorCopy = v26;
      titleCopy = v25;
      nameCopy = v24;
      completionCopy = v23;

      if (v29)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  changeDelegate = [(PXContentSyndicationAttributionInfo *)self changeDelegate];
  [changeDelegate syndicationAttributionInfoDidChange:self];

LABEL_14:
}

- (void)_fetchContactWithIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (identifierCopy)
  {
    v8 = +[PXContentSyndicationAttributionInfo _sharedContactFetchSerialQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__PXContentSyndicationAttributionInfo__fetchContactWithIdentifier_completion___block_invoke;
    v15[3] = &unk_1E774C2F0;
    v16 = identifierCopy;
    v17 = completionCopy;
    dispatch_async(v8, v15);

    v9 = v16;
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      asset = [(PXContentSyndicationAttributionInfo *)self asset];
      uuid = [asset uuid];
      *buf = 138543362;
      v21 = uuid;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Info Panel attribution: No contact to fetch with asset UUID: %{public}@", buf, 0xCu);
    }

    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A588];
    v19 = @"Contact ID nil while attempting to fetch contact.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = [v13 initWithDomain:@"PhotosUISyndicationDomain" code:0 userInfo:v9];
    (*(completionCopy + 2))(completionCopy, 0, v14);
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
  syndicationSenderDisplayName = [(PXContentSyndicationAttributionInfo *)self syndicationSenderDisplayName];
  syndicationSharedWithInMessagesAttributedTitle = [(PXContentSyndicationAttributionInfo *)self syndicationSharedWithInMessagesAttributedTitle];
  v5 = [syndicationSharedWithInMessagesAttributedTitle copy];

  contact = [(PXContentSyndicationAttributionInfo *)self contact];
  v7 = _ThumbnailImageDataFromAttributionContact(contact);

  [(PXContentSyndicationAttributionInfo *)self setContact:0];
  [(PXContentSyndicationAttributionInfo *)self setSenderThumbnailImage:0];
  [(PXContentSyndicationAttributionInfo *)self setSyndicationSenderDisplayName:0];
  objc_initWeak(&location, self);
  contact2 = [(PXContentSyndicationAttributionInfo *)self contact];
  identifier = [contact2 identifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PXContentSyndicationAttributionInfo__handleAttributionChanges__block_invoke;
  v13[3] = &unk_1E7730C38;
  objc_copyWeak(&v17, &location);
  v10 = syndicationSenderDisplayName;
  v14 = v10;
  v11 = v5;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  [(PXContentSyndicationAttributionInfo *)self _fetchContactWithIdentifier:identifier completion:v13];

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
    highlight = [(PXContentSyndicationAttributionInfo *)self highlight];
    v5 = highlight;
    if (highlight)
    {
      attributions = [highlight attributions];
      firstObject = [attributions firstObject];

      sender = [firstObject sender];
      contact = [sender contact];
      v10 = self->_contact;
      self->_contact = contact;

      if (!self->_contact)
      {
        relatedPersons = [firstObject relatedPersons];
        firstObject2 = [relatedPersons firstObject];
        contact2 = [firstObject2 contact];
        v14 = self->_contact;
        self->_contact = contact2;

        if (!self->_contact)
        {
          v15 = PLUIGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            asset = [(PXContentSyndicationAttributionInfo *)self asset];
            uuid = [asset uuid];
            v19 = 138412546;
            v20 = v5;
            v21 = 2114;
            v22 = uuid;
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
    highlight = [(PXContentSyndicationAttributionInfo *)self highlight];
    v5 = highlight;
    if (highlight)
    {
      attributions = [highlight attributions];
      firstObject = [attributions firstObject];

      if ([firstObject isGroupConversation])
      {
        groupDisplayName = [firstObject groupDisplayName];
        v9 = [groupDisplayName copy];
        v10 = self->_receivingGroupDisplayName;
        self->_receivingGroupDisplayName = v9;
      }
    }

    receivingGroupDisplayName = self->_receivingGroupDisplayName;
  }

  return receivingGroupDisplayName;
}

- (void)_updateAppNameColorForAttributedString:(id)string defaultFontValue:(id)value
{
  stringCopy = string;
  valueCopy = value;
  v7 = *MEMORY[0x1E69DB648];
  v8 = [stringCopy length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__PXContentSyndicationAttributionInfo__updateAppNameColorForAttributedString_defaultFontValue___block_invoke;
  v11[3] = &unk_1E7730C10;
  v12 = stringCopy;
  v13 = valueCopy;
  v9 = valueCopy;
  v10 = stringCopy;
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

- (void)setHighlight:(id)highlight
{
  objc_storeStrong(&self->_highlight, highlight);
  self->_syndicationAttributionInfoIsLoading = 0;
  self->_hasSyndicationAttributionInfo = highlight != 0;
  changeDelegate = [(PXContentSyndicationAttributionInfo *)self changeDelegate];
  [changeDelegate syndicationAttributionInfoDidChange:self];
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
    highlight = [(PXContentSyndicationAttributionInfo *)self highlight];
    attributions = [highlight attributions];
    firstObject = [attributions firstObject];

    if (firstObject)
    {
      uniqueIdentifier = [firstObject uniqueIdentifier];
      v8 = [uniqueIdentifier copy];
      v9 = self->_syndicationAttributionIdentifier;
      self->_syndicationAttributionIdentifier = v8;
    }

    else
    {
      uniqueIdentifier = PLSyndicationUIGetLog();
      if (os_log_type_enabled(uniqueIdentifier, OS_LOG_TYPE_ERROR))
      {
        asset = [(PXContentSyndicationAttributionInfo *)self asset];
        uuid = [asset uuid];
        v13 = 138543618;
        v14 = highlight;
        v15 = 2114;
        v16 = uuid;
        _os_log_impl(&dword_1A3C1C000, uniqueIdentifier, OS_LOG_TYPE_ERROR, "Attribution Info: No SLAttribution found for highlight: %{public}@ asset UUID: %{public}@", &v13, 0x16u);
      }
    }

    syndicationAttributionIdentifier = self->_syndicationAttributionIdentifier;
  }

  return syndicationAttributionIdentifier;
}

- (BOOL)_isAppInstalledOnDeviceForBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69635F8];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];

  return v5 != 0;
}

- (void)createSyndicatedAppIconWithSize:(CGSize)size scale:(double)scale completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  asset = [(PXContentSyndicationAttributionInfo *)self asset];
  curationProperties = [asset curationProperties];

  importedByBundleIdentifier = [curationProperties importedByBundleIdentifier];
  v13 = +[PXContentSyndicationAttributionInfo appIconFetchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PXContentSyndicationAttributionInfo_createSyndicatedAppIconWithSize_scale_completion___block_invoke;
  block[3] = &unk_1E7730BE8;
  v19 = width;
  v20 = height;
  scaleCopy = scale;
  v17 = importedByBundleIdentifier;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = importedByBundleIdentifier;
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

- (void)fetchAppIconThumbnailImageWithCompletion:(id)completion
{
  completionCopy = completion;
  senderAppName = [(PXContentSyndicationAttributionInfo *)self senderAppName];
  if (senderAppName)
  {
    [(PXContentSyndicationAttributionInfo *)self createSyndicatedAppIconWithSize:completionCopy scale:32.0 completion:32.0, 3.0];
  }
}

- (UIImage)senderThumbnailImage
{
  senderThumbnailImage = self->_senderThumbnailImage;
  if (!senderThumbnailImage)
  {
    contact = [(PXContentSyndicationAttributionInfo *)self contact];
    v5 = _ThumbnailImageDataFromAttributionContact(contact);
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
    senderAppName = [(PXContentSyndicationAttributionInfo *)self senderAppName];
    _sfaAttributes = [(PXContentSyndicationAttributionInfo *)self _sfaAttributes];
    _sfaAppNameAttributes = [(PXContentSyndicationAttributionInfo *)self _sfaAppNameAttributes];
    if (senderAppName)
    {
      PXLocalizedStringFromTable(@"ATTRIBUTION_SAVED_FROM_APP", @"PhotosUICore");
      objc_claimAutoreleasedReturnValue();
      [senderAppName px_stringConvertedToHTMLString];
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringWithValidatedFormat();
    }

    v7 = PXLocalizedStringFromTable(@"ATTRIBUTION_SAVED_FROM", @"PhotosUICore");
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:_sfaAttributes];
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
    asset = [(PXContentSyndicationAttributionInfo *)self asset];
    syndicatedAppDisplayName = [asset syndicatedAppDisplayName];
    v6 = [syndicatedAppDisplayName copy];
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
    contact = [(PXContentSyndicationAttributionInfo *)self contact];
    if (contact)
    {
      v5 = [objc_opt_class() _nameStringForContact:contact];
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

- (PXContentSyndicationAttributionInfo)initWithAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAttributionInfo.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v20.receiver = self;
  v20.super_class = PXContentSyndicationAttributionInfo;
  v7 = [(PXContentSyndicationAttributionInfo *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_asset, asset);
    if (([assetCopy px_isSyndicatedAsset] & 1) != 0 || objc_msgSend(assetCopy, "px_wasSavedThroughSyndication"))
    {
      if ([assetCopy px_canLoadSyndicationAttributionInfo])
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
        [(PXContentSyndicationPhotoKitSocialLayerHighlightProvider *)v13 fetchSocialLayerHighlightForAsset:assetCopy completion:v17];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
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

+ (id)_applyAttributesToTitle:(id)title
{
  v17[2] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v4 = +[PXContentSyndicationAttributionInfo _primaryFont];
  v5 = +[PXContentSyndicationAttributionInfo _displayNameFont];
  v7 = *MEMORY[0x1E69DB650];
  v16[0] = *MEMORY[0x1E69DB648];
  v6 = v16[0];
  v16[1] = v7;
  v17[0] = v4;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v17[1] = secondaryLabelColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v14[1] = v7;
  v15[0] = v5;
  v14[0] = v6;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v15[1] = labelColor;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [MEMORY[0x1E696AAB0] px_attributedStringWithHTMLString:titleCopy defaultAttributes:v9 emphasizedAttributes:v11 italicizedAttributes:v9];

  return v12;
}

+ (id)_nameStringForContact:(id)contact
{
  v30 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (!contactCopy)
  {
    v6 = &stru_1F1741150;
    goto LABEL_17;
  }

  v6 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
  if ([(__CFString *)v6 length])
  {
    goto LABEL_17;
  }

  emailAddresses = [contactCopy emailAddresses];
  firstObject = [emailAddresses firstObject];

  if (!firstObject)
  {
    phoneNumbers = [contactCopy phoneNumbers];
    firstObject2 = [phoneNumbers firstObject];

    if (!firstObject2)
    {
      v16 = PLUIGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = contactCopy;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Info Panel attribution: No display string found for attribution contact: %@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    value = [firstObject2 value];
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_11:
        stringValue = [value stringValue];
        v15 = [stringValue copy];

        v6 = v15;
LABEL_15:

        goto LABEL_16;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      px_descriptionForAssertionMessage = [value px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAttributionInfo.m" lineNumber:438 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"phoneNumberValue", v25, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAttributionInfo.m" lineNumber:438 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"phoneNumberValue", v25}];
    }

    goto LABEL_11;
  }

  value2 = [firstObject value];
  if (!value2)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAttributionInfo.m" lineNumber:432 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"emailValue", v20}];
LABEL_22:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    px_descriptionForAssertionMessage2 = [value2 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationAttributionInfo.m" lineNumber:432 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"emailValue", v20, px_descriptionForAssertionMessage2}];

    goto LABEL_22;
  }

LABEL_6:
  v10 = [value2 copy];

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