@interface SiriUIAudioRoutePickerController
+ (id)_nameForRouteInfo:(id)a3 isSelected:(BOOL *)a4 isBluetooth:(BOOL *)a5 isOverride:(BOOL *)a6 audioRouteName:(id *)a7;
- (BOOL)isShowingPicker;
- (SiriUIAudioRoutePickerController)initWithCategory:(id)a3 mode:(id)a4 delegate:(id)a5;
- (SiriUIAudioRoutePickerControllerDelegate)delegate;
- (void)_dismissAlertController:(BOOL)a3;
- (void)_fetchPickableRoutesWithCompletion:(id)a3;
- (void)_pickableRoutesChanged:(id)a3;
- (void)_removeWindow;
- (void)_selectRouteWithInfo:(id)a3;
- (void)_showAlertControllerFromViewController:(id)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)showPickerFromViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation SiriUIAudioRoutePickerController

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SiriUIAudioRoutePickerController;
  [(SiriUIAudioRoutePickerController *)&v4 dealloc];
}

- (SiriUIAudioRoutePickerController)initWithCategory:(id)a3 mode:(id)a4 delegate:(id)a5
{
  v28[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = SiriUIAudioRoutePickerController;
  v11 = [(SiriUIAudioRoutePickerController *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
    v13 = [v8 copy];
    audioCategory = v12->_audioCategory;
    v12->_audioCategory = v13;

    v15 = [v9 copy];
    audioMode = v12->_audioMode;
    v12->_audioMode = v15;

    v17 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v18 = MEMORY[0x277D26C68];
    v19 = *MEMORY[0x277D26B00];
    v28[0] = *MEMORY[0x277D26C68];
    v28[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    [v17 setAttribute:v20 forKey:*MEMORY[0x277D26DD0] error:0];
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = *v18;
    v23 = [MEMORY[0x277D26E58] sharedAVSystemController];
    [v21 addObserver:v12 selector:sel__pickableRoutesChanged_ name:v22 object:v23];

    v24 = *MEMORY[0x277D26B00];
    v25 = [MEMORY[0x277D26E58] sharedAVSystemController];
    [v21 addObserver:v12 selector:sel__routeChanged_ name:v24 object:v25];

    [(SiriUIAudioRoutePickerController *)v12 refreshRoutes];
  }

  return v12;
}

- (void)_fetchPickableRoutesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SiriUIAudioRoutePickerController__fetchPickableRoutesWithCompletion___block_invoke;
  v7[3] = &unk_279C5A828;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__SiriUIAudioRoutePickerController__fetchPickableRoutesWithCompletion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v17 = a1;
    v4 = [v3 pickableRoutesForCategory:*(*(a1 + 32) + 16) andMode:*(*(a1 + 32) + 24)];

    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v27 = 0;
          v26 = 0;
          v13 = objc_opt_class();
          v25 = 0;
          v14 = [v13 _nameForRouteInfo:v12 isSelected:&v27 + 1 isBluetooth:&v27 isOverride:&v26 audioRouteName:&v25];
          v15 = v25;
          v16 = v15;
          if ((v26 & 1) == 0 && ([v15 isEqualToString:@"AirTunes"] & 1) == 0)
          {
            if (HIBYTE(v27))
            {
              v9 = v27;
            }

            v8 |= v27;
            [v18 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    if (*(v17 + 40))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__SiriUIAudioRoutePickerController__fetchPickableRoutesWithCompletion___block_invoke_2;
      block[3] = &unk_279C5A800;
      objc_copyWeak(&v22, (v17 + 48));
      v21 = *(v17 + 40);
      v20 = v18;
      v23 = v8 & 1;
      v24 = v9 & 1;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v22);
    }
  }
}

void __71__SiriUIAudioRoutePickerController__fetchPickableRoutesWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)showPickerFromViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routePickerControllerWillShow:self];

  [(SiriUIAudioRoutePickerController *)self _showAlertControllerFromViewController:v7 animated:v4];
}

- (void)_showAlertControllerFromViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277D75D28]);
  v7 = [SiriRoutePickerAlertWindow alloc];
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 bounds];
  v9 = [(SiriRoutePickerAlertWindow *)v7 initWithFrame:?];
  window = self->_window;
  self->_window = v9;

  [(UIWindow *)self->_window setRootViewController:v6];
  [(UIWindow *)self->_window setHidden:0];
  v11 = [v5 view];
  v12 = [v11 window];
  [v12 windowLevel];
  [(UIWindow *)self->_window setWindowLevel:v13 + 1.0];

  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
  v15 = [SiriRoutePickerAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  pickerAlertController = self->_pickerAlertController;
  self->_pickerAlertController = v15;

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke;
  v19[3] = &unk_279C5A8A0;
  objc_copyWeak(&v22, &location);
  v19[4] = self;
  v17 = v14;
  v20 = v17;
  v18 = v6;
  v21 = v18;
  [(SiriUIAudioRoutePickerController *)self _fetchPickableRoutesWithCompletion:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v21 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v21;
    v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v3)
    {
      v4 = *v30;
      do
      {
        v5 = 0;
        do
        {
          if (*v30 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v29 + 1) + 8 * v5);
          v28 = 0;
          v7 = [objc_opt_class() _nameForRouteInfo:v6 isSelected:&v28 isBluetooth:0 isOverride:0 audioRouteName:0];
          v8 = MEMORY[0x277D750F8];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke_2;
          v26[3] = &unk_279C5A850;
          objc_copyWeak(&v27, (a1 + 56));
          v26[4] = v6;
          v9 = [v8 actionWithTitle:v7 style:0 handler:v26];
          [v9 _setChecked:v28];
          v10 = [WeakRetained pickerAlertController];
          [v10 addAction:v9];

          objc_destroyWeak(&v27);
          ++v5;
        }

        while (v3 != v5);
        v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v3);
    }

    v11 = [*(a1 + 40) localizedStringForKey:@"SIRI_ROUTE_PICKER_CANCEL_BUTTON_TITLE" value:0 table:0];
    v12 = MEMORY[0x277D750F8];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke_4;
    v24[3] = &unk_279C5A878;
    objc_copyWeak(&v25, (a1 + 56));
    v13 = [v12 actionWithTitle:v11 style:1 handler:v24];
    v14 = [WeakRetained pickerAlertController];
    [v14 addAction:v13];

    v15 = *(a1 + 48);
    v16 = [WeakRetained pickerAlertController];
    [v15 presentViewController:v16 animated:1 completion:0];

    v17 = [WeakRetained pickerAlertController];
    v18 = [v17 popoverPresentationController];

    [v18 setPermittedArrowDirections:0];
    [v18 setSourceView:WeakRetained[4]];
    [WeakRetained[4] bounds];
    [v18 setSourceRect:{v19 * 0.5, v20 * 0.5, 1.0, 1.0}];

    objc_destroyWeak(&v25);
  }
}

void __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke_3;
  v2[3] = &unk_279C59EA0;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
}

void __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _selectRouteWithInfo:*(a1 + 32)];
  [WeakRetained _dismissAlertController:1];
}

void __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke_5;
  block[3] = &unk_279C59FA0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __84__SiriUIAudioRoutePickerController__showAlertControllerFromViewController_animated___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAlertController:1];
}

+ (id)_nameForRouteInfo:(id)a3 isSelected:(BOOL *)a4 isBluetooth:(BOOL *)a5 isOverride:(BOOL *)a6 audioRouteName:(id *)a7
{
  v11 = a3;
  v12 = MEMORY[0x277D26D28];
  v13 = [v11 objectForKey:*MEMORY[0x277D26D28]];
  v14 = [v13 isEqualToString:*MEMORY[0x277D26C48]];
  v15 = [v11 objectForKey:*MEMORY[0x277D26CA8]];
  v16 = [v15 isEqualToString:@"Speaker"];
  if (!v14 || (v16 & 1) == 0)
  {
    v18 = [v11 objectForKey:*MEMORY[0x277D26D08]];
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = [MEMORY[0x277D75418] currentDevice];
  v18 = [v17 localizedModel];

  if (a4)
  {
LABEL_6:
    v19 = [v11 objectForKey:*MEMORY[0x277D26D00]];
    *a4 = [v19 BOOLValue];
  }

LABEL_7:
  if (a5 | a6)
  {
    v20 = [v11 objectForKey:*v12];
    v21 = v20;
    if (a5)
    {
      *a5 = [v20 isEqualToString:*MEMORY[0x277D26C58]];
    }

    if (a6)
    {
      *a6 = [v21 isEqualToString:*MEMORY[0x277D26C50]];
    }
  }

  if (a7)
  {
    v22 = v15;
    *a7 = v15;
  }

  return v18;
}

- (void)_selectRouteWithInfo:(id)a3
{
  v3 = a3;
  ADClientAddValueForScalarKey();
  v4 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v5 = *MEMORY[0x277D26C70];
  v9 = 0;
  v6 = [v4 setAttribute:v3 forKey:v5 error:&v9];

  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SiriUIAudioRoutePickerController *)v7 _selectRouteWithInfo:v8];
    }
  }
}

- (void)_dismissAlertController:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routePickerControllerWillDismiss:self];

  [(SiriRoutePickerAlertController *)self->_pickerAlertController dismissViewControllerAnimated:v3 completion:0];

  [(SiriUIAudioRoutePickerController *)self _removeWindow];
}

- (void)_removeWindow
{
  [(UIWindow *)self->_window setHidden:1];
  [(UIWindow *)self->_window setRootViewController:0];
  window = self->_window;
  self->_window = 0;
}

- (BOOL)isShowingPicker
{
  v2 = [(SiriRoutePickerAlertController *)self->_pickerAlertController presentingViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)_pickableRoutesChanged:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SiriUIAudioRoutePickerController__pickableRoutesChanged___block_invoke;
  v5[3] = &unk_279C5A8C8;
  objc_copyWeak(&v6, &location);
  [(SiriUIAudioRoutePickerController *)self _fetchPickableRoutesWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __59__SiriUIAudioRoutePickerController__pickableRoutesChanged___block_invoke(uint64_t a1, uint64_t a2, char a3, char a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
    if ((a3 & 1) == 0)
    {
      v8 = [WeakRetained isShowingPicker];
      v7 = v12;
      if (v8)
      {
        [v12 cancelPickerAnimated:1];
        v7 = v12;
      }
    }

    *(v7 + 40) = a3;
    *(v7 + 41) = a4;
    v9 = objc_loadWeakRetained(v7 + 1);
    [v9 routePickerController:v12 hasRoutesToPick:*(v12 + 40)];

    v10 = objc_loadWeakRetained(v12 + 1);
    [v10 routePickerControllerPickedNewRoute:v12 isBluetooth:*(v12 + 41)];

    v7 = v12;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v7);
}

- (SiriUIAudioRoutePickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_selectRouteWithInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SiriUIAudioRoutePickerController _selectRouteWithInfo:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_26948D000, a2, OS_LOG_TYPE_ERROR, "%s Failed picking route %{public}@", &v2, 0x16u);
}

@end