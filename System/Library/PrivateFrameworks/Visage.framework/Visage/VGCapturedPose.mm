@interface VGCapturedPose
- (BOOL)isEqual:(id)equal;
- (VGCapturedPose)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGCapturedPose

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  captureData = [(VGCapturedPose *)self captureData];
  [coderCopy encodeObject:captureData forKey:@"captureData"];

  trackingData = [(VGCapturedPose *)self trackingData];
  [coderCopy encodeObject:trackingData forKey:@"trackingData"];

  [coderCopy encodeBool:-[VGCapturedPose frontPose](self forKey:{"frontPose"), @"frontPose"}];
  [(VGCapturedPose *)self selectedAngle];
  [coderCopy encodeFloat:@"selectedAngle" forKey:?];
  [(VGCapturedPose *)self selectedPitch];
  [coderCopy encodeFloat:@"selectedPitch" forKey:?];
  [(VGCapturedPose *)self selectedYaw];
  [coderCopy encodeFloat:@"selectedYaw" forKey:?];
  bodyPoseFrameState = [(VGCapturedPose *)self bodyPoseFrameState];

  if (bodyPoseFrameState)
  {
    bodyPoseFrameState2 = [(VGCapturedPose *)self bodyPoseFrameState];
    [coderCopy encodeObject:bodyPoseFrameState2 forKey:@"bodyPoseFrameState"];
  }
}

- (VGCapturedPose)initWithCoder:(id)coder
{
  v18[7] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = VGCapturedPose;
  v5 = [(VGCapturedPose *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"captureData"];
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
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"trackingData"];
    [(VGCapturedPose *)v5 setTrackingData:v10];

    -[VGCapturedPose setFrontPose:](v5, "setFrontPose:", [coderCopy decodeBoolForKey:@"frontPose"]);
    [coderCopy decodeFloatForKey:@"selectedAngle"];
    [(VGCapturedPose *)v5 setSelectedAngle:?];
    if ([coderCopy containsValueForKey:@"selectedPitch"])
    {
      [coderCopy decodeFloatForKey:@"selectedPitch"];
    }

    else
    {
      LODWORD(v11) = 2139095040;
    }

    [(VGCapturedPose *)v5 setSelectedPitch:v11];
    if ([coderCopy containsValueForKey:@"selectedYaw"])
    {
      [coderCopy decodeFloatForKey:@"selectedYaw"];
    }

    else
    {
      LODWORD(v12) = 2139095040;
    }

    [(VGCapturedPose *)v5 setSelectedYaw:v12];
    if ([coderCopy containsValueForKey:@"bodyPoseFrameState"])
    {
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodyPoseFrameState"];
      [(VGCapturedPose *)v5 setBodyPoseFrameState:v13];
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_35;
  }

  v8 = equalCopy;
  v9 = v8;
  captureData = self->_captureData;
  v11 = captureData;
  if (!captureData)
  {
    captureData = [v8 captureData];
    if (!captureData)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v11 = self->_captureData;
  }

  captureData2 = [v9 captureData];
  if (![(VGCaptureData *)v11 isEqual:captureData2])
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
    trackingData = [v9 trackingData];
    if (!trackingData)
    {
      trackingData = 0;
      v33 = captureData;
      v16 = 0;
      goto LABEL_17;
    }

    v15 = self->_trackingData;
  }

  trackingData2 = [v9 trackingData];
  if (([(NSDictionary *)v15 isEqual:trackingData2]& 1) == 0)
  {

    v13 = 0;
    goto LABEL_29;
  }

  v33 = captureData;
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
            bodyPoseFrameState = [v9 bodyPoseFrameState];
            if (!bodyPoseFrameState)
            {
              v27 = 0;
              v13 = 1;
              captureData = v33;
LABEL_39:

              if ((v16 & 1) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

            v29 = bodyPoseFrameState;
            v25 = self->_bodyPoseFrameState;
          }

          v31 = bodyPoseFrameState;
          v13 = [(VGBodyPoseFrameState *)v25 isEqual:v9[5], v29];
          captureData = v33;
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
  captureData = v33;
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