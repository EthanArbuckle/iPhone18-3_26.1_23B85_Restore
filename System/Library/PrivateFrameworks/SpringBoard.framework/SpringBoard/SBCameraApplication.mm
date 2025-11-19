@interface SBCameraApplication
- (BOOL)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5;
- (void)_cancelPreheatForUserLaunchIfNecessary;
- (void)preHeatForUserLaunchIfNecessaryWithAbsoluteTime:(unint64_t)a3 andContinuousTime:(unint64_t)a4;
@end

@implementation SBCameraApplication

- (void)_cancelPreheatForUserLaunchIfNecessary
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_hasPreHeatInFlight)
  {
    v4 = *MEMORY[0x277CE5908];
    v5[0] = *MEMORY[0x277CE58D0];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    MEMORY[0x223D6A9B0](@"com.apple.camera", v3);

    self->_hasPreHeatInFlight = 0;
  }
}

- (void)preHeatForUserLaunchIfNecessaryWithAbsoluteTime:(unint64_t)a3 andContinuousTime:(unint64_t)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SBCameraApplication;
  [SBApplication preHeatForUserLaunchIfNecessaryWithAbsoluteTime:sel_preHeatForUserLaunchIfNecessaryWithAbsoluteTime_andContinuousTime_ andContinuousTime:?];
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Prewarming Camera for icon touch.", v13, 2u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v10 = *MEMORY[0x277CE58D0];
  v11 = *MEMORY[0x277CE5910];
  v15[0] = *MEMORY[0x277CE5908];
  v15[1] = v11;
  v16[0] = v10;
  v16[1] = v8;
  v15[2] = *MEMORY[0x277CE5920];
  v16[2] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  AVCapturePrewarmWithOptions();
  self->_hasPreHeatInFlight = 1;
}

- (BOOL)icon:(id)a3 launchFromLocation:(id)a4 context:(id)a5
{
  v7.receiver = self;
  v7.super_class = SBCameraApplication;
  result = [(SBApplication *)&v7 icon:a3 launchFromLocation:a4 context:a5];
  self->_hasPreHeatInFlight = 0;
  return result;
}

@end