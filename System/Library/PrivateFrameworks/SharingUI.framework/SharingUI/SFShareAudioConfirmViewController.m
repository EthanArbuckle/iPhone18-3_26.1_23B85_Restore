@interface SFShareAudioConfirmViewController
- (void)_updateDeviceVisual:(id)a3;
- (void)eventCancel:(id)a3;
- (void)eventConfirm:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFShareAudioConfirmViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioConfirmViewController viewWillAppear:];
  }

  v16.receiver = self;
  v16.super_class = SFShareAudioConfirmViewController;
  [(SFShareAudioBaseViewController *)&v16 viewWillAppear:v3];
  if (self->_productID)
  {
    v5 = SFLocalizedNameForBluetoothProductID();
    [(UILabel *)self->super._titleLabel setText:v5];
  }

  else
  {
    v5 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
    v6 = SFLocalizedStringEx();
    [(UILabel *)self->super._titleLabel setText:v6];
  }

  if (!self->_confirmButtonMaterialView)
  {
    v7 = [(objc_class *)getMTMaterialViewClass() materialViewWithRecipe:4 configuration:4];
    confirmButtonMaterialView = self->_confirmButtonMaterialView;
    self->_confirmButtonMaterialView = v7;

    [(UIButton *)self->_confirmButton bounds];
    [(MTMaterialView *)self->_confirmButtonMaterialView setFrame:?];
    [(MTMaterialView *)self->_confirmButtonMaterialView setAutoresizingMask:18];
    v9 = [(UIButton *)self->_confirmButton layer];
    [v9 cornerRadius];
    v11 = v10;
    v12 = [(MTMaterialView *)self->_confirmButtonMaterialView layer];
    [v12 setCornerRadius:v11];

    [(UIButton *)self->_confirmButton addSubview:self->_confirmButtonMaterialView];
  }

  if (self->_productID)
  {
    if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v13 = objc_alloc_init(MEMORY[0x1E69CDE48]);
    [v13 setBluetoothProductID:LOWORD(self->_productID)];
    [v13 setColorCode:self->_colorCode];
    [v13 setTimeoutSeconds:5.0];
    v14 = objc_alloc_init(MEMORY[0x1E69CDE40]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__SFShareAudioConfirmViewController_viewWillAppear___block_invoke;
    v15[3] = &unk_1E7EE4620;
    v15[4] = v14;
    v15[5] = self;
    [v14 getDeviceAssets:v13 completion:v15];
  }

  else
  {
    [(SFShareAudioConfirmViewController *)self _updateDeviceVisual:0];
  }
}

void __52__SFShareAudioConfirmViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) invalidate];
  v3 = *(a1 + 40);
  if (v3[1016] == 1)
  {
    v4 = [v5 assetBundlePath];
    [v3 _updateDeviceVisual:v4];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioConfirmViewController viewWillDisappear:];
  }

  v5.receiver = self;
  v5.super_class = SFShareAudioConfirmViewController;
  [(SFShareAudioBaseViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFShareAudioConfirmViewController;
  [(SFShareAudioConfirmViewController *)&v4 viewDidDisappear:a3];
  [(SFMediaPlayerView *)self->_productMovieView stop];
}

- (void)eventConfirm:(id)a3
{
  v5 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioConfirmViewController eventConfirm:];
  }

  v4 = [(SFShareAudioViewController *)self->super._mainController shareAudioSession];
  [v4 userConfirmed];
}

- (void)eventCancel:(id)a3
{
  v4 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioConfirmViewController eventCancel:];
  }

  [(SFShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_updateDeviceVisual:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 pathForResource:*MEMORY[0x1E69CDF00] ofType:0];
  if (v6 || ([v5 pathForResource:*MEMORY[0x1E69CDF10] ofType:0], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "pathForResource:ofType:", *MEMORY[0x1E69CDF18], 0), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v5 URLForResource:*MEMORY[0x1E69CDEF8] withExtension:0];
    if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioConfirmViewController _updateDeviceVisual:];
    }

    [(SFMediaPlayerView *)self->_productMovieView startMovieLoopWithPath:v7 assetType:1 adjustmentsURL:v8];
    [(SFMediaPlayerView *)self->_productMovieView setHidden:0];
  }

  else
  {
    if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioConfirmViewController _updateDeviceVisual:];
    }

    v9 = MEMORY[0x1E69DCAB8];
    v10 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
    v11 = [v9 imageNamed:@"ShareAudioAirPods" inBundle:v10 compatibleWithTraitCollection:0];
    [(UIImageView *)self->_shareImageView setImage:v11];

    [(UIImageView *)self->_shareImageView setHidden:0];
  }
}

@end