@interface SFShareAudioConnectingViewController
- (void)_updateDeviceVisual:(id)a3;
- (void)_updateForDeviceInfo;
- (void)eventCancel:(id)a3;
- (void)sessionProgressEvent:(int)a3 info:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFShareAudioConnectingViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioConnectingViewController viewWillAppear:];
  }

  v7.receiver = self;
  v7.super_class = SFShareAudioConnectingViewController;
  [(SFShareAudioBaseViewController *)&v7 viewWillAppear:v3];
  [(SFShareAudioConnectingViewController *)self _updateForDeviceInfo];
  v5 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
  [(UIView *)self->_progressView startAnimating];
  v6 = SFLocalizedStringEx();
  [(UIActivityIndicatorView *)self->_progressActivity setText:v6];

  [(UILabel *)self->_progressLabel setHidden:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioConnectingViewController viewWillDisappear:];
  }

  v5.receiver = self;
  v5.super_class = SFShareAudioConnectingViewController;
  [(SFShareAudioBaseViewController *)&v5 viewWillDisappear:v3];
  [(SFShareAudioViewController *)self->super._mainController setVcConnecting:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFShareAudioConnectingViewController;
  [(SFShareAudioConnectingViewController *)&v4 viewDidDisappear:a3];
  [(UIImageView *)self->_productImageView stop];
}

- (void)eventCancel:(id)a3
{
  v4 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioConnectingViewController eventCancel:];
  }

  [(SFShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)sessionProgressEvent:(int)a3 info:(id)a4
{
  v6 = a4;
  if (a3 == 200 || a3 == 300 || a3 == 220)
  {
    v9 = v6;
    [(SFShareAudioConnectingViewController *)self _updateForDeviceInfo];
    v7 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
    v8 = SFLocalizedStringEx();
    [(UIActivityIndicatorView *)self->_progressActivity setText:v8];

    v6 = v9;
  }
}

- (void)_updateForDeviceInfo
{
  v3 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
  if (self->_colorCode)
  {
    SFLocalizedNameForBluetoothProductID();
  }

  else
  {
    SFLocalizedStringEx();
  }
  v4 = ;
  [(UILabel *)self->super._titleLabel setText:v4];

  colorCode = self->_colorCode;
  if (colorCode)
  {
    if (colorCode != *(&self->super._viewActive + 1))
    {
      *(&self->super._viewActive + 1) = colorCode;
      if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [SFShareAudioConnectingViewController _updateForDeviceInfo];
      }

      v6 = objc_alloc_init(MEMORY[0x1E69CDE48]);
      [v6 setBluetoothProductID:LOWORD(self->_colorCode)];
      [v6 setColorCode:self->_productIDActive];
      [v6 setTimeoutSeconds:5.0];
      v7 = objc_alloc_init(MEMORY[0x1E69CDE40]);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__SFShareAudioConnectingViewController__updateForDeviceInfo__block_invoke;
      v8[3] = &unk_1E7EE4620;
      v8[4] = v7;
      v8[5] = self;
      [v7 getDeviceAssets:v6 completion:v8];
    }
  }

  else
  {
    [(SFShareAudioConnectingViewController *)self _updateDeviceVisual:0];
  }
}

void __60__SFShareAudioConnectingViewController__updateForDeviceInfo__block_invoke(uint64_t a1, void *a2)
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
      [SFShareAudioConnectingViewController _updateDeviceVisual:];
    }

    [(UIImageView *)self->_productImageView startMovieLoopWithPath:v7 assetType:1 adjustmentsURL:v8];
    [(UIImageView *)self->_productImageView setHidden:0];
    [*&self->_productID setHidden:1];
    [(SFMediaPlayerView *)self->_productMovieView setHidden:1];
  }

  else
  {
    if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioConnectingViewController _updateDeviceVisual:];
    }

    v9 = MEMORY[0x1E69DCAB8];
    v10 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
    v11 = [v9 imageNamed:@"ShareAudioAirPods" inBundle:v10 compatibleWithTraitCollection:0];
    [(SFMediaPlayerView *)self->_productMovieView setImage:v11];

    [(SFMediaPlayerView *)self->_productMovieView setHidden:0];
    [*&self->_productID setHidden:1];
    [(UIImageView *)self->_productImageView setHidden:1];
  }
}

@end