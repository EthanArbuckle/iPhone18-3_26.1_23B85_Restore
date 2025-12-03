@interface SiriSharedUIPhPicker
- (BOOL)_isPickerViewControllerPresentedBy:(id)by;
- (id)_createPhotoPickerViewController:(id)controller withSelectionLimit:(id)limit;
- (id)_getPhotoLibrary;
- (id)_getPhotoPickerConfig:(id)config withSearchString:(id)string withSelectionLimit:(id)limit;
- (void)_dismissWithAnimation:(BOOL)animation;
- (void)_getPhotoLibrary;
- (void)dismissPhotoPickerIfExistsWithAnimation:(BOOL)animation;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)presentPhotoPicker:(id)picker withSearchString:(id)string withSelectionLimit:(id)limit completion:(id)completion;
@end

@implementation SiriSharedUIPhPicker

- (BOOL)_isPickerViewControllerPresentedBy:(id)by
{
  presentedViewController = [by presentedViewController];
  LOBYTE(self) = presentedViewController == self->_pickerViewController;

  return self;
}

- (id)_getPhotoLibrary
{
  v7 = 0;
  v2 = [MEMORY[0x277CD9948] openPhotoLibraryWithWellKnownIdentifier:1 error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SiriSharedUIPhPicker *)v3 _getPhotoLibrary];
    }

    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (id)_getPhotoPickerConfig:(id)config withSearchString:(id)string withSelectionLimit:(id)limit
{
  v7 = MEMORY[0x277CD9D68];
  limitCopy = limit;
  stringCopy = string;
  configCopy = config;
  v11 = [[v7 alloc] initWithPhotoLibrary:configCopy];

  integerValue = [limitCopy integerValue];
  [v11 setSelectionLimit:integerValue];
  [v11 set_searchText:stringCopy];

  return v11;
}

- (id)_createPhotoPickerViewController:(id)controller withSelectionLimit:(id)limit
{
  controllerCopy = controller;
  limitCopy = limit;
  _getPhotoLibrary = [(SiriSharedUIPhPicker *)self _getPhotoLibrary];
  if (_getPhotoLibrary)
  {
    v9 = [(SiriSharedUIPhPicker *)self _getPhotoPickerConfig:_getPhotoLibrary withSearchString:controllerCopy withSelectionLimit:limitCopy];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CD9D78]) initWithConfiguration:v9];
      [v10 setDelegate:self];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)presentPhotoPicker:(id)picker withSearchString:(id)string withSelectionLimit:(id)limit completion:(id)completion
{
  pickerCopy = picker;
  stringCopy = string;
  limitCopy = limit;
  completionCopy = completion;
  if (self->_pickerViewController && [(SiriSharedUIPhPicker *)self _isPickerViewControllerPresentedBy:pickerCopy])
  {
    [(PHPickerViewController *)self->_pickerViewController _searchWithString:stringCopy];
  }

  else
  {
    v13 = [(SiriSharedUIPhPicker *)self _createPhotoPickerViewController:stringCopy withSelectionLimit:limitCopy];
    pickerViewController = self->_pickerViewController;
    self->_pickerViewController = v13;

    if (self->_pickerViewController)
    {
      v15 = _Block_copy(completionCopy);
      completionHandler = self->_completionHandler;
      self->_completionHandler = v15;

      [pickerCopy presentViewController:self->_pickerViewController animated:1 completion:0];
    }
  }
}

- (void)dismissPhotoPickerIfExistsWithAnimation:(BOOL)animation
{
  if (self->_pickerViewController)
  {
    [(SiriSharedUIPhPicker *)self _dismissWithAnimation:animation];
  }
}

- (void)_dismissWithAnimation:(BOOL)animation
{
  [(PHPickerViewController *)self->_pickerViewController dismissViewControllerAnimated:animation completion:0];
  pickerViewController = self->_pickerViewController;
  self->_pickerViewController = 0;
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v20 = *MEMORY[0x277D85DE8];
  pickingCopy = picking;
  completionHandler = [(SiriSharedUIPhPicker *)self completionHandler];

  if (completionHandler)
  {
    v7 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = pickingCopy;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          assetIdentifier = [*(*(&v15 + 1) + 8 * v12) assetIdentifier];
          [v7 addObject:assetIdentifier];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    completionHandler2 = [(SiriSharedUIPhPicker *)self completionHandler];
    (completionHandler2)[2](completionHandler2, v7);
  }

  [(SiriSharedUIPhPicker *)self _dismissWithAnimation:1, v15];
}

- (void)_getPhotoLibrary
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SiriSharedUIPhPicker _getPhotoLibrary]";
  v4 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_21E3EB000, a2, OS_LOG_TYPE_ERROR, "%s #PhotoPicker: Error opening user photo library:%@", &v2, 0x16u);
}

@end