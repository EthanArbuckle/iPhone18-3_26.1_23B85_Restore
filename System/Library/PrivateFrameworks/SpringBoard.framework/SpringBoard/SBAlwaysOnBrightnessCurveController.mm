@interface SBAlwaysOnBrightnessCurveController
- (BOOL)isUsingAlwaysOnBrightnessCurve;
- (SBAlwaysOnBrightnessCurveController)init;
- (SBAlwaysOnBrightnessCurveController)initWithBrightnessSystemClient:(id)a3;
- (void)setUseAlwaysOnBrightnessCurve:(BOOL)a3 withRampDuration:(double)a4;
@end

@implementation SBAlwaysOnBrightnessCurveController

- (SBAlwaysOnBrightnessCurveController)init
{
  v3 = objc_alloc_init(MEMORY[0x277CFD390]);
  v4 = [(SBAlwaysOnBrightnessCurveController *)self initWithBrightnessSystemClient:v3];

  return v4;
}

- (SBAlwaysOnBrightnessCurveController)initWithBrightnessSystemClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBAlwaysOnBrightnessCurveController;
  v6 = [(SBAlwaysOnBrightnessCurveController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_brightnessSystemClient, a3);
    v7->_lock_useAlwaysOnBrightnessCurve = 0;
    [(SBAlwaysOnBrightnessCurveController *)v7 setUseAlwaysOnBrightnessCurve:0 withRampDuration:0.25];
  }

  return v7;
}

- (BOOL)isUsingAlwaysOnBrightnessCurve
{
  os_unfair_lock_lock(&self->_lock);
  lock_useAlwaysOnBrightnessCurve = self->_lock_useAlwaysOnBrightnessCurve;
  os_unfair_lock_unlock(&self->_lock);
  return lock_useAlwaysOnBrightnessCurve;
}

- (void)setUseAlwaysOnBrightnessCurve:(BOOL)a3 withRampDuration:(double)a4
{
  v5 = a3;
  v17[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_useAlwaysOnBrightnessCurve = v5;
  os_unfair_lock_unlock(&self->_lock);
  v16[0] = @"AOTState";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v16[1] = @"AOTTransitionTime";
  v17[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = SBLogBacklight();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109634;
    v11[1] = v5;
    v12 = 2048;
    v13 = a4;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "setUseAlwaysOnBrightnessCurve:%{BOOL}u duration:%.2fs set to %{public}@", v11, 0x1Cu);
  }

  [(BrightnessSystemClient *)self->_brightnessSystemClient setProperty:v9 forKey:@"CBAOTStateUpdate"];
}

@end