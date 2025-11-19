@interface SFUIPeopleSuggestionImageProvider
- (BOOL)_fetchNoAppTransportImageForIdentifier:(id)a3;
- (CGSize)targetSize;
- (SFUIPeopleSuggestionImageProvider)initWithTargetSize:(CGSize)a3 layoutDirection:(unint64_t)a4;
- (SFUIPeopleSuggestionImageProvider)initWithTargetSize:(CGSize)a3 layoutDirection:(unint64_t)a4 userInterfaceStyle:(int64_t)a5;
- (UIImage)placeholderImage;
- (int)requestAvatarImageForPeopleSuggestion:(id)a3 resultHandler:(id)a4;
- (int)requestTransportImageForPeopleSuggestion:(id)a3 resultHandler:(id)a4;
- (void)_deliverIconImage:(id)a3 identifier:(id)a4 isUTI:(BOOL)a5 error:(id)a6;
- (void)_fetchAvatarImageForPeopleSuggestion:(id)a3;
- (void)_fetchTransportImageForPeopleSuggestion:(id)a3;
- (void)_processPlaceholderImage;
- (void)performImageRequest:(id)a3;
- (void)updateTargetSize:(CGSize)a3;
- (void)updateUserInterfaceStyle:(int64_t)a3;
@end

@implementation SFUIPeopleSuggestionImageProvider

- (SFUIPeopleSuggestionImageProvider)initWithTargetSize:(CGSize)a3 layoutDirection:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  v9 = [v8 traitCollection];
  v10 = -[SFUIPeopleSuggestionImageProvider initWithTargetSize:layoutDirection:userInterfaceStyle:](self, "initWithTargetSize:layoutDirection:userInterfaceStyle:", a4, [v9 userInterfaceStyle], width, height);

  return v10;
}

- (SFUIPeopleSuggestionImageProvider)initWithTargetSize:(CGSize)a3 layoutDirection:(unint64_t)a4 userInterfaceStyle:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v20.receiver = self;
  v20.super_class = SFUIPeopleSuggestionImageProvider;
  v9 = [(SFUIImageProvider *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v9->_targetSize.width = width;
    v9->_targetSize.height = height;
    v9->_layoutDirection = a4;
    v9->_userInterfaceStyle = a5;
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
  v3 = [(SFUIPeopleSuggestionImageProvider *)self placeholderImageQueue];
  dispatch_assert_queue_V2(v3);

  avatarImageScale();
  v6 = [(SFUIPeopleSuggestionImageProvider *)self imageRenderer];
  [(SFUIPeopleSuggestionImageProvider *)self targetSize];
  v4 = [v6 placeholderImageForSize:? scale:?];
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
    v4 = [(SFUIPeopleSuggestionImageProvider *)self placeholderImageQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__SFUIPeopleSuggestionImageProvider_placeholderImage__block_invoke;
    v7[3] = &unk_1E7EE45A8;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(v4, v7);

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

- (int)requestAvatarImageForPeopleSuggestion:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = people_ui_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SFUIPeopleSuggestionImageProvider requestAvatarImageForPeopleSuggestion:resultHandler:];
  }

  v9 = [v6 identifier];
  v10 = [(SFUIImageProvider *)self imageCache];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    v12 = people_ui_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SFUIPeopleSuggestionImageProvider requestAvatarImageForPeopleSuggestion:resultHandler:];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, v11, 0, 0);
    }

    LODWORD(v13) = 0;
  }

  else
  {
    if (v7)
    {
      v14 = [(SFUIPeopleSuggestionImageProvider *)self placeholderImage];
      (*(v7 + 2))(v7, v14, 1, 0);
    }

    v13 = [(SFUIImageProvider *)self nextRequestID];
    v15 = [[SFUIPeopleSuggestionImageRequest alloc] initWithRequestID:v13 peopleSuggestion:v6 type:0 resultHandler:v7];
    [(SFUIImageProvider *)self scheduleImageRequest:v15];
  }

  return v13;
}

- (int)requestTransportImageForPeopleSuggestion:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = people_ui_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SFUIPeopleSuggestionImageProvider requestTransportImageForPeopleSuggestion:resultHandler:];
  }

  v9 = [v6 transportBundleIdentifier];
  v10 = [(SFUIImageProvider *)self imageCache];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    v12 = people_ui_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SFUIPeopleSuggestionImageProvider requestAvatarImageForPeopleSuggestion:resultHandler:];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, v11, 0, 0);
    }

    LODWORD(v13) = 0;
  }

  else
  {
    v13 = [(SFUIImageProvider *)self nextRequestID];
    v14 = [[SFUIPeopleSuggestionImageRequest alloc] initWithRequestID:v13 peopleSuggestion:v6 type:1 resultHandler:v7];
    [(SFUIImageProvider *)self scheduleImageRequest:v14];
  }

  return v13;
}

- (void)updateTargetSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SFUIPeopleSuggestionImageProvider *)self targetSize];
  if (v7 != width || v6 != height)
  {
    self->_targetSize.width = width;
    self->_targetSize.height = height;
    v9 = [(SFUIImageProvider *)self imageCache];
    [v9 removeAllObjects];
  }
}

- (void)updateUserInterfaceStyle:(int64_t)a3
{
  if ([(SFUIPeopleSuggestionImageProvider *)self userInterfaceStyle]!= a3)
  {
    self->_userInterfaceStyle = a3;
    v5 = [(SFUIImageProvider *)self imageCache];
    [v5 removeAllObjects];
  }
}

- (void)performImageRequest:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SFUIPeopleSuggestionImageProvider *)a2 performImageRequest:?];
  }

  v8 = v5;
  v6 = [v8 peopleSuggestion];
  v7 = [v8 type];
  if (v7 == 1)
  {
    [(SFUIPeopleSuggestionImageProvider *)self _fetchTransportImageForPeopleSuggestion:v6];
  }

  else if (!v7)
  {
    [(SFUIPeopleSuggestionImageProvider *)self _fetchAvatarImageForPeopleSuggestion:v6];
  }
}

- (void)_fetchAvatarImageForPeopleSuggestion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v5 = [v4 donatedImage];

  if (v5)
  {
    v6 = [v4 donatedImage];
    v7 = sharing_ui_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SFUIPeopleSuggestionImageProvider _fetchAvatarImageForPeopleSuggestion:];
    }

    v8 = [v6 _imageData];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v15 = [getINImageServiceConnectionClass() sharedConnection];
      v34 = 0;
      v9 = [v15 loadDataImageFromImage:v6 scaledSize:&v34 error:getINImageDefaultScaledSize()];
      v11 = v34;

      if (v11)
      {
        v16 = people_ui_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [SFUIPeopleSuggestionImageProvider _fetchAvatarImageForPeopleSuggestion:];
        }

        v10 = 0;
        goto LABEL_13;
      }

      v10 = [v9 _imageData];

      if (!v10)
      {
        v11 = 0;
        goto LABEL_14;
      }

      v9 = v10;
    }

    v10 = [MEMORY[0x1E69DCAB8] imageWithData:v9];
    v11 = 0;
LABEL_13:

LABEL_14:
    goto LABEL_19;
  }

  v12 = [v4 deviceModelIdentifier];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v4 deviceModelIdentifier];
    v10 = [_TtC9SharingUI22SFUIDeviceIconProvider deviceImageWithModelIdentifier:v14];
  }

  else
  {
    v17 = people_ui_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SFUIPeopleSuggestionImageProvider _fetchAvatarImageForPeopleSuggestion:];
    }

    v18 = [(SFUIPeopleSuggestionImageProvider *)self layoutDirection]== 1;
    v19 = [MEMORY[0x1E69DC938] currentDevice];
    v20 = 4 * ([v19 userInterfaceIdiom] == 4);

    avatarImageScale();
    [(SFUIPeopleSuggestionImageProvider *)self targetSize];
    v21 = [SFUIAvatarImageRenderingScope scopeWithPointSize:"scopeWithPointSize:scale:rightToLeft:style:backgroundStyle:" scale:v18 rightToLeft:1 style:v20 backgroundStyle:?];
    v22 = [(SFUIPeopleSuggestionImageProvider *)self imageRenderer];
    v23 = [v4 contacts];
    v10 = [v22 avatarImageForContacts:v23 scope:v21];
  }

  v11 = 0;
LABEL_19:
  objc_initWeak(&location, self);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__SFUIPeopleSuggestionImageProvider__fetchAvatarImageForPeopleSuggestion___block_invoke;
  v28[3] = &unk_1E7EE45D0;
  objc_copyWeak(&v32, &location);
  v29 = v10;
  v30 = v4;
  v31 = v11;
  v24 = v11;
  v25 = v4;
  v26 = v10;
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

- (void)_fetchTransportImageForPeopleSuggestion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v5 = [v4 transportBundleIdentifier];

  if ([(SFUIPeopleSuggestionImageProvider *)self _fetchNoAppTransportImageForIdentifier:v5])
  {
    goto LABEL_26;
  }

  v6 = v5;
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
    v10 = [(__CFString *)v9 _bundleIdentifierForActivityImageCreation];

    v7 = v10 == 0;
    if (v10)
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

- (BOOL)_fetchNoAppTransportImageForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.telephonyutilities.callservicesd"])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69CDA38]);
    [v5 setUserInterfaceStyle:{-[SFUIPeopleSuggestionImageProvider userInterfaceStyle](self, "userInterfaceStyle")}];
    v6 = [v5 activityImage];
  }

  else
  {
    v6 = 0;
  }

  v7 = [SFUIActivityImageProvider tintImage:v6 withDescriptorName:*MEMORY[0x1E69A8A78] userInterfaceStyle:[(SFUIPeopleSuggestionImageProvider *)self userInterfaceStyle]];

  if (v7)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__SFUIPeopleSuggestionImageProvider__fetchNoAppTransportImageForIdentifier___block_invoke;
    v9[3] = &unk_1E7EE4428;
    objc_copyWeak(&v12, &location);
    v10 = v7;
    v11 = v4;
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

- (void)_deliverIconImage:(id)a3 identifier:(id)a4 isUTI:(BOOL)a5 error:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E69DCAB8];
  v11 = [v8 CGImage];
  [v8 scale];
  v12 = [v10 imageWithCGImage:v11 scale:0 orientation:?];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SFUIPeopleSuggestionImageProvider__deliverIconImage_identifier_isUTI_error___block_invoke;
  block[3] = &unk_1E7EE45D0;
  objc_copyWeak(&v20, &location);
  v17 = v12;
  v18 = v9;
  v19 = v8;
  v13 = v8;
  v14 = v9;
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