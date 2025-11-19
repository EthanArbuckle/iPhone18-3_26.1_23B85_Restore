@interface SBLockScreenTemperatureWarningViewController
- (NSString)slideToUnlockText;
- (SBLockScreenTemperatureWarningViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation SBLockScreenTemperatureWarningViewController

- (SBLockScreenTemperatureWarningViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBLockScreenTemperatureWarningViewController;
  return [(SBLockScreenTemperatureWarningViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (void)loadView
{
  warningView = self->_warningView;
  if (!warningView)
  {
    v4 = [SBLockScreenTemperatureWarningView alloc];
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
    v6 = [(SBLockScreenTemperatureWarningView *)v4 initWithFrame:?];
    v7 = self->_warningView;
    self->_warningView = v6;

    v8 = [(SBUILockOverlayView *)self->_warningView titleLabel];
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 localizedStringForKey:@"IPHONE_TOO_HOT" value:&stru_283094718 table:@"SpringBoard"];
    [v8 setText:v10];

    v11 = [(SBUILockOverlayView *)self->_warningView subtitleLabel];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"THERMAL_ALERT_STRING"];
    v14 = [v12 localizedStringForKey:v13 value:&stru_283094718 table:@"SpringBoard"];
    [v11 setText:v14];

    warningView = self->_warningView;
  }

  [(SBLockScreenTemperatureWarningViewController *)self setView:warningView];
}

- (NSString)slideToUnlockText
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"AWAY_LOCK_EMERGENCY_LABEL" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

@end