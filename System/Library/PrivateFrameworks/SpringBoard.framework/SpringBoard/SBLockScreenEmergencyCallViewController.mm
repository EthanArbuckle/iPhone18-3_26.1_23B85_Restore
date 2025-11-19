@interface SBLockScreenEmergencyCallViewController
- (SBLockScreenEmergencyCallViewControllerDelegate)delegate;
- (id)tintColorForBackgroundStyle:(int64_t)a3 outBlurRadius:(double *)a4;
- (int64_t)_wallpaperStyleFromUIBackgroundStyle:(int64_t)a3;
- (void)dismiss;
- (void)setBackgroundStyle:(int64_t)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SBLockScreenEmergencyCallViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "View Service terminated with error: %@ -> %@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained emergencyCallViewController:self didExitWithError:v4];
  }

  else
  {
    v8 = +[SBLockScreenManager sharedInstance];
    v9 = [v8 lockScreenEnvironment];
    v10 = [v9 callController];
    [v10 emergencyDialerExitedWithError:v4];
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
    v5 = [v4 lockScreenEnvironment];
    v6 = [v5 callController];
    [v6 exitEmergencyDialerAnimated:1];
  }
}

- (void)setBackgroundStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = SBLockScreenEmergencyCallViewController;
  [(SBUIEmergencyCallHostViewController *)&v3 setBackgroundStyle:a3];
}

- (id)tintColorForBackgroundStyle:(int64_t)a3 outBlurRadius:(double *)a4
{
  [(SBLockScreenEmergencyCallViewController *)self _wallpaperStyleFromUIBackgroundStyle:a3];
  _WallpaperBackdropParametersForStyleAndAverageColor();
  v5 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:v10];
  if (a4)
  {
    v6 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:v10 graphicsQuality:100];
    [v6 blurRadius];
    *a4 = v7;
  }

  v8 = [v5 combinedTintColor];

  return v8;
}

- (int64_t)_wallpaperStyleFromUIBackgroundStyle:(int64_t)a3
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