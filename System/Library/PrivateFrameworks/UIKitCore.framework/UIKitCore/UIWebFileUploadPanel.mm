@interface UIWebFileUploadPanel
- (UIWebFileUploadPanel)initWithResultListener:(id)listener configuration:(id)configuration documentView:(id)view;
- (id)_UTIsForMIMETypes;
- (id)_cameraButtonLabel;
- (id)_displayStringForPhotos:(unint64_t)photos videos:(unint64_t)videos;
- (id)_documentPickerMenuMediaTypes;
- (id)_mediaTypesForPickerSourceType:(int64_t)type;
- (id)_photoPickerWithSourceType:(int64_t)type;
- (void)_adjustMediaCaptureType;
- (void)_cancel;
- (void)_chooseFilename:(id)filename displayString:(id)string iconImage:(id)image;
- (void)_chooseFilenames:(id)filenames displayString:(id)string iconImage:(id)image;
- (void)_dismissDisplayAnimated:(BOOL)animated;
- (void)_dispatchDidDismiss;
- (void)_presentForCurrentInterfaceIdiom:(id)idiom;
- (void)_presentFullscreenViewController:(id)controller animated:(BOOL)animated;
- (void)_presentPopoverWithContentViewController:(id)controller animated:(BOOL)animated;
- (void)_processMediaInfoDictionaries:(id)dictionaries atIndex:(unint64_t)index processedResults:(id)results processedImageCount:(unint64_t)count processedVideoCount:(unint64_t)videoCount successBlock:(id)block failureBlock:(id)failureBlock;
- (void)_showDocumentPickerMenu;
- (void)_showPhotoPickerWithSourceType:(int64_t)type;
- (void)_uploadItemForImageData:(id)data imageName:(id)name successBlock:(id)block failureBlock:(id)failureBlock;
- (void)_uploadItemForJPEGRepresentationOfImage:(id)image successBlock:(id)block failureBlock:(id)failureBlock;
- (void)_uploadItemFromMediaInfo:(id)info successBlock:(id)block failureBlock:(id)failureBlock;
- (void)dealloc;
- (void)dismiss;
- (void)documentMenu:(id)menu didPickDocumentPicker:(id)picker;
- (void)documentMenuWasCancelled:(id)cancelled;
- (void)documentPicker:(id)picker didPickDocumentAtURL:(id)l;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerController:(id)controller didFinishPickingMultipleMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)present;
@end

@implementation UIWebFileUploadPanel

- (UIWebFileUploadPanel)initWithResultListener:(id)listener configuration:(id)configuration documentView:(id)view
{
  v10.receiver = self;
  v10.super_class = UIWebFileUploadPanel;
  v8 = [(UIViewController *)&v10 init];
  if (v8)
  {
    -[UIWebFileUploadPanel setMimeTypes:](v8, "setMimeTypes:", [configuration objectForKey:*MEMORY[0x1E69E3018]]);
    [(UIWebFileUploadPanel *)v8 setDocumentView:view];
    [(UIWebFileUploadPanel *)v8 setResultListener:listener];
    -[UIWebFileUploadPanel setAllowMultipleFiles:](v8, "setAllowMultipleFiles:", [configuration objectForKey:*MEMORY[0x1E69E3008]] != 0);
    [(UIWebFileUploadPanel *)v8 setIsUsingCamera:0];
    -[UIWebFileUploadPanel setMediaCaptureType:](v8, "setMediaCaptureType:", [objc_msgSend(configuration objectForKey:{*MEMORY[0x1E69E3010]), "integerValue"}]);
  }

  return v8;
}

- (void)dealloc
{
  [(UIWebFileUploadPanel *)self setMimeTypes:0];
  [(UIWebFileUploadPanel *)self setDocumentView:0];
  [(UIWebFileUploadPanel *)self setResultListener:0];
  [(UIDocumentMenuViewController *)self->_documentMenuController setDelegate:0];

  [(UINavigationController *)self->_imagePicker setDelegate:0];
  self->_presentationViewController = 0;
  [(UIPopoverController *)self->_presentationPopover setDelegate:0];

  v3.receiver = self;
  v3.super_class = UIWebFileUploadPanel;
  [(UIViewController *)&v3 dealloc];
}

- (void)_dispatchDidDismiss
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(UIWebFileUploadPanelDelegate *)delegate fileUploadPanelDidDismiss:self];
  }
}

- (void)_cancel
{
  WebThreadLock();
  [(WebOpenPanelResultListener *)self->_resultListener cancel];

  [(UIWebFileUploadPanel *)self _dispatchDidDismiss];
}

- (void)_chooseFilename:(id)filename displayString:(id)string iconImage:(id)image
{
  WebThreadLock();
  -[WebOpenPanelResultListener chooseFilename:displayString:iconImage:](self->_resultListener, "chooseFilename:displayString:iconImage:", filename, string, [image CGImage]);

  [(UIWebFileUploadPanel *)self _dispatchDidDismiss];
}

- (void)_chooseFilenames:(id)filenames displayString:(id)string iconImage:(id)image
{
  WebThreadLock();
  -[WebOpenPanelResultListener chooseFilenames:displayString:iconImage:](self->_resultListener, "chooseFilenames:displayString:iconImage:", filenames, string, [image CGImage]);

  [(UIWebFileUploadPanel *)self _dispatchDidDismiss];
}

- (void)_adjustMediaCaptureType
{
  if (![UIImagePickerController isCameraDeviceAvailable:1])
  {
    v3 = [UIImagePickerController isCameraDeviceAvailable:0];
    v4 = 0;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (![UIImagePickerController isCameraDeviceAvailable:1])
  {
    self->_mediaCaptureType = 2;
  }

  if (![UIImagePickerController isCameraDeviceAvailable:0])
  {
    v4 = 1;
LABEL_7:
    self->_mediaCaptureType = v4;
  }
}

- (id)_UTIsForMIMETypes
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mimeTypes = [(UIWebFileUploadPanel *)self mimeTypes];
  v5 = [(NSArray *)mimeTypes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E6982EE8];
    v9 = *MEMORY[0x1E6982E30];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(mimeTypes);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(UIWebFileUploadPanel *)self _string:v11 hasPrefixCaseInsensitive:@"image/"];
        v13 = v9;
        if (!v12)
        {
          v14 = [(UIWebFileUploadPanel *)self _string:v11 hasPrefixCaseInsensitive:@"video/"];
          v13 = v8;
          if (!v14)
          {
            continue;
          }
        }

        [v3 addObject:{objc_msgSend(v13, "identifier")}];
      }

      v6 = [(NSArray *)mimeTypes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return [v3 allObjects];
}

- (id)_mediaTypesForPickerSourceType:(int64_t)type
{
  _UTIsForMIMETypes = [(UIWebFileUploadPanel *)self _UTIsForMIMETypes];
  if ([_UTIsForMIMETypes count])
  {
    return _UTIsForMIMETypes;
  }

  return [UIImagePickerController availableMediaTypesForSourceType:type];
}

- (id)_documentPickerMenuMediaTypes
{
  _UTIsForMIMETypes = [(UIWebFileUploadPanel *)self _UTIsForMIMETypes];
  if ([_UTIsForMIMETypes count])
  {
    return _UTIsForMIMETypes;
  }

  else
  {
    return &unk_1EFE2BEA8;
  }
}

- (id)_photoPickerWithSourceType:(int64_t)type
{
  v5 = objc_alloc_init(UIImagePickerController);
  [(UIImagePickerController *)v5 setSourceType:type];
  [(UIImagePickerController *)v5 setAllowsEditing:0];
  [(UINavigationController *)v5 setDelegate:self];
  [(UIViewController *)v5 setModalPresentationStyle:0];
  [(UIImagePickerController *)v5 _setAllowsMultipleSelection:self->_allowMultipleFiles];
  [(UIImagePickerController *)v5 setMediaTypes:[(UIWebFileUploadPanel *)self _mediaTypesForPickerSourceType:type]];
  mediaCaptureType = self->_mediaCaptureType;
  if (mediaCaptureType)
  {
    [(UIImagePickerController *)v5 setCameraDevice:mediaCaptureType == 1];
  }

  return v5;
}

- (void)_showPhotoPickerWithSourceType:(int64_t)type
{
  self->_imagePicker = [(UIWebFileUploadPanel *)self _photoPickerWithSourceType:?];
  IsSmallScreen = UIWebCurrentUserInterfaceIdiomIsSmallScreen();
  imagePicker = self->_imagePicker;
  if (type == 1 || IsSmallScreen)
  {

    [(UIWebFileUploadPanel *)self _presentFullscreenViewController:imagePicker animated:1];
  }

  else
  {

    [(UIWebFileUploadPanel *)self _presentPopoverWithContentViewController:imagePicker animated:1];
  }
}

- (id)_cameraButtonLabel
{
  if (![UIImagePickerController isSourceTypeAvailable:1])
  {
    return 0;
  }

  v3 = [(UIWebFileUploadPanel *)self _mediaTypesForPickerSourceType:1];
  v4 = [v3 containsObject:{objc_msgSend(*MEMORY[0x1E6982E30], "identifier")}];
  v5 = [v3 containsObject:{objc_msgSend(*MEMORY[0x1E6982EE8], "identifier")}];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v5)
    {
      v8 = @"Take Video";
    }

    else
    {
      v8 = @"Take Photo";
    }
  }

  else
  {
    v8 = @"Take Photo or Video";
  }

  return _UINSLocalizedStringWithDefaultValue(v8, v8);
}

- (void)_showDocumentPickerMenu
{
  v3 = [[UIDocumentMenuViewController alloc] _initIgnoringApplicationEntitlementForImportOfTypes:[(UIWebFileUploadPanel *)self _documentPickerMenuMediaTypes]];
  self->_documentMenuController = v3;
  [(UIDocumentMenuViewController *)v3 setDelegate:self];
  v4 = _UINSLocalizedStringWithDefaultValue(@"Photo Library", @"Photo Library");
  documentMenuController = self->_documentMenuController;
  v6 = [UIImage systemImageNamed:@"rectangle.on.rectangle"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__UIWebFileUploadPanel__showDocumentPickerMenu__block_invoke;
  v12[3] = &unk_1E70F5CA0;
  v12[4] = self;
  [(UIDocumentMenuViewController *)documentMenuController addOptionWithTitle:v4 image:v6 order:0 handler:v12];
  if ([UIImagePickerController isSourceTypeAvailable:1])
  {
    _cameraButtonLabel = [(UIWebFileUploadPanel *)self _cameraButtonLabel];
    if (_cameraButtonLabel)
    {
      v8 = _cameraButtonLabel;
      v9 = self->_documentMenuController;
      v10 = [UIImage systemImageNamed:@"camera.fill"];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __47__UIWebFileUploadPanel__showDocumentPickerMenu__block_invoke_2;
      v11[3] = &unk_1E70F5CA0;
      v11[4] = self;
      [(UIDocumentMenuViewController *)v9 addOptionWithTitle:v8 image:v10 order:0 handler:v11];
    }
  }

  [(UIWebFileUploadPanel *)self _presentForCurrentInterfaceIdiom:self->_documentMenuController];
}

- (void)_presentForCurrentInterfaceIdiom:(id)idiom
{
  if (UIWebCurrentUserInterfaceIdiomIsSmallScreen())
  {

    [(UIWebFileUploadPanel *)self _presentFullscreenViewController:idiom animated:1];
  }

  else
  {

    [(UIWebFileUploadPanel *)self _presentPopoverWithContentViewController:idiom animated:1];
  }
}

- (void)_presentPopoverWithContentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  [(UIWebFileUploadPanel *)self _dismissDisplayAnimated:animated];
  v7 = [[UIPopoverController alloc] initWithContentViewController:controller];
  self->_presentationPopover = v7;
  [(UIPopoverController *)v7 setDelegate:self];
  presentationPopover = self->_presentationPopover;
  v15.origin.x = self->_interactionPoint.x;
  v15.origin.y = self->_interactionPoint.y;
  v15.size.width = 1.0;
  v15.size.height = 1.0;
  v16 = CGRectIntegral(v15);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  documentView = [(UIWebFileUploadPanel *)self documentView];

  [(UIPopoverController *)presentationPopover presentPopoverFromRect:documentView inView:15 permittedArrowDirections:animatedCopy animated:x, y, width, height];
}

- (void)_presentFullscreenViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  [(UIWebFileUploadPanel *)self _dismissDisplayAnimated:animated];
  v7 = [UIViewController _viewControllerForFullScreenPresentationFromView:[(UIWebFileUploadPanel *)self documentView]];
  self->_presentationViewController = v7;

  [(UIViewController *)v7 presentViewController:controller animated:animatedCopy completion:0];
}

- (void)present
{
  self->_interactionElement = [(UIWebDocumentView *)[(UIWebFileUploadPanel *)self documentView] interactionElement];
  [(UIWebDocumentView *)[(UIWebFileUploadPanel *)self documentView] interactionLocation];
  self->_interactionPoint.x = v3;
  self->_interactionPoint.y = v4;
  if ([(UIWebFileUploadPanel *)self _shouldMediaCaptureOpenMediaDevice])
  {
    [(UIWebFileUploadPanel *)self _adjustMediaCaptureType];
    self->_isUsingCamera = 1;

    [(UIWebFileUploadPanel *)self _showPhotoPickerWithSourceType:1];
  }

  else
  {

    [(UIWebFileUploadPanel *)self _showDocumentPickerMenu];
  }
}

- (void)dismiss
{
  [(UIWebFileUploadPanel *)self _dismissDisplayAnimated:0];

  [(UIWebFileUploadPanel *)self _cancel];
}

- (void)documentMenu:(id)menu didPickDocumentPicker:(id)picker
{
  [picker setDelegate:self];
  [picker setModalPresentationStyle:0];

  [(UIWebFileUploadPanel *)self _presentForCurrentInterfaceIdiom:picker];
}

- (void)documentMenuWasCancelled:(id)cancelled
{
  [(UIWebFileUploadPanel *)self _dismissDisplayAnimated:1];

  [(UIWebFileUploadPanel *)self _cancel];
}

- (void)documentPicker:(id)picker didPickDocumentAtURL:(id)l
{
  [(UIWebFileUploadPanel *)self _dismissDisplayAnimated:1];
  path = [l path];
  lastPathComponent = [l lastPathComponent];
  pathExtension = [l pathExtension];
  if ([pathExtension length])
  {
    v9 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
    if ([v9 conformsToType:*MEMORY[0x1E6982E30]])
    {
      v10 = iconForImageFile(l);
    }

    else if ([v9 conformsToType:*MEMORY[0x1E6982EE8]])
    {
      v10 = iconForVideoFile(l);
    }

    else
    {
      v10 = fallbackIconForFile(l);
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [(UIWebFileUploadPanel *)self _chooseFilename:path displayString:lastPathComponent iconImage:v11];
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  [(UIWebFileUploadPanel *)self _dismissDisplayAnimated:1];

  [(UIWebFileUploadPanel *)self _cancel];
}

- (void)_dismissDisplayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentationPopover = self->_presentationPopover;
  if (presentationPopover)
  {
    [(UIPopoverController *)presentationPopover dismissPopoverAnimated:animated];
    [(UIPopoverController *)self->_presentationPopover setDelegate:0];

    self->_presentationPopover = 0;
  }

  presentationViewController = self->_presentationViewController;
  if (presentationViewController)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__UIWebFileUploadPanel__dismissDisplayAnimated___block_invoke;
    v7[3] = &unk_1E70F5CA0;
    v7[4] = self;
    [(UIViewController *)presentationViewController dismissViewControllerAnimated:animatedCopy completion:v7];
  }
}

- (id)_displayStringForPhotos:(unint64_t)photos videos:(unint64_t)videos
{
  if (!(videos | photos))
  {
    return 0;
  }

  videosCopy = videos;
  photosCopy = photos;
  v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v6 setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "currentLocale")}];
  v7 = 1;
  [v6 setGeneratesDecimalNumbers:1];
  [v6 setNumberStyle:1];
  if (photosCopy)
  {
    if (photosCopy == 1)
    {
      v8 = _UINSLocalizedStringWithDefaultValue(@"1 Photo", @"1 Photo");
    }

    else
    {
      v10 = [v6 stringFromNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", photosCopy)}];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:_UINSLocalizedStringWithDefaultValue(@"%@ Photos", @"%@ Photos", v10];
    }

    photosCopy = v8;
    v7 = 2;
  }

  if (videosCopy == 1)
  {
    v11 = _UINSLocalizedStringWithDefaultValue(@"1 Video", @"1 Video");
LABEL_13:
    videosCopy = v11;
    goto LABEL_14;
  }

  if (videosCopy)
  {
    v12 = [v6 stringFromNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", videosCopy)}];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:_UINSLocalizedStringWithDefaultValue(@"%@ Videos", @"%@ Videos", v12];
    goto LABEL_13;
  }

  --v7;
LABEL_14:
  if (v7 == 1)
  {
    if (photosCopy)
    {
      videosCopy = photosCopy;
    }

    else
    {
      videosCopy = videosCopy;
    }
  }

  else if (v7 == 2)
  {
    videosCopy = [MEMORY[0x1E696AEC0] stringWithFormat:_UINSLocalizedStringWithDefaultValue(@"%@ and %@", @"%@ and %@", photosCopy, videosCopy];
  }

  else
  {
    videosCopy = 0;
  }

  return [videosCopy lowercaseString];
}

- (void)_processMediaInfoDictionaries:(id)dictionaries atIndex:(unint64_t)index processedResults:(id)results processedImageCount:(unint64_t)count processedVideoCount:(unint64_t)videoCount successBlock:(id)block failureBlock:(id)failureBlock
{
  if ([dictionaries count] == index)
  {
    v16 = [(UIWebFileUploadPanel *)self _displayStringForPhotos:count videos:videoCount];
    v17 = *(block + 2);

    v17(block, results, v16);
  }

  else
  {
    v18 = [dictionaries objectAtIndex:index];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __145__UIWebFileUploadPanel__processMediaInfoDictionaries_atIndex_processedResults_processedImageCount_processedVideoCount_successBlock_failureBlock___block_invoke;
    v19[3] = &unk_1E71091E0;
    v19[4] = results;
    v19[5] = self;
    v19[10] = count;
    v19[11] = index + 1;
    v19[6] = dictionaries;
    v19[7] = block;
    v19[8] = failureBlock;
    v19[9] = videoCount;
    [(UIWebFileUploadPanel *)self _uploadItemFromMediaInfo:v18 successBlock:v19 failureBlock:failureBlock];
  }
}

uint64_t __145__UIWebFileUploadPanel__processMediaInfoDictionaries_atIndex_processedResults_processedImageCount_processedVideoCount_successBlock_failureBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 72);
  v5 = v4 + [a2 isVideo];
  v6 = *(a1 + 80);
  v7 = [a2 isVideo] ^ 1;
  [*(a1 + 32) addObject:a2];
  return [*(a1 + 40) _processMediaInfoDictionaries:*(a1 + 48) atIndex:*(a1 + 88) processedResults:*(a1 + 32) processedImageCount:v6 + v7 processedVideoCount:v5 successBlock:*(a1 + 56) failureBlock:*(a1 + 64)];
}

- (void)_uploadItemForImageData:(id)data imageName:(id)name successBlock:(id)block failureBlock:(id)failureBlock
{
  v9 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v9)
  {
    v10 = v9;
    v12 = 0;
    [data writeToFile:v9 options:1 error:&v12];
    if (v12)
    {
      NSLog(&cfstr_WebfileuploadE.isa, v12);
      (*(failureBlock + 2))(failureBlock);
    }

    else
    {
      (*(block + 2))(block, [(_UIWebFileUploadItem *)[_UIWebImageUploadItem alloc] initWithFilePath:v10]);
    }
  }

  else
  {
    NSLog(&cfstr_WebfileuploadF.isa);
    v11 = *(failureBlock + 2);

    v11(failureBlock);
  }
}

- (void)_uploadItemForJPEGRepresentationOfImage:(id)image successBlock:(id)block failureBlock:(id)failureBlock
{
  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__UIWebFileUploadPanel__uploadItemForJPEGRepresentationOfImage_successBlock_failureBlock___block_invoke;
  v10[3] = &unk_1E7109208;
  v10[4] = image;
  v10[5] = self;
  v10[6] = failureBlock;
  v10[7] = block;
  dispatch_async(global_queue, v10);
}

uint64_t __90__UIWebFileUploadPanel__uploadItemForJPEGRepresentationOfImage_successBlock_failureBlock___block_invoke(uint64_t a1)
{
  v2 = _UIImageJPEGRepresentation(*(a1 + 32), 0, 0.8);
  if (v2)
  {
    v3 = v2;
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = *(a1 + 40);

    return [v6 _uploadItemForImageData:v3 imageName:@"image.jpg" successBlock:v4 failureBlock:v5];
  }

  else
  {
    NSLog(&cfstr_WebfileuploadF_0.isa);
    v8 = *(*(a1 + 48) + 16);

    return v8();
  }
}

- (void)_uploadItemFromMediaInfo:(id)info successBlock:(id)block failureBlock:(id)failureBlock
{
  v9 = [info objectForKey:@"UIImagePickerControllerMediaType"];
  v10 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v9 allowUndeclared:1];
  if ([v10 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v11 = [info objectForKey:@"UIImagePickerControllerMediaURL"];
    if ([v11 isFileURL])
    {
      v12 = [_UIWebVideoUploadItem alloc];
      v13 = v11;
LABEL_8:
      v16 = -[_UIWebFileUploadItem initWithFilePath:](v12, "initWithFilePath:", [v13 path]);
      v17 = *(block + 2);

      v17(block, v16);
      return;
    }

    NSLog(&cfstr_WebfileuploadE_0.isa);
    goto LABEL_19;
  }

  if (([v10 conformsToType:*MEMORY[0x1E6982E30]] & 1) == 0)
  {
    NSLog(&cfstr_WebfileuploadU.isa, v10);
LABEL_19:
    v19 = *(failureBlock + 2);

    v19(failureBlock);
    return;
  }

  v14 = [info objectForKeyedSubscript:@"UIImagePickerControllerImageURL"];
  if (v14)
  {
    v15 = v14;
    if ([v14 isFileURL])
    {
      v12 = [_UIWebImageUploadItem alloc];
      v13 = v15;
      goto LABEL_8;
    }

    NSLog(&cfstr_Wkfileuploadpa.isa);
    goto LABEL_19;
  }

  v18 = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
  if (!v18)
  {
    NSLog(&cfstr_WebfileuploadE_1.isa);
    goto LABEL_19;
  }

  [(UIWebFileUploadPanel *)self _uploadItemForJPEGRepresentationOfImage:v18 successBlock:block failureBlock:failureBlock];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  if (![(UIWebFileUploadPanel *)self _willMultipleSelectionDelegateBeCalled])
  {
    [(UIWebFileUploadPanel *)self _dismissDisplayAnimated:1];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:info];
    v7[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__UIWebFileUploadPanel_imagePickerController_didFinishPickingMediaWithInfo___block_invoke;
    v8[3] = &unk_1E7109258;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__UIWebFileUploadPanel_imagePickerController_didFinishPickingMediaWithInfo___block_invoke_3;
    v7[3] = &unk_1E70F5CA0;
    [(UIWebFileUploadPanel *)self _processMediaInfoDictionaries:v6 successBlock:v8 failureBlock:v7];
  }
}

void __76__UIWebFileUploadPanel_imagePickerController_didFinishPickingMediaWithInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectAtIndex:0];
  v6 = [v5 displayImage];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__UIWebFileUploadPanel_imagePickerController_didFinishPickingMediaWithInfo___block_invoke_2;
  v7[3] = &unk_1E7109230;
  v7[4] = *(a1 + 32);
  v7[5] = v5;
  v7[6] = a3;
  v7[7] = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __76__UIWebFileUploadPanel_imagePickerController_didFinishPickingMediaWithInfo___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) filePath];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _chooseFilename:v3 displayString:v4 iconImage:v5];
}

void __76__UIWebFileUploadPanel_imagePickerController_didFinishPickingMediaWithInfo___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__UIWebFileUploadPanel_imagePickerController_didFinishPickingMediaWithInfo___block_invoke_4;
  block[3] = &unk_1E70F5CA0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)imagePickerController:(id)controller didFinishPickingMultipleMediaWithInfo:(id)info
{
  [(UIWebFileUploadPanel *)self _dismissDisplayAnimated:1];
  v6[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__UIWebFileUploadPanel_imagePickerController_didFinishPickingMultipleMediaWithInfo___block_invoke;
  v7[3] = &unk_1E7109258;
  v7[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__UIWebFileUploadPanel_imagePickerController_didFinishPickingMultipleMediaWithInfo___block_invoke_3;
  v6[3] = &unk_1E70F5CA0;
  [(UIWebFileUploadPanel *)self _processMediaInfoDictionaries:info successBlock:v7 failureBlock:v6];
}

void __84__UIWebFileUploadPanel_imagePickerController_didFinishPickingMultipleMediaWithInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 filePath])
        {
          [v6 addObject:{objc_msgSend(v12, "filePath")}];
        }

        if (!v9)
        {
          v9 = [v12 displayImage];
        }
      }

      v8 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__UIWebFileUploadPanel_imagePickerController_didFinishPickingMultipleMediaWithInfo___block_invoke_2;
  v13[3] = &unk_1E7109230;
  v13[4] = *(a1 + 32);
  v13[5] = v6;
  v13[6] = a3;
  v13[7] = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

void __84__UIWebFileUploadPanel_imagePickerController_didFinishPickingMultipleMediaWithInfo___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__UIWebFileUploadPanel_imagePickerController_didFinishPickingMultipleMediaWithInfo___block_invoke_4;
  block[3] = &unk_1E70F5CA0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  [(UIWebFileUploadPanel *)self _dismissDisplayAnimated:1];

  [(UIWebFileUploadPanel *)self _cancel];
}

@end