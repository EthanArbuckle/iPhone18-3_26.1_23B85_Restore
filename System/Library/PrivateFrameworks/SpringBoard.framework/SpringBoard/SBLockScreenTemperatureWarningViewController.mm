@interface SBLockScreenTemperatureWarningViewController
- (NSString)slideToUnlockText;
- (SBLockScreenTemperatureWarningViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation SBLockScreenTemperatureWarningViewController

- (SBLockScreenTemperatureWarningViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = SBLockScreenTemperatureWarningViewController;
  return [(SBLockScreenTemperatureWarningViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)loadView
{
  warningView = self->_warningView;
  if (!warningView)
  {
    v4 = [SBLockScreenTemperatureWarningView alloc];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v6 = [(SBLockScreenTemperatureWarningView *)v4 initWithFrame:?];
    v7 = self->_warningView;
    self->_warningView = v6;

    titleLabel = [(SBUILockOverlayView *)self->_warningView titleLabel];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [mainBundle localizedStringForKey:@"IPHONE_TOO_HOT" value:&stru_283094718 table:@"SpringBoard"];
    [titleLabel setText:v10];

    subtitleLabel = [(SBUILockOverlayView *)self->_warningView subtitleLabel];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"THERMAL_ALERT_STRING"];
    v14 = [mainBundle2 localizedStringForKey:v13 value:&stru_283094718 table:@"SpringBoard"];
    [subtitleLabel setText:v14];

    warningView = self->_warningView;
  }

  [(SBLockScreenTemperatureWarningViewController *)self setView:warningView];
}

- (NSString)slideToUnlockText
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"AWAY_LOCK_EMERGENCY_LABEL" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

@end