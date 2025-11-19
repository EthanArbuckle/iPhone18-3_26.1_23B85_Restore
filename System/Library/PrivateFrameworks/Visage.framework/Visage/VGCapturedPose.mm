@interface VGCapturedPose
- (BOOL)isEqual:(id)a3;
- (VGCapturedPose)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGCapturedPose

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(VGCapturedPose *)self captureData];
  [v8 encodeObject:v4 forKey:@"captureData"];

  v5 = [(VGCapturedPose *)self trackingData];
  [v8 encodeObject:v5 forKey:@"trackingData"];

  [v8 encodeBool:-[VGCapturedPose frontPose](self forKey:{"frontPose"), @"frontPose"}];
  [(VGCapturedPose *)self selectedAngle];
  [v8 encodeFloat:@"selectedAngle" forKey:?];
  [(VGCapturedPose *)self selectedPitch];
  [v8 encodeFloat:@"selectedPitch" forKey:?];
  [(VGCapturedPose *)self selectedYaw];
  [v8 encodeFloat:@"selectedYaw" forKey:?];
  v6 = [(VGCapturedPose *)self bodyPoseFrameState];

  if (v6)
  {
    v7 = [(VGCapturedPose *)self bodyPoseFrameState];
    [v8 encodeObject:v7 forKey:@"bodyPoseFrameState"];
  }
}

- (VGCapturedPose)initWithCoder:(id)a3
{
  v18[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VGCapturedPose;
  v5 = [(VGCapturedPose *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"captureData"];
    [(VGCapturedPose *)v5 setCaptureData:v6];

    v7 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v18[5] = objc_opt_class();
    v18[6] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"trackingData"];
    [(VGCapturedPose *)v5 setTrackingData:v10];

    -[VGCapturedPose setFrontPose:](v5, "setFrontPose:", [v4 decodeBoolForKey:@"frontPose"]);
    [v4 decodeFloatForKey:@"selectedAngle"];
    [(VGCapturedPose *)v5 setSelectedAngle:?];
    if ([v4 containsValueForKey:@"selectedPitch"])
    {
      [v4 decodeFloatForKey:@"selectedPitch"];
    }

    else
    {
      LODWORD(v11) = 2139095040;
    }

    [(VGCapturedPose *)v5 setSelectedPitch:v11];
    if ([v4 containsValueForKey:@"selectedYaw"])
    {
      [v4 decodeFloatForKey:@"selectedYaw"];
    }

    else
    {
      LODWORD(v12) = 2139095040;
    }

    [(VGCapturedPose *)v5 setSelectedYaw:v12];
    if ([v4 containsValueForKey:@"bodyPoseFrameState"])
    {
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bodyPoseFrameState"];
      [(VGCapturedPose *)v5 setBodyPoseFrameState:v13];
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_35;
  }

  v8 = v7;
  v9 = v8;
  captureData = self->_captureData;
  v11 = captureData;
  if (!captureData)
  {
    v3 = [v8 captureData];
    if (!v3)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v11 = self->_captureData;
  }

  v4 = [v9 captureData];
  if (![(VGCaptureData *)v11 isEqual:v4])
  {

    v13 = 0;
    goto LABEL_32;
  }

  v12 = 1;
LABEL_10:
  trackingData = self->_trackingData;
  v15 = trackingData;
  if (!trackingData)
  {
    v32 = [v9 trackingData];
    if (!v32)
    {
      v32 = 0;
      v33 = v3;
      v16 = 0;
      goto LABEL_17;
    }

    v15 = self->_trackingData;
  }

  v5 = [v9 trackingData];
  if (([(NSDictionary *)v15 isEqual:v5]& 1) == 0)
  {

    v13 = 0;
    goto LABEL_29;
  }

  v33 = v3;
  v16 = 1;
LABEL_17:
  frontPose = self->_frontPose;
  if (frontPose == [v9 frontPose])
  {
    selectedAngle = self->_selectedAngle;
    [v9 selectedAngle];
    if (selectedAngle == v19)
    {
      selectedPitch = self->_selectedPitch;
      [v9 selectedPitch];
      if (selectedPitch == v21)
      {
        selectedYaw = self->_selectedYaw;
        [v9 selectedYaw];
        if (selectedYaw == v23)
        {
          bodyPoseFrameState = self->_bodyPoseFrameState;
          v25 = bodyPoseFrameState;
          if (!bodyPoseFrameState)
          {
            v26 = [v9 bodyPoseFrameState];
            if (!v26)
            {
              v27 = 0;
              v13 = 1;
              v3 = v33;
LABEL_39:

              if ((v16 & 1) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

            v29 = v26;
            v25 = self->_bodyPoseFrameState;
          }

          v31 = bodyPoseFrameState;
          v13 = [(VGBodyPoseFrameState *)v25 isEqual:v9[5], v29];
          v3 = v33;
          v27 = v30;
          if (v31)
          {
            if (!v16)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

          goto LABEL_39;
        }
      }
    }
  }

  v13 = 0;
  v3 = v33;
  if (v16)
  {
LABEL_28:
  }

LABEL_29:
  if (!trackingData)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v12)
  {
LABEL_31:
  }

LABEL_32:
  if (!captureData)
  {
  }

LABEL_35:
  return v13;
}

@end