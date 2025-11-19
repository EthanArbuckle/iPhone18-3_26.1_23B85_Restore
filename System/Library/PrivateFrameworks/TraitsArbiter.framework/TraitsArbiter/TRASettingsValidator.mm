@interface TRASettingsValidator
- (void)setOrientationSettings:(id)a3;
- (void)validateOrientationSettingsWithBlock:(id)a3;
@end

@implementation TRASettingsValidator

- (void)setOrientationSettings:(id)a3
{
  self->_orientationSettingsValidated = 0;
  orientationSettingsValidatedReason = self->_orientationSettingsValidatedReason;
  self->_orientationSettingsValidatedReason = 0;
  v5 = a3;

  v6 = [v5 copy];
  orientationSettings = self->_orientationSettings;
  self->_orientationSettings = v6;
}

- (void)validateOrientationSettingsWithBlock:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [TRASettingsValidator validateOrientationSettingsWithBlock:];
  }

  orientationSettings = self->_orientationSettings;
  v10 = 0;
  v6 = v4[2](v4, orientationSettings, &v10);
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