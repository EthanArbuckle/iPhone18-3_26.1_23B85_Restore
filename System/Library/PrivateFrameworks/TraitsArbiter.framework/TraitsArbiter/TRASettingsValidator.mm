@interface TRASettingsValidator
- (void)setOrientationSettings:(id)settings;
- (void)validateOrientationSettingsWithBlock:(id)block;
@end

@implementation TRASettingsValidator

- (void)setOrientationSettings:(id)settings
{
  self->_orientationSettingsValidated = 0;
  orientationSettingsValidatedReason = self->_orientationSettingsValidatedReason;
  self->_orientationSettingsValidatedReason = 0;
  settingsCopy = settings;

  v6 = [settingsCopy copy];
  orientationSettings = self->_orientationSettings;
  self->_orientationSettings = v6;
}

- (void)validateOrientationSettingsWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [TRASettingsValidator validateOrientationSettingsWithBlock:];
  }

  orientationSettings = self->_orientationSettings;
  v10 = 0;
  v6 = blockCopy[2](blockCopy, orientationSettings, &v10);
  v7 = v10;
  self->_orientationSettingsValidated = v6;
  v8 = [v7 copy];
  orientationSettingsValidatedReason = self->_orientationSettingsValidatedReason;
  self->_orientationSettingsValidatedReason = v8;
}

- (void)validateOrientationSettingsWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"settingsValidationBlock" object:? file:? lineNumber:? description:?];
}

@end