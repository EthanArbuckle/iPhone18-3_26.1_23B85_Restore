@interface SBLockScreenEmergencyCallViewController
- (SBLockScreenEmergencyCallViewControllerDelegate)delegate;
- (id)tintColorForBackgroundStyle:(int64_t)style outBlurRadius:(double *)radius;
- (int64_t)_wallpaperStyleFromUIBackgroundStyle:(int64_t)style;
- (void)dismiss;
- (void)setBackgroundStyle:(int64_t)style;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SBLockScreenEmergencyCallViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "View Service terminated with error: %@ -> %@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained emergencyCallViewController:self didExitWithError:errorCopy];
  }

  else
  {
    v8 = +[SBLockScreenManager sharedInstance];
    lockScreenEnvironment = [v8 lockScreenEnvironment];
    callController = [lockScreenEnvironment callController];
    [callController emergencyDialerExitedWithError:errorCopy];
  }
}

- (void)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dismissEmergencyCallViewController:self];
  }

  else
  {
    v4 = +[SBLockScreenManager sharedInstance];
    lockScreenEnvironment = [v4 lockScreenEnvironment];
    callController = [lockScreenEnvironment callController];
    [callController exitEmergencyDialerAnimated:1];
  }
}

- (void)setBackgroundStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = SBLockScreenEmergencyCallViewController;
  [(SBUIEmergencyCallHostViewController *)&v3 setBackgroundStyle:style];
}

- (id)tintColorForBackgroundStyle:(int64_t)style outBlurRadius:(double *)radius
{
  [(SBLockScreenEmergencyCallViewController *)self _wallpaperStyleFromUIBackgroundStyle:style];
  _WallpaperBackdropParametersForStyleAndAverageColor();
  v5 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:v10];
  if (radius)
  {
    v6 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:v10 graphicsQuality:100];
    [v6 blurRadius];
    *radius = v7;
  }

  combinedTintColor = [v5 combinedTintColor];

  return combinedTintColor;
}

- (int64_t)_wallpaperStyleFromUIBackgroundStyle:(int64_t)style
{
  v3 = _WallpaperStyleForBackgroundStyle();

  return MEMORY[0x282198110](v3);
}

- (SBLockScreenEmergencyCallViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end