@interface SFShareAudioErrorViewController
- (void)eventDismiss:(id)dismiss;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFShareAudioErrorViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioErrorViewController viewWillAppear:];
  }

  v10.receiver = self;
  v10.super_class = SFShareAudioErrorViewController;
  [(SFShareAudioBaseViewController *)&v10 viewWillAppear:appearCopy];
  mainBundle = [(SFShareAudioViewController *)self->super._mainController mainBundle];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioErrorViewController viewWillDisappear:];
  }

  v5.receiver = self;
  v5.super_class = SFShareAudioErrorViewController;
  [(SFShareAudioBaseViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)eventDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioErrorViewController eventDismiss:];
  }

  [(SFShareAudioViewController *)self->super._mainController reportError:self->_error];
}

@end