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
  v3 = [(VGFaceSelectionState *)self capturedFrontPose];
  if (v3)
  {
    v4 = [(VGFaceSelectionState *)self capturedFrontPose];
    if ([v4 valid])
    {
      v5 = [(VGFaceSelectionState *)self capturedFrontPose];
      v6 = [v5 captureData];
      v7 = v6;
      if (v6)
      {
        [v6 timestamp];
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
  v14 = [(VGFaceSelectionState *)self yawAngleCaptured];
  v15 = [(VGFaceSelectionState *)self pitchAngleCaptured];
  v16 = [(VGFaceSelectionState *)self expressionCaptured];
  v17 = [(VGFaceSelectionState *)self capturedFrontPose];
  [(VGFaceSelectionState *)self completionScore];
  if (v17)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = [v24 stringWithFormat:@"Face frame selection state: completed %@ failed %@ updated %@ poseIndex %d progress %f yaw %@ pitch %@ expr %@ frontPose %@ (%lld) completionScore %.3f", v23, v9, v10, poseIndex_low, v13, v14, v15, v16, v19, v22, v18];

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