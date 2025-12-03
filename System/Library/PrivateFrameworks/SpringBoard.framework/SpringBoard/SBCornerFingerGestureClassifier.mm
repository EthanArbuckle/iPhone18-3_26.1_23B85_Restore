@interface SBCornerFingerGestureClassifier
- (BOOL)classifySwipeWithOffsettedAngle:(double)angle distanceToCorner:(double)corner portrait:(BOOL)portrait;
- (SBCornerFingerGestureClassifier)initWithSettings:(id)settings;
@end

@implementation SBCornerFingerGestureClassifier

- (SBCornerFingerGestureClassifier)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = SBCornerFingerGestureClassifier;
  v6 = [(SBCornerFingerGestureClassifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
  }

  return v7;
}

- (BOOL)classifySwipeWithOffsettedAngle:(double)angle distanceToCorner:(double)corner portrait:(BOOL)portrait
{
  portraitCopy = portrait;
  if (angle < -180.0)
  {
    [SBCornerFingerGestureClassifier classifySwipeWithOffsettedAngle:distanceToCorner:portrait:];
  }

  if (angle > 180.0)
  {
    [SBCornerFingerGestureClassifier classifySwipeWithOffsettedAngle:distanceToCorner:portrait:];
  }

  v9 = [(SBCornerFingerPanGestureSettings *)self->_settings angleDegreesAscendingLUT:portraitCopy];
  v10 = [(SBCornerFingerPanGestureSettings *)self->_settings distanceMillimetersValues:portraitCopy];
  v11 = [(SBCornerFingerPanGestureSettings *)self->_settings vectorCount:portraitCopy];
  if (v9)
  {
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_13:
    [SBCornerFingerGestureClassifier classifySwipeWithOffsettedAngle:distanceToCorner:portrait:];
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_14:
    [SBCornerFingerGestureClassifier classifySwipeWithOffsettedAngle:distanceToCorner:portrait:];
    goto LABEL_8;
  }

  [SBCornerFingerGestureClassifier classifySwipeWithOffsettedAngle:distanceToCorner:portrait:];
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (*v9 >= angle || v9[v11 - 1] <= angle)
  {
    return 0;
  }

  indexingAscendingLUT(v9, v11, angle);
  return resampleLinearInterpolation(v10, v11, v12) > corner;
}

- (void)classifySwipeWithOffsettedAngle:distanceToCorner:portrait:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"offsettedAngleDeg >= -180" object:? file:? lineNumber:? description:?];
}

- (void)classifySwipeWithOffsettedAngle:distanceToCorner:portrait:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"offsettedAngleDeg <= 180" object:? file:? lineNumber:? description:?];
}

- (void)classifySwipeWithOffsettedAngle:distanceToCorner:portrait:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)classifySwipeWithOffsettedAngle:distanceToCorner:portrait:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)classifySwipeWithOffsettedAngle:distanceToCorner:portrait:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end