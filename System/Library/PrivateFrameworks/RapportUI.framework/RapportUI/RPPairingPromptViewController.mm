@interface RPPairingPromptViewController
+ (id)instantiateViewController;
- (void)_retryTimer;
- (void)handlePINEntered:(id)entered;
@end

@implementation RPPairingPromptViewController

+ (id)instantiateViewController
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.RapportUI"];
  v3 = [MEMORY[0x277D75AC8] storyboardWithName:@"RPPairingPrompt_iOS" bundle:v2];
  v4 = [v3 instantiateViewControllerWithIdentifier:@"PINEntry"];
  view = [v4 view];

  return v4;
}

void __48__RPPairingPromptViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 length];
  v4 = [*(*(a1 + 32) + 1048) labels];
  v5 = [v4 count];

  if (v3 == v5)
  {
    [*(a1 + 32) handlePINEntered:v6];
  }
}

- (void)handlePINEntered:(id)entered
{
  enteredCopy = entered;
  [(RPPINEntryView *)self->_pinEntryView setDisabled:1];
  [(UIActivityIndicatorView *)self->_progressSpinner startAnimating];
  [(UIActivityIndicatorView *)self->_progressSpinner setHidden:0];
  v4 = RPUILocalizedString(@"AUTHENTICATING");
  [(UILabel *)self->_progressLabel setText:v4];

  [(UILabel *)self->_progressLabel setHidden:0];
  v5 = MEMORY[0x26670B920](self->_tryPasswordHandler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, enteredCopy);
  }
}

- (void)_retryTimer
{
  v3 = mach_absolute_time();
  retryDeadlineTicks = self->_retryDeadlineTicks;
  if (retryDeadlineTicks > v3)
  {
    UpTicksToSecondsF();
    LODWORD(v10) = vcvtpd_s64_f64(v9);
    v18 = RPUILocalizedStringF(@"PAIR_RETRY_PROGRESS_FORMAT", v11, v12, v13, v14, v15, v16, v17, v10);
    p_progressLabel = &self->_progressLabel;
    [(UILabel *)*p_progressLabel setText:v18];
  }

  else
  {
    retryTimer = self->_retryTimer;
    if (retryTimer)
    {
      v6 = retryTimer;
      dispatch_source_cancel(v6);
      v7 = self->_retryTimer;
      self->_retryTimer = 0;
    }

    [(RPPINEntryView *)self->_pinEntryView setDisabled:0];
    [(RPPINEntryView *)self->_pinEntryView setText:&stru_287405838];
    [(UIActivityIndicatorView *)self->_progressSpinner stopAnimating];
    [(UIActivityIndicatorView *)self->_progressSpinner setHidden:1];
    p_progressLabel = &self->_progressLabel;
  }

  v19 = *p_progressLabel;

  [(UILabel *)v19 setHidden:retryDeadlineTicks <= v3];
}

@end