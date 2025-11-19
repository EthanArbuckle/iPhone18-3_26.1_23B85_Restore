@interface SiriSharedUIPhPicker
- (BOOL)_isPickerViewControllerPresentedBy:(id)a3;
- (id)_createPhotoPickerViewController:(id)a3 withSelectionLimit:(id)a4;
- (id)_getPhotoLibrary;
- (id)_getPhotoPickerConfig:(id)a3 withSearchString:(id)a4 withSelectionLimit:(id)a5;
- (void)_dismissWithAnimation:(BOOL)a3;
- (void)_getPhotoLibrary;
- (void)dismissPhotoPickerIfExistsWithAnimation:(BOOL)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)presentPhotoPicker:(id)a3 withSearchString:(id)a4 withSelectionLimit:(id)a5 completion:(id)a6;
@end

@implementation SiriSharedUIPhPicker

- (BOOL)_isPickerViewControllerPresentedBy:(id)a3
{
  v4 = [a3 presentedViewController];
  LOBYTE(self) = v4 == self->_pickerViewController;

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

- (id)_getPhotoPickerConfig:(id)a3 withSearchString:(id)a4 withSelectionLimit:(id)a5
{
  v7 = MEMORY[0x277CD9D68];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithPhotoLibrary:v10];

  v12 = [v8 integerValue];
  [v11 setSelectionLimit:v12];
  [v11 set_searchText:v9];

  return v11;
}

- (id)_createPhotoPickerViewController:(id)a3 withSelectionLimit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SiriSharedUIPhPicker *)self _getPhotoLibrary];
  if (v8)
  {
    v9 = [(SiriSharedUIPhPicker *)self _getPhotoPickerConfig:v8 withSearchString:v6 withSelectionLimit:v7];
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

- (void)presentPhotoPicker:(id)a3 withSearchString:(id)a4 withSelectionLimit:(id)a5 completion:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (self->_pickerViewController && [(SiriSharedUIPhPicker *)self _isPickerViewControllerPresentedBy:v17])
  {
    [(PHPickerViewController *)self->_pickerViewController _searchWithString:v10];
  }

  else
  {
    v13 = [(SiriSharedUIPhPicker *)self _createPhotoPickerViewController:v10 withSelectionLimit:v11];
    pickerViewController = self->_pickerViewController;
    self->_pickerViewController = v13;

    if (self->_pickerViewController)
    {
      v15 = _Block_copy(v12);
      completionHandler = self->_completionHandler;
      self->_completionHandler = v15;

      [v17 presentViewController:self->_pickerViewController animated:1 completion:0];
    }
  }
}

- (void)dismissPhotoPickerIfExistsWithAnimation:(BOOL)a3
{
  if (self->_pickerViewController)
  {
    [(SiriSharedUIPhPicker *)self _dismissWithAnimation:a3];
  }
}

- (void)_dismissWithAnimation:(BOOL)a3
{
  [(PHPickerViewController *)self->_pickerViewController dismissViewControllerAnimated:a3 completion:0];
  pickerViewController = self->_pickerViewController;
  self->_pickerViewController = 0;
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SiriSharedUIPhPicker *)self completionHandler];

  if (v6)
  {
    v7 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
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

          v13 = [*(*(&v15 + 1) + 8 * v12) assetIdentifier];
          [v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v14 = [(SiriSharedUIPhPicker *)self completionHandler];
    (v14)[2](v14, v7);
  }

  [(SiriSharedUIPhPicker *)self _dismissWithAnimation:1, v15];
}

- (void)_getPhotoLibrary
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SiriSharedUIPhPicker _getPhotoLibrary]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_21E3EB000, a2, OS_LOG_TYPE_ERROR, "%s #PhotoPicker: Error opening user photo library:%@", &v2, 0x16u);
}

@end