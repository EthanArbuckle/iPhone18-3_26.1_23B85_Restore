@interface SFShareAudioErrorViewController
- (void)eventDismiss:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFShareAudioErrorViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioErrorViewController viewWillAppear:];
  }

  v10.receiver = self;
  v10.super_class = SFShareAudioErrorViewController;
  [(SFShareAudioBaseViewController *)&v10 viewWillAppear:v3];
  v5 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
  v6 = SFLocalizedStringEx();
  [(UILabel *)self->super._titleLabel setText:v6];

  v7 = SFLocalizedStringEx();
  [(UILabel *)self->_infoLabel setText:v7];

  if (IsAppleInternalBuild())
  {
    error = self->_error;
    v8 = NSPrintF();
    [(UILabel *)self->_internalLabel setText:v8, error];

    [(UILabel *)self->_internalLabel setHidden:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioErrorViewController viewWillDisappear:];
  }

  v5.receiver = self;
  v5.super_class = SFShareAudioErrorViewController;
  [(SFShareAudioBaseViewController *)&v5 viewWillDisappear:v3];
}

- (void)eventDismiss:(id)a3
{
  v4 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioErrorViewController eventDismiss:];
  }

  [(SFShareAudioViewController *)self->super._mainController reportError:self->_error];
}

@end