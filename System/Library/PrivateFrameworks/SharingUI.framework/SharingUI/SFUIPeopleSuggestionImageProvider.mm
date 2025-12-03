@interface SFUIPeopleSuggestionImageProvider
- (BOOL)_fetchNoAppTransportImageForIdentifier:(id)identifier;
- (CGSize)targetSize;
- (SFUIPeopleSuggestionImageProvider)initWithTargetSize:(CGSize)size layoutDirection:(unint64_t)direction;
- (SFUIPeopleSuggestionImageProvider)initWithTargetSize:(CGSize)size layoutDirection:(unint64_t)direction userInterfaceStyle:(int64_t)style;
- (UIImage)placeholderImage;
- (int)requestAvatarImageForPeopleSuggestion:(id)suggestion resultHandler:(id)handler;
- (int)requestTransportImageForPeopleSuggestion:(id)suggestion resultHandler:(id)handler;
- (void)_deliverIconImage:(id)image identifier:(id)identifier isUTI:(BOOL)i error:(id)error;
- (void)_fetchAvatarImageForPeopleSuggestion:(id)suggestion;
- (void)_fetchTransportImageForPeopleSuggestion:(id)suggestion;
- (void)_processPlaceholderImage;
- (void)performImageRequest:(id)request;
- (void)updateTargetSize:(CGSize)size;
- (void)updateUserInterfaceStyle:(int64_t)style;
@end

@implementation SFUIPeopleSuggestionImageProvider

- (SFUIPeopleSuggestionImageProvider)initWithTargetSize:(CGSize)size layoutDirection:(unint64_t)direction
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v10 = -[SFUIPeopleSuggestionImageProvider initWithTargetSize:layoutDirection:userInterfaceStyle:](self, "initWithTargetSize:layoutDirection:userInterfaceStyle:", direction, [traitCollection userInterfaceStyle], width, height);

  return v10;
}

- (SFUIPeopleSuggestionImageProvider)initWithTargetSize:(CGSize)size layoutDirection:(unint64_t)direction userInterfaceStyle:(int64_t)style
{
  height = size.height;
  width = size.width;
  v20.receiver = self;
  v20.super_class = SFUIPeopleSuggestionImageProvider;
  v9 = [(SFUIImageProvider *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v9->_targetSize.width = width;
    v9->_targetSize.height = height;
    v9->_layoutDirection = direction;
    v9->_userInterfaceStyle = style;
    v11 = +[SFUIAvatarImageRenderer avatarImageRender];
    imageRenderer = v10->_imageRenderer;
    v10->_imageRenderer = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.SharingUI.SFUIPeopleSuggestionImageProvider.placeholderImageQueue", v13);
    placeholderImageQueue = v10->_placeholderImageQueue;
    v10->_placeholderImageQueue = v14;

    v16 = v10->_placeholderImageQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__SFUIPeopleSuggestionImageProvider_initWithTargetSize_layoutDirection_userInterfaceStyle___block_invoke;
    block[3] = &unk_1E7EE3720;
    v19 = v10;
    dispatch_async(v16, block);
  }

  return v10;
}

- (void)_processPlaceholderImage
{
  placeholderImageQueue = [(SFUIPeopleSuggestionImageProvider *)self placeholderImageQueue];
  dispatch_assert_queue_V2(placeholderImageQueue);

  avatarImageScale();
  imageRenderer = [(SFUIPeopleSuggestionImageProvider *)self imageRenderer];
  [(SFUIPeopleSuggestionImageProvider *)self targetSize];
  v4 = [imageRenderer placeholderImageForSize:? scale:?];
  processedPlaceholderImage = self->_processedPlaceholderImage;
  self->_processedPlaceholderImage = v4;
}

- (UIImage)placeholderImage
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = self->_placeholderImage;
  v3 = v9[5];
  if (!v3)
  {
    placeholderImageQueue = [(SFUIPeopleSuggestionImageProvider *)self placeholderImageQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__SFUIPeopleSuggestionImageProvider_placeholderImage__block_invoke;
    v7[3] = &unk_1E7EE45A8;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(placeholderImageQueue, v7);

    objc_storeStrong(&self->_placeholderImage, v9[5]);
    v3 = v9[5];
  }

  v5 = v3;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __53__SFUIPeopleSuggestionImageProvider_placeholderImage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processedPlaceholderImage];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int)requestAvatarImageForPeopleSuggestion:(id)suggestion resultHandler:(id)handler
{
  suggestionCopy = suggestion;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = people_ui_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SFUIPeopleSuggestionImageProvider requestAvatarImageForPeopleSuggestion:resultHandler:];
  }

  identifier = [suggestionCopy identifier];
  imageCache = [(SFUIImageProvider *)self imageCache];
  v11 = [imageCache objectForKey:identifier];

  if (v11)
  {
    v12 = people_ui_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SFUIPeopleSuggestionImageProvider requestAvatarImageForPeopleSuggestion:resultHandler:];
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v11, 0, 0);
    }

    LODWORD(nextRequestID) = 0;
  }

  else
  {
    if (handlerCopy)
    {
      placeholderImage = [(SFUIPeopleSuggestionImageProvider *)self placeholderImage];
      (*(handlerCopy + 2))(handlerCopy, placeholderImage, 1, 0);
    }

    nextRequestID = [(SFUIImageProvider *)self nextRequestID];
    v15 = [[SFUIPeopleSuggestionImageRequest alloc] initWithRequestID:nextRequestID peopleSuggestion:suggestionCopy type:0 resultHandler:handlerCopy];
    [(SFUIImageProvider *)self scheduleImageRequest:v15];
  }

  return nextRequestID;
}

- (int)requestTransportImageForPeopleSuggestion:(id)suggestion resultHandler:(id)handler
{
  suggestionCopy = suggestion;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = people_ui_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SFUIPeopleSuggestionImageProvider requestTransportImageForPeopleSuggestion:resultHandler:];
  }

  transportBundleIdentifier = [suggestionCopy transportBundleIdentifier];
  imageCache = [(SFUIImageProvider *)self imageCache];
  v11 = [imageCache objectForKey:transportBundleIdentifier];

  if (v11)
  {
    v12 = people_ui_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SFUIPeopleSuggestionImageProvider requestAvatarImageForPeopleSuggestion:resultHandler:];
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v11, 0, 0);
    }

    LODWORD(nextRequestID) = 0;
  }

  else
  {
    nextRequestID = [(SFUIImageProvider *)self nextRequestID];
    v14 = [[SFUIPeopleSuggestionImageRequest alloc] initWithRequestID:nextRequestID peopleSuggestion:suggestionCopy type:1 resultHandler:handlerCopy];
    [(SFUIImageProvider *)self scheduleImageRequest:v14];
  }

  return nextRequestID;
}

- (void)updateTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SFUIPeopleSuggestionImageProvider *)self targetSize];
  if (v7 != width || v6 != height)
  {
    self->_targetSize.width = width;
    self->_targetSize.height = height;
    imageCache = [(SFUIImageProvider *)self imageCache];
    [imageCache removeAllObjects];
  }
}

- (void)updateUserInterfaceStyle:(int64_t)style
{
  if ([(SFUIPeopleSuggestionImageProvider *)self userInterfaceStyle]!= style)
  {
    self->_userInterfaceStyle = style;
    imageCache = [(SFUIImageProvider *)self imageCache];
    [imageCache removeAllObjects];
  }
}

- (void)performImageRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SFUIPeopleSuggestionImageProvider *)a2 performImageRequest:?];
  }

  v8 = requestCopy;
  peopleSuggestion = [v8 peopleSuggestion];
  type = [v8 type];
  if (type == 1)
  {
    [(SFUIPeopleSuggestionImageProvider *)self _fetchTransportImageForPeopleSuggestion:peopleSuggestion];
  }

  else if (!type)
  {
    [(SFUIPeopleSuggestionImageProvider *)self _fetchAvatarImageForPeopleSuggestion:peopleSuggestion];
  }
}

- (void)_fetchAvatarImageForPeopleSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  donatedImage = [suggestionCopy donatedImage];

  if (donatedImage)
  {
    donatedImage2 = [suggestionCopy donatedImage];
    v7 = sharing_ui_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SFUIPeopleSuggestionImageProvider _fetchAvatarImageForPeopleSuggestion:];
    }

    _imageData = [donatedImage2 _imageData];
    if (_imageData)
    {
      v9 = _imageData;
    }

    else
    {
      sharedConnection = [getINImageServiceConnectionClass() sharedConnection];
      v34 = 0;
      v9 = [sharedConnection loadDataImageFromImage:donatedImage2 scaledSize:&v34 error:getINImageDefaultScaledSize()];
      v11 = v34;

      if (v11)
      {
        v16 = people_ui_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [SFUIPeopleSuggestionImageProvider _fetchAvatarImageForPeopleSuggestion:];
        }

        _imageData2 = 0;
        goto LABEL_13;
      }

      _imageData2 = [v9 _imageData];

      if (!_imageData2)
      {
        v11 = 0;
        goto LABEL_14;
      }

      v9 = _imageData2;
    }

    _imageData2 = [MEMORY[0x1E69DCAB8] imageWithData:v9];
    v11 = 0;
LABEL_13:

LABEL_14:
    goto LABEL_19;
  }

  deviceModelIdentifier = [suggestionCopy deviceModelIdentifier];
  v13 = [deviceModelIdentifier length];

  if (v13)
  {
    deviceModelIdentifier2 = [suggestionCopy deviceModelIdentifier];
    _imageData2 = [_TtC9SharingUI22SFUIDeviceIconProvider deviceImageWithModelIdentifier:deviceModelIdentifier2];
  }

  else
  {
    v17 = people_ui_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SFUIPeopleSuggestionImageProvider _fetchAvatarImageForPeopleSuggestion:];
    }

    v18 = [(SFUIPeopleSuggestionImageProvider *)self layoutDirection]== 1;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v20 = 4 * ([currentDevice userInterfaceIdiom] == 4);

    avatarImageScale();
    [(SFUIPeopleSuggestionImageProvider *)self targetSize];
    v21 = [SFUIAvatarImageRenderingScope scopeWithPointSize:"scopeWithPointSize:scale:rightToLeft:style:backgroundStyle:" scale:v18 rightToLeft:1 style:v20 backgroundStyle:?];
    imageRenderer = [(SFUIPeopleSuggestionImageProvider *)self imageRenderer];
    contacts = [suggestionCopy contacts];
    _imageData2 = [imageRenderer avatarImageForContacts:contacts scope:v21];
  }

  v11 = 0;
LABEL_19:
  objc_initWeak(&location, self);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__SFUIPeopleSuggestionImageProvider__fetchAvatarImageForPeopleSuggestion___block_invoke;
  v28[3] = &unk_1E7EE45D0;
  objc_copyWeak(&v32, &location);
  v29 = _imageData2;
  v30 = suggestionCopy;
  v31 = v11;
  v24 = v11;
  v25 = suggestionCopy;
  v26 = _imageData2;
  v27 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], v28);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __74__SFUIPeopleSuggestionImageProvider__fetchAvatarImageForPeopleSuggestion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [WeakRetained deliverImage:v2 identifier:v3 placeholder:0 error:*(a1 + 48)];
}

- (void)_fetchTransportImageForPeopleSuggestion:(id)suggestion
{
  v25 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  transportBundleIdentifier = [suggestionCopy transportBundleIdentifier];

  if ([(SFUIPeopleSuggestionImageProvider *)self _fetchNoAppTransportImageForIdentifier:transportBundleIdentifier])
  {
    goto LABEL_26;
  }

  v6 = transportBundleIdentifier;
  if (([(__CFString *)v6 hasPrefix:@"com.apple.InCallService"]& 1) != 0)
  {
    v7 = 0;
    v8 = @"com.apple.facetime";
    v9 = v6;
LABEL_10:

    goto LABEL_11;
  }

  if ([(__CFString *)v6 isEqualToString:*MEMORY[0x1E69CDA78]])
  {
    v9 = objc_alloc_init(MEMORY[0x1E69CDA00]);
    _bundleIdentifierForActivityImageCreation = [(__CFString *)v9 _bundleIdentifierForActivityImageCreation];

    v7 = _bundleIdentifierForActivityImageCreation == 0;
    if (_bundleIdentifierForActivityImageCreation)
    {
      [(__CFString *)v9 _bundleIdentifierForActivityImageCreation];
    }

    else
    {
      [(__CFString *)v9 _activityImageUTI];
    }
    v8 = ;

    goto LABEL_10;
  }

  v7 = 0;
  v8 = v6;
LABEL_11:
  v11 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
  v12 = [SFUIActivityImageProvider tintImageDescriptor:v11 withUserInterfaceStyle:[(SFUIPeopleSuggestionImageProvider *)self userInterfaceStyle] forGraphicIcon:v7];

  v13 = objc_alloc(MEMORY[0x1E69A8A00]);
  if (v7)
  {
    v14 = [v13 initWithType:v8];
  }

  else
  {
    v14 = [v13 initWithBundleIdentifier:v8];
  }

  v15 = v14;
  v16 = people_ui_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v21 = @"NO";
    *v22 = 138412802;
    *&v22[4] = v12;
    *&v22[12] = 2112;
    if (v7)
    {
      v21 = @"YES";
    }

    *&v22[14] = v8;
    v23 = 2112;
    v24 = v21;
    _os_log_debug_impl(&dword_1B9E4B000, v16, OS_LOG_TYPE_DEBUG, "fetching fast image with descriptor:%@ identifier:%@ isUTI:%@", v22, 0x20u);
  }

  v17 = [v15 imageForDescriptor:v12];
  if (v17 && (-[SFUIPeopleSuggestionImageProvider _deliverIconImage:identifier:isUTI:error:](self, "_deliverIconImage:identifier:isUTI:error:", v17, v6, v7, 0), ![v17 placeholder]))
  {
    v19 = v17;
  }

  else
  {
    v18 = people_ui_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [SFUIPeopleSuggestionImageProvider _fetchTransportImageForPeopleSuggestion:];
    }

    v19 = [v15 prepareImageForDescriptor:v12];

    if ([v19 placeholder])
    {
      v20 = people_ui_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [SFUIPeopleSuggestionImageProvider _fetchTransportImageForPeopleSuggestion:v20];
      }
    }

    [(SFUIPeopleSuggestionImageProvider *)self _deliverIconImage:v19 identifier:v6 isUTI:v7 error:0, *v22];
  }

LABEL_26:
}

- (BOOL)_fetchNoAppTransportImageForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.telephonyutilities.callservicesd"])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69CDA38]);
    [v5 setUserInterfaceStyle:{-[SFUIPeopleSuggestionImageProvider userInterfaceStyle](self, "userInterfaceStyle")}];
    activityImage = [v5 activityImage];
  }

  else
  {
    activityImage = 0;
  }

  v7 = [SFUIActivityImageProvider tintImage:activityImage withDescriptorName:*MEMORY[0x1E69A8A78] userInterfaceStyle:[(SFUIPeopleSuggestionImageProvider *)self userInterfaceStyle]];

  if (v7)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__SFUIPeopleSuggestionImageProvider__fetchNoAppTransportImageForIdentifier___block_invoke;
    v9[3] = &unk_1E7EE4428;
    objc_copyWeak(&v12, &location);
    v10 = v7;
    v11 = identifierCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7 != 0;
}

void __76__SFUIPeopleSuggestionImageProvider__fetchNoAppTransportImageForIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained deliverImage:*(a1 + 32) identifier:*(a1 + 40) placeholder:0 error:0];
}

- (void)_deliverIconImage:(id)image identifier:(id)identifier isUTI:(BOOL)i error:(id)error
{
  imageCopy = image;
  identifierCopy = identifier;
  v10 = MEMORY[0x1E69DCAB8];
  cGImage = [imageCopy CGImage];
  [imageCopy scale];
  v12 = [v10 imageWithCGImage:cGImage scale:0 orientation:?];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SFUIPeopleSuggestionImageProvider__deliverIconImage_identifier_isUTI_error___block_invoke;
  block[3] = &unk_1E7EE45D0;
  objc_copyWeak(&v20, &location);
  v17 = v12;
  v18 = identifierCopy;
  v19 = imageCopy;
  v13 = imageCopy;
  v14 = identifierCopy;
  v15 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __78__SFUIPeopleSuggestionImageProvider__deliverIconImage_identifier_isUTI_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained deliverImage:*(a1 + 32) identifier:*(a1 + 40) placeholder:objc_msgSend(*(a1 + 48) error:{"placeholder"), 0}];
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)performImageRequest:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SFUIPeopleSuggestionImageProvider.m" lineNumber:213 description:@"request is not a SFUIPeopleSuggestionImageRequest type."];
}

- (void)_fetchAvatarImageForPeopleSuggestion:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1B9E4B000, v0, OS_LOG_TYPE_ERROR, "Could not fetch donated image: %@", v1, 0xCu);
}

@end