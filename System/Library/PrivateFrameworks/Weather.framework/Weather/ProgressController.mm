@interface ProgressController
+ (id)sharedProgressController;
- (void)_hideSpinner;
- (void)_setHideSpinnerTimer:(id)a3;
- (void)_showSpinner;
- (void)setLoadingData:(BOOL)a3;
- (void)suspend;
@end

@implementation ProgressController

+ (id)sharedProgressController
{
  v2 = sharedProgressController_sharedProgressController;
  if (!sharedProgressController_sharedProgressController)
  {
    v3 = objc_alloc_init(ProgressController);
    v4 = sharedProgressController_sharedProgressController;
    sharedProgressController_sharedProgressController = v3;

    v2 = sharedProgressController_sharedProgressController;
  }

  return v2;
}

- (void)_setHideSpinnerTimer:(id)a3
{
  v5 = a3;
  hideSpinnerTimer = self->_hideSpinnerTimer;
  p_hideSpinnerTimer = &self->_hideSpinnerTimer;
  v6 = hideSpinnerTimer;
  if (hideSpinnerTimer != v5)
  {
    v9 = v5;
    [(NSTimer *)v6 invalidate];
    objc_storeStrong(p_hideSpinnerTimer, a3);
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v6, v5);
}

- (void)_hideSpinner
{
  [(ProgressController *)self _setHideSpinnerTimer:0];
  v2 = *MEMORY[0x277D76620];

  [v2 setStatusBarShowsProgress:0];
}

- (void)_showSpinner
{
  [(ProgressController *)self _setHideSpinnerTimer:0];
  v2 = *MEMORY[0x277D76620];

  [v2 setStatusBarShowsProgress:1];
}

- (void)setLoadingData:(BOOL)a3
{
  v3 = a3;
  p_loadingCount = &self->_loadingCount;
  loadingCount = self->_loadingCount;
  if (a3)
  {
    v7 = loadingCount + 1;
  }

  else
  {
    v7 = loadingCount - 1;
  }

  *p_loadingCount = v7;
  v8 = WALogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ProgressController *)v3 setLoadingData:v8];
  }

  v9 = *p_loadingCount;
  if (v3)
  {
    if (v9 >= 1)
    {
      if (!self->_progressShowing)
      {
        [(ProgressController *)self _showSpinner];
      }

      self->_progressShowing = 1;
    }
  }

  else if (!v9)
  {
    if (self->_progressShowing)
    {
      v10 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__hideSpinner selector:0 userInfo:0 repeats:0.1];
      [(ProgressController *)self _setHideSpinnerTimer:v10];
    }

    self->_progressShowing = 0;
  }
}

- (void)suspend
{
  if (self->_progressShowing)
  {
    [(ProgressController *)self _hideSpinner];
  }
}

- (void)setLoadingData:(os_log_t)log .cold.1(char a1, int *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = @"NO";
  v4 = *a2;
  if (a1)
  {
    v3 = @"YES";
  }

  v6 = 138412546;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_272ACF000, log, OS_LOG_TYPE_DEBUG, "loading %@, count = %d", &v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end