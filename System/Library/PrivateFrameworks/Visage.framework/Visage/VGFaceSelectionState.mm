@interface VGFaceSelectionState
- (BOOL)updated;
- (VGFaceSelectionState)init;
- (id)description;
@end

@implementation VGFaceSelectionState

- (VGFaceSelectionState)init
{
  v6.receiver = self;
  v6.super_class = VGFaceSelectionState;
  v2 = [(VGFaceSelectionState *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_poseIndex = -1;
    v4 = v2;
  }

  return v3;
}

- (id)description
{
  capturedFrontPose = [(VGFaceSelectionState *)self capturedFrontPose];
  if (capturedFrontPose)
  {
    capturedFrontPose2 = [(VGFaceSelectionState *)self capturedFrontPose];
    if ([capturedFrontPose2 valid])
    {
      capturedFrontPose3 = [(VGFaceSelectionState *)self capturedFrontPose];
      captureData = [capturedFrontPose3 captureData];
      v7 = captureData;
      if (captureData)
      {
        [captureData timestamp];
        v22 = v25;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = -1;
    }
  }

  else
  {
    v22 = -1;
  }

  v24 = MEMORY[0x277CCACA8];
  if ([(VGSelectionState *)self completed])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v23 = v8;
  if ([(VGSelectionState *)self failed])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(VGFaceSelectionState *)self updated])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  poseIndex_low = LODWORD(self->_poseIndex);
  [(VGSelectionState *)self progress];
  v13 = v12;
  yawAngleCaptured = [(VGFaceSelectionState *)self yawAngleCaptured];
  pitchAngleCaptured = [(VGFaceSelectionState *)self pitchAngleCaptured];
  expressionCaptured = [(VGFaceSelectionState *)self expressionCaptured];
  capturedFrontPose4 = [(VGFaceSelectionState *)self capturedFrontPose];
  [(VGFaceSelectionState *)self completionScore];
  if (capturedFrontPose4)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = [v24 stringWithFormat:@"Face frame selection state: completed %@ failed %@ updated %@ poseIndex %d progress %f yaw %@ pitch %@ expr %@ frontPose %@ (%lld) completionScore %.3f", v23, v9, v10, poseIndex_low, v13, yawAngleCaptured, pitchAngleCaptured, expressionCaptured, v19, v22, v18];

  return v20;
}

- (BOOL)updated
{
  rejectionState = self->_rejectionState;
  if (rejectionState)
  {
    LOBYTE(rejectionState) = [(VGFrameRejectionState *)rejectionState reason]== 0;
  }

  return rejectionState;
}

@end