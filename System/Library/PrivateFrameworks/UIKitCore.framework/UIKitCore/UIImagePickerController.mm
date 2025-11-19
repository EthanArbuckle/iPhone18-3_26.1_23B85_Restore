@interface UIImagePickerController
+ (BOOL)_isMediaTypeAvailable:(id)a3 forSource:(int64_t)a4;
+ (BOOL)isCameraDeviceAvailable:(UIImagePickerControllerCameraDevice)cameraDevice;
+ (BOOL)isFlashAvailableForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice;
+ (BOOL)isSourceTypeAvailable:(UIImagePickerControllerSourceType)sourceType;
+ (NSArray)availableCaptureModesForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice;
+ (NSArray)availableMediaTypesForSourceType:(UIImagePickerControllerSourceType)sourceType;
- (BOOL)_allowsImageEditing;
- (BOOL)_allowsIris;
- (BOOL)_allowsMultipleSelection;
- (BOOL)_convertAutoloopsToGIF;
- (BOOL)_isCameraCaptureModeValid:(int64_t)a3;
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3;
- (BOOL)_onlyShowAutoloops;
- (BOOL)_requiresPickingConfirmation;
- (BOOL)_showsFileSizePicker;
- (BOOL)_showsPrompt;
- (BOOL)_sourceTypeIsCamera;
- (BOOL)_stagedPhotoPickerIsReadyForDisplay;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)showsCameraControls;
- (BOOL)startVideoCapture;
- (CGAffineTransform)cameraViewTransform;
- (Class)photoPickerRequestOptionsClass;
- (NSArray)mediaTypes;
- (NSTimeInterval)videoMaximumDuration;
- (UIImagePickerController)init;
- (UIImagePickerController)initWithCoder:(id)a3;
- (UIImagePickerControllerCameraCaptureMode)cameraCaptureMode;
- (UIImagePickerControllerCameraDevice)cameraDevice;
- (UIImagePickerControllerCameraFlashMode)cameraFlashMode;
- (UIImagePickerControllerImageURLExportPreset)imageExportPreset;
- (UIImagePickerControllerQualityType)videoQuality;
- (UIView)cameraOverlayView;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)_cameraViewController;
- (id)_initWithSourceImageData:(id)a3 cropRect:(CGRect)a4;
- (id)_photoPickerDisplayCompletion;
- (id)_photoPickerPreviewDisplayCompletion;
- (id)_properties;
- (id)_propertiesForPhotoPickerExtension;
- (id)_valueForProperty:(id)a3;
- (int64_t)_preferredModalPresentationStyle;
- (unint64_t)_multipleSelectionLimit;
- (unint64_t)supportedInterfaceOrientations;
- (void)_autoDismiss;
- (void)_createInitialControllerWithCompletion:(id)a3;
- (void)_handleEndingPhotoPickerPresentationDelay;
- (void)_handleInstantiatedRemoteViewController:(id)a3 request:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_handleMatchingExtension:(id)a3 viewControllerClassName:(id)a4 completion:(id)a5;
- (void)_handleTopViewControllerReadyForDisplay:(id)a3;
- (void)_imagePickerDidCancel;
- (void)_imagePickerDidCompleteWithInfo:(id)a3;
- (void)_imagePickerDidCompleteWithInfoArray:(id)a3;
- (void)_initializeProperties;
- (void)_invalidatePhotoPickerServices;
- (void)_populateArchivedChildViewControllers:(id)a3;
- (void)_removeAllChildren;
- (void)_setAllowsImageEditing:(BOOL)a3;
- (void)_setAllowsIris:(BOOL)a3;
- (void)_setAllowsMultipleSelection:(BOOL)a3;
- (void)_setConvertAutoloopsToGIF:(BOOL)a3;
- (void)_setMultipleSelectionLimit:(unint64_t)a3;
- (void)_setOnlyShowAutoloops:(BOOL)a3;
- (void)_setPhotoPickerDisplayCompletion:(id)a3;
- (void)_setPhotoPickerPreviewDisplayCompletion:(id)a3;
- (void)_setProperties:(id)a3;
- (void)_setRequiresPickingConfirmation:(BOOL)a3;
- (void)_setShowsFileSizePicker:(BOOL)a3;
- (void)_setShowsPrompt:(BOOL)a3;
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)_setupControllersForCurrentMediaTypes;
- (void)_setupControllersForCurrentSourceTypeWithCompletion:(id)a3;
- (void)_testPerformPreviewOfFirstPhoto;
- (void)_updateCameraCaptureMode;
- (void)_viewControllerPresentationDidInitiate;
- (void)cancelPhotoPicker;
- (void)didDisplayPhotoPickerPreview;
- (void)didDisplayPhotoPickerSourceType:(id)a3;
- (void)didSelectMediaWithInfoDictionary:(id)a3;
- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)a3;
- (void)dismissCurrentViewControllerFromPhotoPickerAnimated:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)photoPickerIsReadyForDisplay;
- (void)setCameraCaptureMode:(UIImagePickerControllerCameraCaptureMode)cameraCaptureMode;
- (void)setCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice;
- (void)setCameraFlashMode:(UIImagePickerControllerCameraFlashMode)cameraFlashMode;
- (void)setCameraOverlayView:(UIView *)cameraOverlayView;
- (void)setCameraViewTransform:(CGAffineTransform *)cameraViewTransform;
- (void)setImageExportPreset:(UIImagePickerControllerImageURLExportPreset)imageExportPreset;
- (void)setMediaTypes:(NSArray *)mediaTypes;
- (void)setShowsCameraControls:(BOOL)showsCameraControls;
- (void)setSourceType:(UIImagePickerControllerSourceType)sourceType;
- (void)setVideoMaximumDuration:(NSTimeInterval)videoMaximumDuration;
- (void)setVideoQuality:(UIImagePickerControllerQualityType)videoQuality;
- (void)stopVideoCapture;
- (void)takePicture;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillUnload;
@end

@implementation UIImagePickerController

+ (BOOL)isSourceTypeAvailable:(UIImagePickerControllerSourceType)sourceType
{
  LOBYTE(v3) = 1;
  if (sourceType > UIImagePickerControllerSourceTypeCamera)
  {
    if (sourceType == UIImagePickerControllerSourceTypeSavedPhotosAlbum || sourceType == 1000)
    {
      return v3;
    }

LABEL_10:
    LOBYTE(v3) = 0;
    return v3;
  }

  if (sourceType == UIImagePickerControllerSourceTypePhotoLibrary)
  {
    return v3;
  }

  if (sourceType != UIImagePickerControllerSourceTypeCamera)
  {
    goto LABEL_10;
  }

  v3 = MGGetBoolAnswer();
  if (v3)
  {
    LOBYTE(v3) = MGGetBoolAnswer() ^ 1;
  }

  return v3;
}

+ (BOOL)_isMediaTypeAvailable:(id)a3 forSource:(int64_t)a4
{
  v6 = a3;
  if ([a1 isSourceTypeAvailable:a4])
  {
    v7 = [*MEMORY[0x1E6982E30] identifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v11 = [*MEMORY[0x1E6982EE8] identifier];
      v12 = [v6 isEqualToString:v11];

      if (v12)
      {
        if (a4 == 1)
        {
          v9 = MGGetBoolAnswer();
        }

        else
        {
          v9 = (a4 & 0xFFFFFFFFFFFFFFFDLL) == 0;
        }
      }

      else
      {
        v13 = [*MEMORY[0x1E6982E80] identifier];
        v14 = [v6 isEqualToString:v13];

        if (a4 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = v14;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (NSArray)availableMediaTypesForSourceType:(UIImagePickerControllerSourceType)sourceType
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ([a1 isSourceTypeAvailable:?])
  {
    v5 = *MEMORY[0x1E6982EE8];
    v6 = [*MEMORY[0x1E6982EE8] identifier];
    v7 = [a1 _isMediaTypeAvailable:v6 forSource:sourceType];

    v8 = [*MEMORY[0x1E6982E30] identifier];
    v9 = v8;
    if (v7)
    {
      v14[0] = v8;
      v10 = [v5 identifier];
      v14[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    }

    else
    {
      v13 = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isCameraDeviceAvailable:(UIImagePickerControllerCameraDevice)cameraDevice
{
  if (cameraDevice > UIImagePickerControllerCameraDeviceFront)
  {
    return 0;
  }

  else
  {
    return MGGetBoolAnswer();
  }
}

+ (NSArray)availableCaptureModesForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice
{
  if (cameraDevice == UIImagePickerControllerCameraDeviceFront)
  {
    if (MGGetBoolAnswer())
    {
      v7 = MEMORY[0x1E695DF70];
      v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
      v8 = [MEMORY[0x1E696AD98] numberWithInt:1];
      v5 = [v7 arrayWithObjects:{v6, v8, 0}];

LABEL_8:
      goto LABEL_10;
    }
  }

  else if (cameraDevice == UIImagePickerControllerCameraDeviceRear && MGGetBoolAnswer())
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v5 = [v3 arrayWithObjects:{v4, 0}];

    if (!MGGetBoolAnswer())
    {
      goto LABEL_10;
    }

    v6 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v5 addObject:v6];
    goto LABEL_8;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (BOOL)isFlashAvailableForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice
{
  if (cameraDevice > UIImagePickerControllerCameraDeviceFront)
  {
    return 0;
  }

  else
  {
    return MGGetBoolAnswer();
  }
}

- (UIImagePickerController)init
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = UIImagePickerController;
  v2 = [(UIViewController *)&v11 init];
  if (v2)
  {
    if (UIImagePickerLoadPhotoLibraryIfNecessary())
    {
      if ((_MergedGlobals_7 & 1) == 0)
      {
        qword_1ED49AC20 = dlopen([@"/System/Library/Frameworks/PhotosUI.framework/PhotosUI" fileSystemRepresentation], 2);
        if (qword_1ED49AC20)
        {
          _MergedGlobals_7 = 1;
        }

        else
        {
          v3 = *MEMORY[0x1E69E9848];
          v4 = dlerror();
          fprintf(v3, "Couldn't load framework: %s\n", v4);
          _MergedGlobals_7 = 1;
          if (!qword_1ED49AC20)
          {
            goto LABEL_12;
          }
        }
      }

      if (byte_1ED49AC19)
      {
LABEL_11:
        v2->_sourceType = 0;
        v2->_savingOptions = 2;
        v7 = [*MEMORY[0x1E6982E30] identifier];
        v12[0] = v7;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
        mediaTypes = v2->_mediaTypes;
        v2->_mediaTypes = v8;

        [(UIViewController *)v2 _setIgnoreAppSupportedOrientations:1];
        [(UINavigationController *)v2 setPreferredContentSize:320.0, 480.0];
        return v2;
      }

      qword_1ED49AC28 = dlopen([@"/System/Library/PrivateFrameworks/CameraUI.framework/CameraUI" fileSystemRepresentation], 2);
      if (qword_1ED49AC28)
      {
        byte_1ED49AC19 = 1;
        goto LABEL_11;
      }

      v5 = *MEMORY[0x1E69E9848];
      v6 = dlerror();
      fprintf(v5, "Couldn't load framework: %s\n", v6);
      byte_1ED49AC19 = 1;
      if (qword_1ED49AC28)
      {
        goto LABEL_11;
      }
    }

LABEL_12:

    return 0;
  }

  return v2;
}

- (UIImagePickerController)initWithCoder:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIImagePickerController;
  v5 = [(UINavigationController *)&v11 initWithCoder:v4];
  if (v5)
  {
    if (UIImagePickerLoadPhotoLibraryIfNecessary())
    {
      v5->_sourceType = 0;
      if ([v4 containsValueForKey:@"UISourceType"])
      {
        v5->_sourceType = [v4 decodeIntegerForKey:@"UISourceType"];
      }

      if ([v4 containsValueForKey:@"UIMediaTypes"])
      {
        v6 = [v4 decodeObjectForKey:@"UIMediaTypes"];
        mediaTypes = v5->_mediaTypes;
        v5->_mediaTypes = v6;
      }

      else
      {
        mediaTypes = [*MEMORY[0x1E6982E30] identifier];
        v12[0] = mediaTypes;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
        v9 = v5->_mediaTypes;
        v5->_mediaTypes = v8;
      }

      -[UIImagePickerController _setAllowsImageEditing:](v5, "_setAllowsImageEditing:", [v4 decodeBoolForKey:@"UIAllowsImageEditing"]);
      v5->_savingOptions = 2;
      [(UIViewController *)v5 _setIgnoreAppSupportedOrientations:1];
      [(UINavigationController *)v5 setPreferredContentSize:320.0, 480.0];
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)_initWithSourceImageData:(id)a3 cropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v16.receiver = self;
  v16.super_class = UIImagePickerController;
  v11 = [(UIViewController *)&v16 init];
  if (v11)
  {
    if (UIImagePickerLoadPhotoLibraryIfNecessary())
    {
      objc_storeStrong(&v11->_image, a3);
      v11->_cropRect.origin.x = x;
      v11->_cropRect.origin.y = y;
      v11->_cropRect.size.width = width;
      v11->_cropRect.size.height = height;
      v11->_sourceType = 1000;
      v12 = [*MEMORY[0x1E6982E30] identifier];
      v17[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      mediaTypes = v11->_mediaTypes;
      v11->_mediaTypes = v13;

      [(UIImagePickerController *)v11 _setAllowsImageEditing:1];
      v11->_savingOptions = 2;
      [(UIViewController *)v11 _setIgnoreAppSupportedOrientations:1];
      [(UINavigationController *)v11 setPreferredContentSize:320.0, 480.0];
    }

    else
    {

      v11 = 0;
    }
  }

  return v11;
}

- (void)_populateArchivedChildViewControllers:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIImagePickerController;
  v3 = a3;
  [(UIViewController *)&v4 _populateArchivedChildViewControllers:v3];
  [v3 removeAllObjects];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIImagePickerController;
  [(UINavigationController *)&v7 encodeWithCoder:v4];
  sourceType = self->_sourceType;
  if (sourceType)
  {
    [v4 encodeInteger:sourceType forKey:@"UISourceType"];
  }

  if ([(UIImagePickerController *)self _allowsImageEditing])
  {
    [v4 encodeBool:-[UIImagePickerController _allowsImageEditing](self forKey:{"_allowsImageEditing"), @"UIAllowsImageEditing"}];
  }

  mediaTypes = self->_mediaTypes;
  if (mediaTypes)
  {
    [v4 encodeObject:mediaTypes forKey:@"UIMediaTypes"];
  }
}

- (void)_updateCameraCaptureMode
{
  if ([(UIImagePickerController *)self sourceType]== UIImagePickerControllerSourceTypeCamera && [(NSArray *)self->_mediaTypes count]== 1)
  {
    v5 = [(NSArray *)self->_mediaTypes objectAtIndex:0];
    v3 = [*MEMORY[0x1E6982EE8] identifier];
    v4 = [v5 isEqual:v3];

    [(UIImagePickerController *)self setCameraCaptureMode:v4];
  }
}

- (void)setSourceType:(UIImagePickerControllerSourceType)sourceType
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_sourceType != sourceType)
  {
    if (([objc_opt_class() isSourceTypeAvailable:sourceType] & 1) == 0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Source type %ld not available", sourceType];
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v14);
    }

    self->_sourceType = sourceType;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_mediaTypes;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([objc_opt_class() _isMediaTypeAvailable:v11 forSource:self->_sourceType])
          {
            [(NSArray *)v5 addObject:v11];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    if (![(NSArray *)v5 count])
    {
      v12 = [*MEMORY[0x1E6982E30] identifier];
      [(NSArray *)v5 addObject:v12];
    }

    mediaTypes = self->_mediaTypes;
    self->_mediaTypes = v5;

    if (*&self->_imagePickerFlags)
    {
      [(UIImagePickerController *)self _setupControllersForCurrentSourceTypeWithCompletion:0];
    }

    [(UIImagePickerController *)self _updateCameraCaptureMode];
  }
}

- (void)setMediaTypes:(NSArray *)mediaTypes
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = mediaTypes;
  if (self->_mediaTypes == v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(UIImagePickerController *)self sourceType];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v4;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([objc_opt_class() _isMediaTypeAvailable:v13 forSource:v5])
          {
            [v6 addObject:v13];
            ++v10;
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
      v14 = v10 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = [*MEMORY[0x1E6982E80] identifier];
    if ([v6 containsObject:v15])
    {
      v16 = [*MEMORY[0x1E6982E30] identifier];
      v17 = [v6 containsObject:v16];

      if ((v17 & 1) == 0)
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = @"The Live Photo type cannot be specified without the Image media type";
        goto LABEL_23;
      }
    }

    else
    {
    }

    if (v14)
    {
      v18 = MEMORY[0x1E696AEC0];
      v21 = v5;
      v19 = @"No available types for source %ld";
LABEL_23:
      [v18 stringWithFormat:v19, v21];
      v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v20);
    }

    objc_storeStrong(&self->_mediaTypes, v6);
    [(UIImagePickerController *)self _updateCameraCaptureMode];
    if (*&self->_imagePickerFlags)
    {
      [(UIImagePickerController *)self _setupControllersForCurrentMediaTypes];
    }
  }
}

- (NSArray)mediaTypes
{
  v2 = [(NSArray *)self->_mediaTypes copy];

  return v2;
}

- (BOOL)_allowsMultipleSelection
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerAllowMutipleSelection"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setAllowsMultipleSelection:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"_UIImagePickerControllerAllowMutipleSelection"];
}

- (unint64_t)_multipleSelectionLimit
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerMultipleSelectionLimit"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)_setMultipleSelectionLimit:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"_UIImagePickerControllerMultipleSelectionLimit"];
}

- (BOOL)_requiresPickingConfirmation
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerRequiresPickingConfirmation"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setRequiresPickingConfirmation:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"_UIImagePickerControllerRequiresPickingConfirmation"];
}

- (BOOL)_showsFileSizePicker
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerShowsFileSizePicker"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setShowsFileSizePicker:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"_UIImagePickerControllerShowsFileSizePicker"];
}

- (BOOL)_onlyShowAutoloops
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerOnlyShowAutoloopVideos"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setOnlyShowAutoloops:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"_UIImagePickerControllerOnlyShowAutoloopVideos"];
}

- (BOOL)_convertAutoloopsToGIF
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerConvertAutoloopsToGIF"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setConvertAutoloopsToGIF:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"_UIImagePickerControllerConvertAutoloopsToGIF"];
}

- (BOOL)_showsPrompt
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerShowsPrompt"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setShowsPrompt:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"_UIImagePickerControllerShowsPrompt"];
}

- (BOOL)_allowsIris
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerAllowIris"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setAllowsIris:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"_UIImagePickerControllerAllowIris"];
}

- (UIImagePickerControllerImageURLExportPreset)imageExportPreset
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerImageURLExportPreset"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setImageExportPreset:(UIImagePickerControllerImageURLExportPreset)imageExportPreset
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:imageExportPreset];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"_UIImagePickerControllerImageURLExportPreset"];
}

- (NSTimeInterval)videoMaximumDuration
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"UIImagePickerControllerVideoMaximumDuration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setVideoMaximumDuration:(NSTimeInterval)videoMaximumDuration
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:videoMaximumDuration];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"UIImagePickerControllerVideoMaximumDuration"];
}

- (UIImagePickerControllerQualityType)videoQuality
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"UIImagePickerControllerVideoQuality"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setVideoQuality:(UIImagePickerControllerQualityType)videoQuality
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:videoQuality];
  [(UIImagePickerController *)self _setValue:v4 forProperty:@"UIImagePickerControllerVideoQuality"];
}

- (void)_setAllowsImageEditing:(BOOL)a3
{
  v3 = a3;
  if ([(UIImagePickerController *)self _allowsImageEditing]!= a3)
  {
    if (v3)
    {
      v5 = [NSClassFromString(&cfstr_Plprivacy.isa) performSelector:sel_sharedInstance];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v6 = [v5 isPhotoLibraryModificationAllowed];
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    [(UIImagePickerController *)self _setValue:v7 forProperty:@"UIImagePickerControllerAllowsEditing"];
  }
}

- (BOOL)_allowsImageEditing
{
  v2 = [(UIImagePickerController *)self _valueForProperty:@"UIImagePickerControllerAllowsEditing"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setProperties:(id)a3
{
  if (self->_properties != a3)
  {
    v4 = MEMORY[0x1E695DF90];
    v5 = a3;
    v6 = [[v4 alloc] initWithDictionary:v5];

    properties = self->_properties;
    self->_properties = v6;
  }
}

- (void)_initializeProperties
{
  if (!self->_properties)
  {
    if ([objc_opt_class() isCameraDeviceAvailable:0])
    {
      v3 = 0;
    }

    else
    {
      v3 = [objc_opt_class() isCameraDeviceAvailable:1];
    }

    v17 = objc_alloc(MEMORY[0x1E695DF90]);
    v4 = *MEMORY[0x1E695E4C0];
    v16 = [MEMORY[0x1E696AD98] numberWithInt:1];
    v15 = *MEMORY[0x1E695E4D0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v18[0] = *MEMORY[0x1E695EFD0];
    v18[1] = v5;
    v18[2] = *(MEMORY[0x1E695EFD0] + 32);
    v14 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:v18];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:600.0];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_opt_class(), "_reviewCapturedItems")}];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v12 = [v17 initWithObjectsAndKeys:{v4, @"UIImagePickerControllerAllowsEditing", v16, @"UIImagePickerControllerVideoQuality", v15, @"_UIImagePickerControllerShowCameraControls", v14, @"_UIImagePickerControllerCameraViewTransform", v6, @"UIImagePickerControllerVideoMaximumDuration", v7, @"_UIImagePickerControllerCameraDevice", v8, @"_UIImagePickerControllerCameraCaptureMode", v9, @"_UIImagePickerControllerCameraFlashMode", v10, @"_UIImagePickerControllerReviewCapturedItem", v4, @"_UIImagePickerControllerAllowIris", v11, @"_UIImagePickerControllerImageURLExportPreset", 0}];
    properties = self->_properties;
    self->_properties = v12;
  }
}

- (id)_properties
{
  properties = self->_properties;
  if (!properties)
  {
    [(UIImagePickerController *)self _initializeProperties];
    properties = self->_properties;
  }

  v4 = [(NSMutableDictionary *)properties copy];

  return v4;
}

- (void)_setValue:(id)a3 forProperty:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_properties)
  {
    [(UIImagePickerController *)self _initializeProperties];
  }

  v7 = [(UIImagePickerController *)self _allowsImageEditing];
  properties = self->_properties;
  if (v10)
  {
    [(NSMutableDictionary *)properties setObject:v10 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)properties removeObjectForKey:v6];
  }

  if (v7 != [(UIImagePickerController *)self _allowsImageEditing])
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:@"_UIImagePickerControllerEditabilityChanged" object:self userInfo:0];
  }
}

- (id)_valueForProperty:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  if (!properties)
  {
    [(UIImagePickerController *)self _initializeProperties];
    properties = self->_properties;
  }

  v6 = [(NSMutableDictionary *)properties objectForKey:v4];

  return v6;
}

- (BOOL)_sourceTypeIsCamera
{
  v2 = [(UIImagePickerController *)self sourceType];
  if (v2 != UIImagePickerControllerSourceTypeCamera)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Source type must be UIImagePickerControllerSourceTypeCamera" userInfo:0];
    objc_exception_throw(v3);
  }

  return v2;
}

- (id)_cameraViewController
{
  if ([(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    v3 = [(UINavigationController *)self viewControllers];
    if ([v3 count])
    {
      v4 = [v3 objectAtIndex:0];
    }

    else
    {
      v4 = 0;
    }

    if ([v4 conformsToProtocol:&unk_1F016C630])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)showsCameraControls
{
  if (![(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    return 1;
  }

  if (*&self->_imagePickerFlags)
  {
    v3 = [(UIImagePickerController *)self _cameraViewController];
    v4 = [v3 _showsCameraControls];
  }

  else
  {
    v3 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerShowCameraControls"];
    v4 = [v3 BOOLValue];
  }

  v5 = v4;

  return v5;
}

- (void)setShowsCameraControls:(BOOL)showsCameraControls
{
  v3 = showsCameraControls;
  if ([(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    if (*&self->_imagePickerFlags)
    {
      v5 = [(UIImagePickerController *)self _cameraViewController];
      [v5 _setShowsCameraControls:v3];
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      [UIImagePickerController _setValue:"_setValue:forProperty:" forProperty:?];
    }
  }
}

- (UIView)cameraOverlayView
{
  if ([(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    v3 = [(UIImagePickerController *)self _cameraViewController];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 _cameraOverlayView];
    }

    else
    {
      v5 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerCameraOverlayView"];
      if (!v5)
      {
        v6 = +[UIWindow _applicationKeyWindow];
        [v6 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        v5 = [[UIView alloc] initWithFrame:v8, v10, v12, v14];
        [(UIImagePickerController *)self _setValue:v5 forProperty:@"_UIImagePickerControllerCameraOverlayView"];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCameraOverlayView:(UIView *)cameraOverlayView
{
  v6 = cameraOverlayView;
  if ([(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    v4 = [(UIImagePickerController *)self _cameraViewController];
    v5 = v4;
    if (v4)
    {
      [v4 _setCameraOverlayView:v6];
    }

    else
    {
      [(UIImagePickerController *)self _setValue:v6 forProperty:@"_UIImagePickerControllerCameraOverlayView"];
    }
  }
}

- (CGAffineTransform)cameraViewTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  result = [(UIImagePickerController *)self _sourceTypeIsCamera];
  if (result)
  {
    if (*&self->_imagePickerFlags)
    {
      v10 = [(UIImagePickerController *)self _cameraViewController];
      v9 = v10;
      if (v10)
      {
        [v10 _cameraViewTransform];
        goto LABEL_8;
      }
    }

    else
    {
      v8 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerCameraViewTransform"];
      v9 = v8;
      if (v8)
      {
        [v8 CGAffineTransformValue];
LABEL_8:
        *&retstr->a = v11;
        *&retstr->c = v12;
        *&retstr->tx = v13;

        return result;
      }
    }

    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  return result;
}

- (void)setCameraViewTransform:(CGAffineTransform *)cameraViewTransform
{
  if ([(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    if (*&self->_imagePickerFlags)
    {
      v6 = [(UIImagePickerController *)self _cameraViewController];
      v7 = *&cameraViewTransform->c;
      v8 = *&cameraViewTransform->a;
      v9 = v7;
      v10 = *&cameraViewTransform->tx;
      [v6 _setCameraViewTransform:&v8];
    }

    else
    {
      v5 = *&cameraViewTransform->c;
      v8 = *&cameraViewTransform->a;
      v9 = v5;
      v10 = *&cameraViewTransform->tx;
      v6 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:&v8];
      [(UIImagePickerController *)self _setValue:v6 forProperty:@"_UIImagePickerControllerCameraViewTransform"];
    }
  }
}

- (void)takePicture
{
  if ([(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    v3 = [(UIImagePickerController *)self _cameraViewController];
    [v3 _takePicture];
  }
}

- (BOOL)startVideoCapture
{
  v3 = [(UIImagePickerController *)self _sourceTypeIsCamera];
  if (v3)
  {
    v4 = [(UIImagePickerController *)self _cameraViewController];
    v5 = [v4 _startVideoCapture];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)stopVideoCapture
{
  if ([(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    v3 = [(UIImagePickerController *)self _cameraViewController];
    [v3 _stopVideoCapture];
  }
}

- (UIImagePickerControllerCameraDevice)cameraDevice
{
  if (![(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    return 0;
  }

  if (*&self->_imagePickerFlags)
  {
    v3 = [(UIImagePickerController *)self _cameraViewController];
    v4 = [v3 _cameraDevice];
  }

  else
  {
    v3 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerCameraDevice"];
    v4 = [v3 intValue];
  }

  return v4;
}

- (void)setCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice
{
  if (-[UIImagePickerController _sourceTypeIsCamera](self, "_sourceTypeIsCamera") && [objc_opt_class() isCameraDeviceAvailable:cameraDevice])
  {
    if (*&self->_imagePickerFlags)
    {
      v5 = [(UIImagePickerController *)self _cameraViewController];
      [v5 _setCameraDevice:cameraDevice];
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInt:cameraDevice];
      [UIImagePickerController _setValue:"_setValue:forProperty:" forProperty:?];
    }
  }
}

- (UIImagePickerControllerCameraCaptureMode)cameraCaptureMode
{
  if (![(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    return 0;
  }

  if (*&self->_imagePickerFlags)
  {
    v3 = [(UIImagePickerController *)self _cameraViewController];
    v4 = [v3 _cameraCaptureMode];
  }

  else
  {
    v3 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerCameraCaptureMode"];
    v4 = [v3 intValue];
  }

  return v4;
}

- (BOOL)_isCameraCaptureModeValid:(int64_t)a3
{
  mediaTypes = self->_mediaTypes;
  v4 = MediaTypeForCameraCaptureMode(a3);
  LOBYTE(mediaTypes) = [(NSArray *)mediaTypes containsObject:v4];

  return mediaTypes;
}

- (void)setCameraCaptureMode:(UIImagePickerControllerCameraCaptureMode)cameraCaptureMode
{
  if ([(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    if (![(UIImagePickerController *)self _isCameraCaptureModeValid:cameraCaptureMode])
    {
      MediaTypeForCameraCaptureMode(cameraCaptureMode);
      [MEMORY[0x1E696AEC0] stringWithFormat:@"cameraCaptureMode %ld not available because mediaTypes does contain %@", cameraCaptureMode, objc_claimAutoreleasedReturnValue()];
      v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v5);
    }

    if (*&self->_imagePickerFlags)
    {
      v6 = [(UIImagePickerController *)self _cameraViewController];
      [v6 _setCameraCaptureMode:cameraCaptureMode];
    }

    else
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:cameraCaptureMode];
      [UIImagePickerController _setValue:"_setValue:forProperty:" forProperty:?];
    }
  }
}

- (UIImagePickerControllerCameraFlashMode)cameraFlashMode
{
  if (![(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    return 0;
  }

  if (*&self->_imagePickerFlags)
  {
    v3 = [(UIImagePickerController *)self _cameraViewController];
    v4 = [v3 _cameraFlashMode];
  }

  else
  {
    v3 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerCameraFlashMode"];
    v4 = [v3 intValue];
  }

  return v4;
}

- (void)setCameraFlashMode:(UIImagePickerControllerCameraFlashMode)cameraFlashMode
{
  if ([(UIImagePickerController *)self _sourceTypeIsCamera])
  {
    if (*&self->_imagePickerFlags)
    {
      v5 = [(UIImagePickerController *)self _cameraViewController];
      [v5 _setCameraFlashMode:cameraFlashMode];
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInt:cameraFlashMode];
      [UIImagePickerController _setValue:"_setValue:forProperty:" forProperty:?];
    }
  }
}

- (void)_viewControllerPresentationDidInitiate
{
  if ([(UIImagePickerController *)self _shouldDelayPresentation]&& !self->_photoPickerDidStartDelayingPresentation)
  {
    self->_photoPickerDidStartDelayingPresentation = 1;
    self->_photoPickerDidEndDelayingPresentation = 0;
    [(UIViewController *)self _beginDelayingPresentation:&__block_literal_global_141 cancellationHandler:3.0];
    if (!self->_photoPickerIsPreheating)
    {
      self->_photoPickerIsPreheating = 1;
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __65__UIImagePickerController__viewControllerPresentationDidInitiate__block_invoke_2;
      v3[3] = &unk_1E70F3590;
      v3[4] = self;
      [(UIImagePickerController *)self _setupControllersForCurrentSourceTypeWithCompletion:v3];
    }
  }
}

- (void)viewWillUnload
{
  v3 = [(UIViewController *)self parentViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIViewController *)self presentingViewController];

    if (!v5)
    {
      *&self->_imagePickerFlags &= ~1u;
      [(UIImagePickerController *)self _removeAllChildren];
    }
  }

  v6.receiver = self;
  v6.super_class = UIImagePickerController;
  [(UIViewController *)&v6 viewWillUnload];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ((*&self->_imagePickerFlags & 3) == 0)
  {
    *&self->_imagePickerFlags = *&self->_imagePickerFlags & 0xF8 | 1;
    if (!self->_photoPickerIsPreheating)
    {
      v5 = [(UINavigationController *)self viewControllers];
      v6 = [v5 count];

      if (!v6)
      {
        if (self->_photoPickerPreheatedViewController)
        {
          [(UIImagePickerController *)self _handleTopViewControllerReadyForDisplay:?];
          photoPickerPreheatedViewController = self->_photoPickerPreheatedViewController;
          self->_photoPickerPreheatedViewController = 0;
        }

        else
        {
          [(UIImagePickerController *)self _setupControllersForCurrentSourceTypeWithCompletion:?];
        }
      }
    }

    if (([UIApp _viewControllerBasedStatusBarAppearance] & 1) == 0)
    {
      v8 = [(UINavigationController *)self _window];
      v9 = __UIStatusBarManagerForWindow(v8);
      v10 = [v9 statusBarStyle];

      v11 = __UIStatusBarManagerForWindow(0);
      LODWORD(v9) = [v11 isStatusBarHidden];

      if (v9)
      {
        v12 = -1;
      }

      else
      {
        v12 = v10;
      }

      self->_previousStatusBarStyle = v12;
      v13 = [(UINavigationController *)self _window];
      v14 = __UIStatusBarManagerForWindow(v13);
      v15 = [v14 isStatusBarHidden];

      self->_previousStatusBarHidden = v15;
    }
  }

  v16.receiver = self;
  v16.super_class = UIImagePickerController;
  [(UINavigationController *)&v16 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if ([UIApp _viewControllerBasedStatusBarAppearance])
  {
    goto LABEL_9;
  }

  v5 = [(UINavigationController *)self viewControllers];
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v8 = [(UIViewController *)self presentedViewController];
    if (v8)
    {
LABEL_4:

      goto LABEL_5;
    }

    if ([v5 count] >= 2)
    {
      *&self->_imagePickerFlags |= 4u;
      v13 = [(UINavigationController *)self _window];
      v14 = __UIStatusBarManagerForWindow(v13);
      v15 = [v14 statusBarStyle];

      v8 = [v5 lastObject];
      v16 = [v8 _imagePickerStatusBarStyle];
      previousStatusBarStyle = self->_previousStatusBarStyle;
      if (previousStatusBarStyle != -1 && v15 == v16 && v15 != previousStatusBarStyle)
      {
        if (v3)
        {
          [UITransitionView defaultDurationForTransition:2];
          previousStatusBarStyle = self->_previousStatusBarStyle;
        }

        else
        {
          v18 = 0.0;
        }

        [UIApp setStatusBarStyle:previousStatusBarStyle duration:v18];
      }

      goto LABEL_4;
    }
  }

LABEL_5:
  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v11 = [(UIViewController *)self presentedViewController];

    if (!v11)
    {
      v12 = [[UIStatusBarHideAnimationParameters alloc] initWithDefaultParameters];
      [(UIStatusBarHideAnimationParameters *)v12 setHideAnimation:0];
      [UIApp setStatusBarHidden:self->_previousStatusBarHidden animationParameters:v12];
    }
  }

LABEL_9:
  v19.receiver = self;
  v19.super_class = UIImagePickerController;
  [(UINavigationController *)&v19 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self parentViewController];
  if (v5)
  {
  }

  else
  {
    v6 = [(UIViewController *)self presentingViewController];

    if (!v6)
    {
      *&self->_imagePickerFlags &= ~1u;
      [(UIImagePickerController *)self _invalidatePhotoPickerServices];
      [(UIImagePickerController *)self _setPhotoPickerDisplayCompletion:0];
      [(UIImagePickerController *)self _setPhotoPickerPreviewDisplayCompletion:0];
      [(UIImagePickerController *)self setPhotosExtension:0];
      self->_photoPickerIsPreheating = 0;
      photoPickerPreheatedViewController = self->_photoPickerPreheatedViewController;
      self->_photoPickerPreheatedViewController = 0;

      self->_photoPickerDidStartDelayingPresentation = 0;
      self->_photoPickerDidEndDelayingPresentation = 0;
      self->_photoPickerViewControllerIsConnected = 0;
      self->_photoPickerIsReadyForDisplay = 0;
      [(UIImagePickerController *)self _removeAllChildren];
    }
  }

  *&self->_imagePickerFlags &= ~4u;
  v8.receiver = self;
  v8.super_class = UIImagePickerController;
  [(UINavigationController *)&v8 viewDidDisappear:v3];
}

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3
{
  if ([(UIImagePickerController *)self sourceType]!= UIImagePickerControllerSourceTypeCamera)
  {
    return 1;
  }

  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return a3 == 1 || (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  if ([(UIImagePickerController *)self sourceType]!= UIImagePickerControllerSourceTypeCamera)
  {
    return 1;
  }

  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return a3 == 1 || (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (-[UIImagePickerController sourceType](self, "sourceType") == UIImagePickerControllerSourceTypeCamera && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 userInterfaceIdiom], v2, (v3 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    return 2;
  }

  else
  {
    return 30;
  }
}

- (void)_removeAllChildren
{
  v3 = [(UINavigationController *)self topViewController];

  if (v3)
  {
    v4 = [(UIViewController *)self presentedViewController];

    if (v4)
    {
      *&self->_imagePickerFlags |= 2u;
      [(UIViewController *)self dismissViewControllerAnimated:0 completion:0];
      *&self->_imagePickerFlags &= ~2u;
    }

    v6 = [(UINavigationController *)self topViewController];
    [(UINavigationController *)self setViewControllers:MEMORY[0x1E695E0F0]];
    if (objc_opt_respondsToSelector())
    {
      [v6 performSelector:sel__removedAsTopViewController];
    }

    v5 = [(UIViewController *)self view];
    [v5 layoutSubviews];
  }
}

- (void)_createInitialControllerWithCompletion:(id)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  sourceType = self->_sourceType;
  if (sourceType > 1)
  {
    if (sourceType == 1000)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v21 = objc_alloc(NSClassFromString(&cfstr_Pluiimageviewc.isa));
      image = self->_image;
      x = self->_cropRect.origin.x;
      y = self->_cropRect.origin.y;
      width = self->_cropRect.size.width;
      height = self->_cropRect.size.height;
      if (isKindOfClass)
      {
        v27 = [v21 initWithImageData:image cropRect:{x, y, width, height}];
      }

      else
      {
        v27 = [v21 initWithUIImage:image cropRect:{x, y, width, height}];
      }

      v9 = v27;
      [(UIViewController *)v27 _setImagePickerMediaTypes:self->_mediaTypes];
      goto LABEL_18;
    }

    if (sourceType != 2)
    {
LABEL_8:
      v9 = objc_alloc_init(_UIImagePickerPlaceholderViewController);
      v10 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerHidesPlaceholderNavigationBar"];
      -[_UIImagePickerPlaceholderViewController setHidesPlaceholderNavigationBar:](v9, "setHidesPlaceholderNavigationBar:", [v10 BOOLValue]);

      v11 = +[UIColor systemBackgroundColor];
      v12 = [(UIViewController *)v9 view];
      [v12 setBackgroundColor:v11];

LABEL_18:
      v4[2](v4, v9, 0);
LABEL_19:

      goto LABEL_20;
    }

    v8 = @"PUUIMomentsGridViewController";
LABEL_10:
    v9 = objc_alloc_init(_UIImagePickerPlaceholderViewController);
    v13 = [(UIImagePickerController *)self _valueForProperty:@"_UIImagePickerControllerHidesPlaceholderNavigationBar"];
    -[_UIImagePickerPlaceholderViewController setHidesPlaceholderNavigationBar:](v9, "setHidesPlaceholderNavigationBar:", [v13 BOOLValue]);

    v14 = +[UIColor systemBackgroundColor];
    v15 = [(UIViewController *)v9 view];
    [v15 setBackgroundColor:v14];

    v4[2](v4, v9, 1);
    v31 = *MEMORY[0x1E696A2E0];
    v32[0] = @"com.apple.mobileslideshow.photo-picker";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v30 = 0;
    v17 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v16 error:&v30];
    v18 = v30;
    if ([v17 count])
    {
      v19 = [v17 firstObject];
      [(UIImagePickerController *)self setPhotosExtension:v19];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __66__UIImagePickerController__createInitialControllerWithCompletion___block_invoke;
      v28[3] = &unk_1E7102738;
      v29 = v4;
      [(UIImagePickerController *)self _handleMatchingExtension:v19 viewControllerClassName:v8 completion:v28];
    }

    else
    {
      NSLog(&cfstr_Uiimagepickerc_62.isa, v18);
    }

    goto LABEL_19;
  }

  if (!sourceType)
  {
    v8 = @"PUUIAlbumListViewController";
    goto LABEL_10;
  }

  if (sourceType != 1)
  {
    goto LABEL_8;
  }

  v6 = [(UIImagePickerController *)self _properties];
  v7 = [objc_alloc(NSClassFromString(&cfstr_Camimagepicker.isa)) initWithInitialImagePickerProperties:v6];
  [(UIViewController *)v7 _setImagePickerMediaTypes:self->_mediaTypes];
  v4[2](v4, v7, 0);

LABEL_20:
}

- (void)_handleMatchingExtension:(id)a3 viewControllerClassName:(id)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIImagePickerController *)self _propertiesForPhotoPickerExtension];
  v12 = [objc_alloc(-[UIImagePickerController photoPickerRequestOptionsClass](self "photoPickerRequestOptionsClass"))];
  v13 = objc_alloc(MEMORY[0x1E696ACA0]);
  v14 = [*MEMORY[0x1E6982E48] identifier];
  v15 = [v13 initWithItem:v12 typeIdentifier:v14];

  v16 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  v25[0] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v16 setAttachments:v17];

  objc_initWeak(&location, self);
  v24 = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__UIImagePickerController__handleMatchingExtension_viewControllerClassName_completion___block_invoke;
  v20[3] = &unk_1E7102760;
  objc_copyWeak(&v22, &location);
  v19 = v10;
  v21 = v19;
  [v8 instantiateViewControllerWithInputItems:v18 connectionHandler:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __87__UIImagePickerController__handleMatchingExtension_viewControllerClassName_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleInstantiatedRemoteViewController:v8 request:v9 error:v7 completion:*(a1 + 32)];
}

- (void)_handleInstantiatedRemoteViewController:(id)a3 request:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = v11;
    v15 = [(UIImagePickerController *)self photosExtension];
    v16 = [v15 _extensionContextForUUID:v14];

    [v16 performSelector:sel_setDelegate_ withObject:self];
    [v16 performSelector:sel_setRequestIdentifier_ withObject:v14];
    [v10 performSelector:sel_setHostExtensionContext_ withObject:v16];
    if (objc_opt_respondsToSelector())
    {
      [v10 _setImagePickerMediaTypes:self->_mediaTypes];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 performSelector:sel_setDelegate_ withObject:self];
    }

    v17 = [(UIViewController *)self view];
    [v17 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [v10 view];
    [v26 setFrame:{v19, v21, v23, v25}];
    if (dyld_program_sdk_at_least())
    {
      objc_initWeak(location, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __92__UIImagePickerController__handleInstantiatedRemoteViewController_request_error_completion___block_invoke_3;
      block[3] = &unk_1E70F7558;
      v35 = v13;
      v34 = v10;
      objc_copyWeak(&v36, location);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v36);

      objc_destroyWeak(location);
    }

    else
    {
      v32 = v11;
      v30 = [(UIViewController *)self traitCollection];
      [v10 setOverrideTraitCollection:?];
      [(UIViewController *)self _contentOverlayInsets];
      [v10 _setContentOverlayInsets:?];
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __92__UIImagePickerController__handleInstantiatedRemoteViewController_request_error_completion___block_invoke;
      aBlock[3] = &unk_1E7102788;
      v38 = v12;
      v31 = v13;
      v40 = v13;
      v27 = v10;
      v39 = v27;
      objc_copyWeak(&v41, location);
      v28 = _Block_copy(aBlock);
      v29 = _Block_copy(v28);
      [v27 performSelector:sel_performTraitCollectionUpdateWithCompletion_ withObject:v29];

      objc_destroyWeak(&v41);
      objc_destroyWeak(location);

      v13 = v31;
      v11 = v32;
    }
  }

  if (v12)
  {
    NSLog(&cfstr_Uiimagepickerc_64.isa, v12);
  }
}

void __92__UIImagePickerController__handleInstantiatedRemoteViewController_request_error_completion___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 BOOLValue] & 1) == 0)
  {
    NSLog(&cfstr_Uiimagepickerc_63.isa, *(a1 + 32));
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__UIImagePickerController__handleInstantiatedRemoteViewController_request_error_completion___block_invoke_2;
  block[3] = &unk_1E70F7558;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  objc_copyWeak(&v6, (a1 + 56));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
}

void __92__UIImagePickerController__handleInstantiatedRemoteViewController_request_error_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    WeakRetained[1572] = 1;
    v3 = WeakRetained;
    [WeakRetained _handleEndingPhotoPickerPresentationDelay];
    WeakRetained = v3;
  }
}

void __92__UIImagePickerController__handleInstantiatedRemoteViewController_request_error_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    WeakRetained[1572] = 1;
    v3 = WeakRetained;
    [WeakRetained _handleEndingPhotoPickerPresentationDelay];
    WeakRetained = v3;
  }
}

- (id)_propertiesForPhotoPickerExtension
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [(UIImagePickerController *)self _properties];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(UIImagePickerController *)self mediaTypes];
  [v5 setObject:v6 forKey:@"_UIImagePickerControllerMediaTypes"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIImagePickerController _allowsMultipleSelection](self, "_allowsMultipleSelection")}];
  [v5 setObject:v7 forKey:@"_UIImagePickerControllerAllowMutipleSelection"];

  [v5 removeObjectForKey:@"_UIImagePickerControllerCameraViewTransform"];
  v8 = [(UIImagePickerController *)self _imagePickerSavingOptions];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [v5 setObject:v9 forKey:@"_UIImagePickerSavingOptions"];

  v10 = [(UIImagePickerController *)self sourceType];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  [v5 setObject:v11 forKey:@"_UIImagePickerControllerSourceType"];

  v12 = NSTemporaryDirectory();
  [v5 setObject:v12 forKey:@"_UIImagePickerControllerTemporaryDirectoryUrl"];

  v13 = [(UIViewController *)self modalPresentationStyle];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3010000000;
  v30 = "";
  v31 = *MEMORY[0x1E695F060];
  objc_initWeak(&location, self);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __61__UIImagePickerController__propertiesForPhotoPickerExtension__block_invoke;
  v23 = &unk_1E71027B0;
  v25[1] = v13;
  v24 = &v27;
  objc_copyWeak(v25, &location);
  v14 = _Block_copy(&v20);
  if (pthread_main_np() == 1)
  {
    v14[2](v14);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v14);
  }

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:{v28[4], v20, v21, v22, v23, v24}];
  [v5 setObject:v15 forKey:@"_UIImagePickerControllerViewWidth"];

  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v28[5]];
  [v5 setObject:v16 forKey:@"_UIImagePickerControllerViewHeight"];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  [v5 setObject:v17 forKey:@"_UIImagePickerControllerModalPresentationStyle"];

  [v5 removeObjectForKey:@"_UIImagePickerControllerCameraOverlayView"];
  v18 = [v5 copy];

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v27, 8);

  return v18;
}

void __61__UIImagePickerController__propertiesForPhotoPickerExtension__block_invoke(uint64_t a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1 && *(a1 + 48) == 7)
  {
    v4 = 0x407E000000000000;
    v5 = 0x4074000000000000;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained view];
    [v7 frame];
    v5 = v8;
    v4 = v9;
  }

  v10 = *(*(a1 + 32) + 8);
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
}

- (Class)photoPickerRequestOptionsClass
{
  photoPickerRequestOptionsClass = self->_photoPickerRequestOptionsClass;
  if (!photoPickerRequestOptionsClass)
  {
    photoPickerRequestOptionsClass = NSClassFromString(&cfstr_Puphotopickerr.isa);
    self->_photoPickerRequestOptionsClass = photoPickerRequestOptionsClass;
  }

  return photoPickerRequestOptionsClass;
}

- (id)_photoPickerDisplayCompletion
{
  v2 = _Block_copy(self->_photoPickerDisplayCompletion);

  return v2;
}

- (void)_setPhotoPickerDisplayCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  photoPickerDisplayCompletion = self->_photoPickerDisplayCompletion;
  self->_photoPickerDisplayCompletion = v4;
}

- (id)_photoPickerPreviewDisplayCompletion
{
  v2 = _Block_copy(self->_photoPickerPreviewDisplayCompletion);

  return v2;
}

- (void)_setPhotoPickerPreviewDisplayCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  photoPickerPreviewDisplayCompletion = self->_photoPickerPreviewDisplayCompletion;
  self->_photoPickerPreviewDisplayCompletion = v4;
}

- (void)_invalidatePhotoPickerServices
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(UINavigationController *)self viewControllers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v7 performSelector:sel_invalidate];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_testPerformPreviewOfFirstPhoto
{
  v2 = [(UINavigationController *)self topViewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel_performPhotoPickerPreviewOfFirstAsset];
  }
}

- (void)cancelPhotoPicker
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__UIImagePickerController_cancelPhotoPicker__block_invoke;
  v2[3] = &unk_1E70F5A28;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __44__UIImagePickerController_cancelPhotoPicker__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _imagePickerDidCancel];
}

- (void)dismissCurrentViewControllerFromPhotoPickerAnimated:(id)a3
{
  v4 = a3;
  v5 = [v4 BOOLValue];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__UIImagePickerController_dismissCurrentViewControllerFromPhotoPickerAnimated___block_invoke;
  aBlock[3] = &unk_1E7101C60;
  objc_copyWeak(&v10, &location);
  v11 = v5;
  v6 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v6[2](v6);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__UIImagePickerController_dismissCurrentViewControllerFromPhotoPickerAnimated___block_invoke_2;
    v7[3] = &unk_1E70F0F78;
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __79__UIImagePickerController_dismissCurrentViewControllerFromPhotoPickerAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained popViewControllerAnimated:*(a1 + 40)];
}

- (void)photoPickerIsReadyForDisplay
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__UIImagePickerController_photoPickerIsReadyForDisplay__block_invoke;
  v2[3] = &unk_1E70F5A28;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __55__UIImagePickerController_photoPickerIsReadyForDisplay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1571] = 1;
    v2 = WeakRetained;
    [WeakRetained _handleEndingPhotoPickerPresentationDelay];
    WeakRetained = v2;
  }
}

- (void)didDisplayPhotoPickerSourceType:(id)a3
{
  v4 = [a3 integerValue];
  v5 = [(UIImagePickerController *)self _photoPickerDisplayCompletion];

  objc_initWeak(&location, self);
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__UIImagePickerController_didDisplayPhotoPickerSourceType___block_invoke;
    block[3] = &unk_1E70F8DC8;
    objc_copyWeak(v10, &location);
    v10[1] = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = v10;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__UIImagePickerController_didDisplayPhotoPickerSourceType___block_invoke_2;
    v7[3] = &unk_1E70F5A28;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v7);
    v6 = &v8;
  }

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __59__UIImagePickerController_didDisplayPhotoPickerSourceType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _photoPickerDisplayCompletion];

  if (v4)
  {
    v4[2](v4, *(a1 + 40));
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _handleEndingPhotoPickerPresentationDelay];
}

void __59__UIImagePickerController_didDisplayPhotoPickerSourceType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEndingPhotoPickerPresentationDelay];
}

- (BOOL)_stagedPhotoPickerIsReadyForDisplay
{
  if (qword_1ED49AC30 != -1)
  {
    dispatch_once(&qword_1ED49AC30, &__block_literal_global_427_0);
  }

  return byte_1ED49AC1A != 1 || self->_photoPickerIsReadyForDisplay;
}

uint64_t __62__UIImagePickerController__stagedPhotoPickerIsReadyForDisplay__block_invoke()
{
  result = [NSClassFromString(&cfstr_Puphotopickere.isa) instancesRespondToSelector:sel_photoPickerIsReadyForDisplay];
  byte_1ED49AC1A = result;
  return result;
}

- (void)_handleEndingPhotoPickerPresentationDelay
{
  if (self->_photoPickerDidStartDelayingPresentation && !self->_photoPickerDidEndDelayingPresentation && self->_photoPickerViewControllerIsConnected)
  {
    if ([(UIImagePickerController *)self _stagedPhotoPickerIsReadyForDisplay])
    {
      [(UIViewController *)self _endDelayingPresentation];
      self->_photoPickerDidEndDelayingPresentation = 1;
    }
  }
}

- (void)didDisplayPhotoPickerPreview
{
  v3 = [(UIImagePickerController *)self _photoPickerPreviewDisplayCompletion];

  if (v3)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__UIImagePickerController_didDisplayPhotoPickerPreview__block_invoke;
    v4[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __55__UIImagePickerController_didDisplayPhotoPickerPreview__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _photoPickerPreviewDisplayCompletion];

  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
    v2 = v3;
  }
}

- (void)didSelectMediaWithInfoDictionary:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__UIImagePickerController_didSelectMediaWithInfoDictionary___block_invoke;
  block[3] = &unk_1E70F2F80;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__UIImagePickerController_didSelectMediaWithInfoDictionary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _imagePickerDidCompleteWithInfo:*(a1 + 32)];
}

- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__UIImagePickerController_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke;
  block[3] = &unk_1E70F2F80;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __75__UIImagePickerController_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _imagePickerDidCompleteWithInfoArray:*(a1 + 32)];
}

- (void)_setupControllersForCurrentSourceTypeWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__UIImagePickerController__setupControllersForCurrentSourceTypeWithCompletion___block_invoke;
  v6[3] = &unk_1E71027D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UIImagePickerController *)self _createInitialControllerWithCompletion:v6];
}

void __79__UIImagePickerController__setupControllersForCurrentSourceTypeWithCompletion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  if (v10)
  {
    v6 = [*(a1 + 32) _existingView];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3 == 0;
    }

    if (v8)
    {
      objc_storeStrong(v7 + 197, a2);
    }

    else
    {
      [v7 _handleTopViewControllerReadyForDisplay:v10];
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (void)_handleTopViewControllerReadyForDisplay:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIImagePickerController *)self _removeAllChildren];
  -[UINavigationController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [v4 _displaysFullScreen], 0);
  v6[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  [(UINavigationController *)self setViewControllers:v5 animated:0];
}

- (void)_setupControllersForCurrentMediaTypes
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(UINavigationController *)self viewControllers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) _setImagePickerMediaTypes:self->_mediaTypes];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(UIViewController *)self presentedViewController];
  [v8 _setImagePickerMediaTypes:self->_mediaTypes];
}

- (int64_t)_preferredModalPresentationStyle
{
  if ([(UIImagePickerController *)self sourceType]== UIImagePickerControllerSourceTypeCamera)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UIImagePickerController;
  return [(UIViewController *)&v4 _preferredModalPresentationStyle];
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  v2 = [(UINavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_autoDismiss
{
  v2 = [(UIViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_imagePickerDidCancel
{
  v3 = [(UINavigationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 imagePickerControllerDidCancel:self];
  }

  else
  {
    [(UIImagePickerController *)self _autoDismiss];
  }
}

- (void)_imagePickerDidCompleteWithInfo:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [(UIImagePickerController *)self _imagePickerDidCancel];
    goto LABEL_16;
  }

  v4 = [(UINavigationController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [(UIImagePickerController *)self _autoDismiss];
      goto LABEL_15;
    }

    v5 = [v10 objectForKey:@"UIImagePickerControllerMediaType"];
    v6 = [*MEMORY[0x1E6982E30] identifier];
    v7 = [v5 isEqualToString:v6];

    if (!v7)
    {
      [(UIImagePickerController *)self _imagePickerDidCancel];

      goto LABEL_15;
    }

    if ([(UIImagePickerController *)self _allowsImageEditing])
    {
      v8 = [v10 objectForKey:@"UIImagePickerControllerEditedImage"];
      v9 = [v10 mutableCopy];
      [v9 removeObjectForKey:@"UIImagePickerControllerMediaType"];
      [v9 removeObjectForKey:@"UIImagePickerControllerEditedImage"];
      if (v8)
      {
LABEL_9:
        [v4 imagePickerController:self didFinishPickingImage:v8 editingInfo:v9];

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
      v8 = [v10 objectForKey:@"UIImagePickerControllerOriginalImage"];
      v9 = 0;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    [(UIImagePickerController *)self _imagePickerDidCancel];
    goto LABEL_14;
  }

  [v4 imagePickerController:self didFinishPickingMediaWithInfo:v10];
LABEL_15:

LABEL_16:
}

- (void)_imagePickerDidCompleteWithInfoArray:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [v6 objectAtIndex:0];
    [(UIImagePickerController *)self _imagePickerDidCompleteWithInfo:v4];
  }

  if (v6)
  {
    v5 = [(UINavigationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 performSelector:sel_imagePickerController_didFinishPickingMultipleMediaWithInfo_ withObject:self withObject:v6];
    }

    else
    {
      [(UIImagePickerController *)self _autoDismiss];
    }
  }

  else
  {
    [(UIImagePickerController *)self _imagePickerDidCancel];
  }
}

@end