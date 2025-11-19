@interface CKPINEntryViewController
- (void)_handlePairingSucceededWithCompletion:(id)a3;
- (void)handlePINEntered:(id)a3;
- (void)handlePasscodeFieldTextChanged;
- (void)handleTap:(id)a3;
- (void)showWithFlags:(unsigned int)a3 throttleSeconds:(int)a4;
@end

@implementation CKPINEntryViewController

- (void)showWithFlags:(unsigned int)a3 throttleSeconds:(int)a4
{
  [(UIImageView *)self->_checkmarkView setAlpha:0.0];
  [(UIView *)self->_pinEntryView setAlpha:1.0];
  if ((a3 & 0x10000) != 0)
  {
    [(UIView *)self->_pinEntryView size];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003F94;
    v13[3] = &unk_10000C4C8;
    v13[4] = self;
    *&v13[5] = v8 * 0.5;
    v9 = [[UIViewPropertyAnimator alloc] initWithDuration:v13 dampingRatio:0.7 animations:0.12];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003FF4;
    v12[3] = &unk_10000C2C0;
    v12[4] = self;
    [v9 addAnimations:v12 delayFactor:0.01];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100004054;
    v10[3] = &unk_10000C4F0;
    v10[4] = self;
    v11 = a4;
    [v9 addCompletion:v10];
    [v9 startAnimation];
  }

  else
  {
    passcodeField = self->_passcodeField;

    [(TVRPasscodeField *)passcodeField clear];
  }
}

- (void)handlePasscodeFieldTextChanged
{
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005E50();
  }

  v3 = [(TVRPasscodeField *)self->_passcodeField text];
  if ([v3 length] == 4)
  {
    [(CKPINEntryViewController *)self handlePINEntered:v3];
  }
}

- (void)handlePINEntered:(id)a3
{
  v4 = a3;
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005E6C();
  }

  if ([self->super._mainController testFlags])
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100004710;
    handler[3] = &unk_10000C518;
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v8 = v4;
    v9 = self;
    v5 = v7;
    dispatch_source_set_event_handler(v5, handler);
    SFDispatchTimerSet();
    dispatch_resume(v5);
  }

  else
  {
    v5 = [self->super._mainController rafHelper];
    [v5 serverTryPIN:v4];
  }
}

- (void)_handlePairingSucceededWithCompletion:(id)a3
{
  v4 = a3;
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005EAC();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000048B4;
  v8[3] = &unk_10000C2C0;
  v8[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004910;
  v6[3] = &unk_10000C540;
  v7 = v4;
  v5 = v4;
  [UIView animateWithDuration:v8 animations:v6 completion:0.4];
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  if (gLogCategory_ContinuityKeyboard <= 30 && (gLogCategory_ContinuityKeyboard != -1 || _LogCategory_Initialize()))
  {
    sub_100005EC8();
  }

  [(TVRPasscodeField *)self->_passcodeField becomeFirstResponder];
}

@end