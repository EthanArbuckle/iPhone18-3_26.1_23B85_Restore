@interface VGBodyPoseGuidanceOptions
- (BOOL)isEqual:(id)a3;
- (VGBodyPoseGuidanceOptions)init;
- (VGBodyPoseGuidanceOptions)initWithCoder:(id)a3;
- (VGBodyPoseGuidanceOptions)initWithSuiteName:(id)a3;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)setDefaultsWithSuiteName:(id)a3;
@end

@implementation VGBodyPoseGuidanceOptions

- (VGBodyPoseGuidanceOptions)init
{
  v34.receiver = self;
  v34.super_class = VGBodyPoseGuidanceOptions;
  v2 = [(VGBodyPoseGuidanceOptions *)&v34 init];
  if (v2)
  {
    [objc_opt_class() defaultTorsoHeadTargetMin];
    v2->_torsoHeadTargetMin = v3;
    [objc_opt_class() defaultTorsoHeadTargetMax];
    v2->_torsoHeadTargetMax = v4;
    [objc_opt_class() defaultTorsoHeadMarginMin];
    v2->_torsoHeadMarginMin = v5;
    [objc_opt_class() defaultTorsoHeadMarginMax];
    v2->_torsoHeadMarginMax = v6;
    [objc_opt_class() defaultShouldersTwistTargetMin];
    v2->_shouldersTwistTargetMin = v7;
    [objc_opt_class() defaultShouldersTwistTargetMax];
    v2->_shouldersTwistTargetMax = v8;
    [objc_opt_class() defaultShouldersTwistMarginMin];
    v2->_shouldersTwistMarginMin = v9;
    [objc_opt_class() defaultShouldersTwistMarginMax];
    v2->_shouldersTwistMarginMax = v10;
    [objc_opt_class() defaultLeftElbowTargetMin];
    v2->_leftElbowTargetMin = v11;
    [objc_opt_class() defaultLeftElbowTargetMax];
    v2->_leftElbowTargetMax = v12;
    [objc_opt_class() defaultLeftElbowMarginMin];
    v2->_leftElbowMarginMin = v13;
    [objc_opt_class() defaultLeftElbowMarginMax];
    v2->_leftElbowMarginMax = v14;
    [objc_opt_class() defaultRightElbowTargetMin];
    v2->_rightElbowTargetMin = v15;
    [objc_opt_class() defaultRightElbowTargetMax];
    v2->_rightElbowTargetMax = v16;
    [objc_opt_class() defaultRightElbowMarginMin];
    v2->_rightElbowMarginMin = v17;
    [objc_opt_class() defaultRightElbowMarginMax];
    v2->_rightElbowMarginMax = v18;
    [objc_opt_class() defaultShouldersHeightAsymmetryTargetMin];
    v2->_shouldersHeightAsymmetryTargetMin = v19;
    [objc_opt_class() defaultShouldersHeightAsymmetryTargetMax];
    v2->_shouldersHeightAsymmetryTargetMax = v20;
    [objc_opt_class() defaultShouldersHeightAsymmetryMarginMin];
    v2->_shouldersHeightAsymmetryMarginMin = v21;
    [objc_opt_class() defaultShouldersHeightAsymmetryMarginMax];
    v2->_shouldersHeightAsymmetryMarginMax = v22;
    [objc_opt_class() defaultLeftShoulderForwardTargetMin];
    v2->_leftShoulderForwardTargetMin = v23;
    [objc_opt_class() defaultLeftShoulderForwardTargetMax];
    v2->_leftShoulderForwardTargetMax = v24;
    [objc_opt_class() defaultLeftShoulderForwardMarginMin];
    v2->_leftShoulderForwardMarginMin = v25;
    [objc_opt_class() defaultLeftShoulderForwardMarginMax];
    v2->_leftShoulderForwardMarginMax = v26;
    [objc_opt_class() defaultRightShoulderForwardTargetMin];
    v2->_rightShoulderForwardTargetMin = v27;
    [objc_opt_class() defaultRightShoulderForwardTargetMax];
    v2->_rightShoulderForwardTargetMax = v28;
    [objc_opt_class() defaultRightShoulderForwardMarginMin];
    v2->_rightShoulderForwardMarginMin = v29;
    [objc_opt_class() defaultRightShoulderForwardMarginMax];
    v2->_rightShoulderForwardMarginMax = v30;
    [objc_opt_class() defaultBestAlignmentToleranceAngleFrontPose];
    v2->_bestAlignmentToleranceAngleFrontPose = v31;
    v32 = v2;
  }

  return v2;
}

- (VGBodyPoseGuidanceOptions)initWithSuiteName:(id)a3
{
  v4 = a3;
  v5 = [(VGBodyPoseGuidanceOptions *)self init];
  v6 = v5;
  if (v5)
  {
    [(VGBodyPoseGuidanceOptions *)v5 setDefaultsWithSuiteName:v4];
    v7 = v6;
  }

  return v6;
}

- (void)setDefaultsWithSuiteName:(id)a3
{
  v63 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v63];
  v5 = [v4 objectForKey:@"torsoHeadTargetMin"];

  if (v5)
  {
    [v4 floatForKey:@"torsoHeadTargetMin"];
    self->_torsoHeadTargetMin = v6;
  }

  v7 = [v4 objectForKey:@"torsoHeadTargetMax"];

  if (v7)
  {
    [v4 floatForKey:@"torsoHeadTargetMax"];
    self->_torsoHeadTargetMax = v8;
  }

  v9 = [v4 objectForKey:@"torsoHeadMarginMin"];

  if (v9)
  {
    [v4 floatForKey:@"torsoHeadMarginMin"];
    self->_torsoHeadMarginMin = v10;
  }

  v11 = [v4 objectForKey:@"torsoHeadMarginMax"];

  if (v11)
  {
    [v4 floatForKey:@"torsoHeadMarginMax"];
    self->_torsoHeadMarginMax = v12;
  }

  v13 = [v4 objectForKey:@"shouldersTwistTargetMin"];

  if (v13)
  {
    [v4 floatForKey:@"shouldersTwistTargetMin"];
    self->_shouldersTwistTargetMin = v14;
  }

  v15 = [v4 objectForKey:@"shouldersTwistTargetMax"];

  if (v15)
  {
    [v4 floatForKey:@"shouldersTwistTargetMax"];
    self->_shouldersTwistTargetMax = v16;
  }

  v17 = [v4 objectForKey:@"shouldersTwistMarginMin"];

  if (v17)
  {
    [v4 floatForKey:@"shouldersTwistMarginMin"];
    self->_shouldersTwistMarginMin = v18;
  }

  v19 = [v4 objectForKey:@"shouldersTwistMarginMax"];

  if (v19)
  {
    [v4 floatForKey:@"shouldersTwistMarginMax"];
    self->_shouldersTwistMarginMax = v20;
  }

  v21 = [v4 objectForKey:@"leftElbowTargetMin"];

  if (v21)
  {
    [v4 floatForKey:@"leftElbowTargetMin"];
    self->_leftElbowTargetMin = v22;
  }

  v23 = [v4 objectForKey:@"leftElbowTargetMax"];

  if (v23)
  {
    [v4 floatForKey:@"leftElbowTargetMax"];
    self->_leftElbowTargetMax = v24;
  }

  v25 = [v4 objectForKey:@"leftElbowMarginMin"];

  if (v25)
  {
    [v4 floatForKey:@"leftElbowMarginMin"];
    self->_leftElbowMarginMin = v26;
  }

  v27 = [v4 objectForKey:@"leftElbowMarginMax"];

  if (v27)
  {
    [v4 floatForKey:@"leftElbowMarginMax"];
    self->_leftElbowMarginMax = v28;
  }

  v29 = [v4 objectForKey:@"rightElbowTargetMin"];

  if (v29)
  {
    [v4 floatForKey:@"rightElbowTargetMin"];
    self->_rightElbowTargetMin = v30;
  }

  v31 = [v4 objectForKey:@"rightElbowTargetMax"];

  if (v31)
  {
    [v4 floatForKey:@"rightElbowTargetMax"];
    self->_rightElbowTargetMax = v32;
  }

  v33 = [v4 objectForKey:@"rightElbowMarginMin"];

  if (v33)
  {
    [v4 floatForKey:@"rightElbowMarginMin"];
    self->_rightElbowMarginMin = v34;
  }

  v35 = [v4 objectForKey:@"rightElbowMarginMax"];

  if (v35)
  {
    [v4 floatForKey:@"rightElbowMarginMax"];
    self->_rightElbowMarginMax = v36;
  }

  v37 = [v4 objectForKey:@"shouldersHeightAsymmetryTargetMin"];

  if (v37)
  {
    [v4 floatForKey:@"shouldersHeightAsymmetryTargetMin"];
    self->_shouldersHeightAsymmetryTargetMin = v38;
  }

  v39 = [v4 objectForKey:@"shouldersHeightAsymmetryTargetMax"];

  if (v39)
  {
    [v4 floatForKey:@"shouldersHeightAsymmetryTargetMax"];
    self->_shouldersHeightAsymmetryTargetMax = v40;
  }

  v41 = [v4 objectForKey:@"shouldersHeightAsymmetryMarginMin"];

  if (v41)
  {
    [v4 floatForKey:@"shouldersHeightAsymmetryMarginMin"];
    self->_shouldersHeightAsymmetryMarginMin = v42;
  }

  v43 = [v4 objectForKey:@"shouldersHeightAsymmetryMarginMax"];

  if (v43)
  {
    [v4 floatForKey:@"shouldersHeightAsymmetryMarginMax"];
    self->_shouldersHeightAsymmetryMarginMax = v44;
  }

  v45 = [v4 objectForKey:@"leftShoulderForwardTargetMin"];

  if (v45)
  {
    [v4 floatForKey:@"leftShoulderForwardTargetMin"];
    self->_leftShoulderForwardTargetMin = v46;
  }

  v47 = [v4 objectForKey:@"leftShoulderForwardTargetMax"];

  if (v47)
  {
    [v4 floatForKey:@"leftShoulderForwardTargetMax"];
    self->_leftShoulderForwardTargetMax = v48;
  }

  v49 = [v4 objectForKey:@"leftShoulderForwardMarginMin"];

  if (v49)
  {
    [v4 floatForKey:@"leftShoulderForwardMarginMin"];
    self->_leftShoulderForwardMarginMin = v50;
  }

  v51 = [v4 objectForKey:@"leftShoulderForwardMarginMax"];

  if (v51)
  {
    [v4 floatForKey:@"leftShoulderForwardMarginMax"];
    self->_leftShoulderForwardMarginMax = v52;
  }

  v53 = [v4 objectForKey:@"rightShoulderForwardTargetMin"];

  if (v53)
  {
    [v4 floatForKey:@"rightShoulderForwardTargetMin"];
    self->_rightShoulderForwardTargetMin = v54;
  }

  v55 = [v4 objectForKey:@"rightShoulderForwardTargetMax"];

  if (v55)
  {
    [v4 floatForKey:@"rightShoulderForwardTargetMax"];
    self->_rightShoulderForwardTargetMax = v56;
  }

  v57 = [v4 objectForKey:@"rightShoulderForwardMarginMin"];

  if (v57)
  {
    [v4 floatForKey:@"rightShoulderForwardMarginMin"];
    self->_rightShoulderForwardMarginMin = v58;
  }

  v59 = [v4 objectForKey:@"rightShoulderForwardMarginMax"];

  if (v59)
  {
    [v4 floatForKey:@"rightShoulderForwardMarginMax"];
    self->_rightShoulderForwardMarginMax = v60;
  }

  v61 = [v4 objectForKey:@"bestAlignmentToleranceAngleFrontPose"];

  if (v61)
  {
    [v4 floatForKey:@"bestAlignmentToleranceAngleFrontPose"];
    self->_bestAlignmentToleranceAngleFrontPose = v62;
  }
}

- (VGBodyPoseGuidanceOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VGBodyPoseGuidanceOptions *)self init];
  if (v5)
  {
    [objc_opt_class() defaultTorsoHeadTargetMin];
    v5->_torsoHeadTargetMin = v6;
    if ([v4 containsValueForKey:@"torsoHeadTargetMin"])
    {
      [v4 decodeFloatForKey:@"torsoHeadTargetMin"];
      v5->_torsoHeadTargetMin = v7;
    }

    [objc_opt_class() defaultTorsoHeadTargetMax];
    v5->_torsoHeadTargetMax = v8;
    if ([v4 containsValueForKey:@"torsoHeadTargetMax"])
    {
      [v4 decodeFloatForKey:@"torsoHeadTargetMax"];
      v5->_torsoHeadTargetMax = v9;
    }

    [objc_opt_class() defaultTorsoHeadMarginMin];
    v5->_torsoHeadMarginMin = v10;
    if ([v4 containsValueForKey:@"torsoHeadMarginMin"])
    {
      [v4 decodeFloatForKey:@"torsoHeadMarginMin"];
      v5->_torsoHeadMarginMin = v11;
    }

    [objc_opt_class() defaultTorsoHeadMarginMax];
    v5->_torsoHeadMarginMax = v12;
    if ([v4 containsValueForKey:@"torsoHeadMarginMax"])
    {
      [v4 decodeFloatForKey:@"torsoHeadMarginMax"];
      v5->_torsoHeadMarginMax = v13;
    }

    [objc_opt_class() defaultShouldersTwistTargetMin];
    v5->_shouldersTwistTargetMin = v14;
    if ([v4 containsValueForKey:@"shouldersTwistTargetMin"])
    {
      [v4 decodeFloatForKey:@"shouldersTwistTargetMin"];
      v5->_shouldersTwistTargetMin = v15;
    }

    [objc_opt_class() defaultShouldersTwistTargetMax];
    v5->_shouldersTwistTargetMax = v16;
    if ([v4 containsValueForKey:@"shouldersTwistTargetMax"])
    {
      [v4 decodeFloatForKey:@"shouldersTwistTargetMax"];
      v5->_shouldersTwistTargetMax = v17;
    }

    [objc_opt_class() defaultShouldersTwistMarginMin];
    v5->_shouldersTwistMarginMin = v18;
    if ([v4 containsValueForKey:@"shouldersTwistMarginMin"])
    {
      [v4 decodeFloatForKey:@"shouldersTwistMarginMin"];
      v5->_shouldersTwistMarginMin = v19;
    }

    [objc_opt_class() defaultShouldersTwistMarginMax];
    v5->_shouldersTwistMarginMax = v20;
    if ([v4 containsValueForKey:@"shouldersTwistMarginMax"])
    {
      [v4 decodeFloatForKey:@"shouldersTwistMarginMax"];
      v5->_shouldersTwistMarginMax = v21;
    }

    [objc_opt_class() defaultLeftElbowTargetMin];
    v5->_leftElbowTargetMin = v22;
    if ([v4 containsValueForKey:@"leftElbowTargetMin"])
    {
      [v4 decodeFloatForKey:@"leftElbowTargetMin"];
      v5->_leftElbowTargetMin = v23;
    }

    [objc_opt_class() defaultLeftElbowTargetMax];
    v5->_leftElbowTargetMax = v24;
    if ([v4 containsValueForKey:@"leftElbowTargetMax"])
    {
      [v4 decodeFloatForKey:@"leftElbowTargetMax"];
      v5->_leftElbowTargetMax = v25;
    }

    [objc_opt_class() defaultLeftElbowMarginMin];
    v5->_leftElbowMarginMin = v26;
    if ([v4 containsValueForKey:@"leftElbowMarginMin"])
    {
      [v4 decodeFloatForKey:@"leftElbowMarginMin"];
      v5->_leftElbowMarginMin = v27;
    }

    [objc_opt_class() defaultLeftElbowMarginMax];
    v5->_leftElbowMarginMax = v28;
    if ([v4 containsValueForKey:@"leftElbowMarginMax"])
    {
      [v4 decodeFloatForKey:@"leftElbowMarginMax"];
      v5->_leftElbowMarginMax = v29;
    }

    [objc_opt_class() defaultRightElbowTargetMin];
    v5->_rightElbowTargetMin = v30;
    if ([v4 containsValueForKey:@"rightElbowTargetMin"])
    {
      [v4 decodeFloatForKey:@"rightElbowTargetMin"];
      v5->_rightElbowTargetMin = v31;
    }

    [objc_opt_class() defaultRightElbowTargetMax];
    v5->_rightElbowTargetMax = v32;
    if ([v4 containsValueForKey:@"rightElbowTargetMax"])
    {
      [v4 decodeFloatForKey:@"rightElbowTargetMax"];
      v5->_rightElbowTargetMax = v33;
    }

    [objc_opt_class() defaultRightElbowMarginMin];
    v5->_rightElbowMarginMin = v34;
    if ([v4 containsValueForKey:@"rightElbowMarginMin"])
    {
      [v4 decodeFloatForKey:@"rightElbowMarginMin"];
      v5->_rightElbowMarginMin = v35;
    }

    [objc_opt_class() defaultRightElbowMarginMax];
    v5->_rightElbowMarginMax = v36;
    if ([v4 containsValueForKey:@"rightElbowMarginMax"])
    {
      [v4 decodeFloatForKey:@"rightElbowMarginMax"];
      v5->_rightElbowMarginMax = v37;
    }

    [objc_opt_class() defaultShouldersHeightAsymmetryTargetMin];
    v5->_shouldersHeightAsymmetryTargetMin = v38;
    if ([v4 containsValueForKey:@"shouldersHeightAsymmetryTargetMin"])
    {
      [v4 decodeFloatForKey:@"shouldersHeightAsymmetryTargetMin"];
      v5->_shouldersHeightAsymmetryTargetMin = v39;
    }

    [objc_opt_class() defaultShouldersHeightAsymmetryTargetMax];
    v5->_shouldersHeightAsymmetryTargetMax = v40;
    if ([v4 containsValueForKey:@"shouldersHeightAsymmetryTargetMax"])
    {
      [v4 decodeFloatForKey:@"shouldersHeightAsymmetryTargetMax"];
      v5->_shouldersHeightAsymmetryTargetMax = v41;
    }

    [objc_opt_class() defaultShouldersHeightAsymmetryMarginMin];
    v5->_shouldersHeightAsymmetryMarginMin = v42;
    if ([v4 containsValueForKey:@"shouldersHeightAsymmetryMarginMin"])
    {
      [v4 decodeFloatForKey:@"shouldersHeightAsymmetryMarginMin"];
      v5->_shouldersHeightAsymmetryMarginMin = v43;
    }

    [objc_opt_class() defaultShouldersHeightAsymmetryMarginMax];
    v5->_shouldersHeightAsymmetryMarginMax = v44;
    if ([v4 containsValueForKey:@"shouldersHeightAsymmetryMarginMax"])
    {
      [v4 decodeFloatForKey:@"shouldersHeightAsymmetryMarginMax"];
      v5->_shouldersHeightAsymmetryMarginMax = v45;
    }

    [objc_opt_class() defaultLeftShoulderForwardTargetMin];
    v5->_leftShoulderForwardTargetMin = v46;
    if ([v4 containsValueForKey:@"leftShoulderForwardTargetMin"])
    {
      [v4 decodeFloatForKey:@"leftShoulderForwardTargetMin"];
      v5->_leftShoulderForwardTargetMin = v47;
    }

    [objc_opt_class() defaultLeftShoulderForwardTargetMax];
    v5->_leftShoulderForwardTargetMax = v48;
    if ([v4 containsValueForKey:@"leftShoulderForwardTargetMax"])
    {
      [v4 decodeFloatForKey:@"leftShoulderForwardTargetMax"];
      v5->_leftShoulderForwardTargetMax = v49;
    }

    [objc_opt_class() defaultLeftShoulderForwardMarginMin];
    v5->_leftShoulderForwardMarginMin = v50;
    if ([v4 containsValueForKey:@"leftShoulderForwardMarginMin"])
    {
      [v4 decodeFloatForKey:@"leftShoulderForwardMarginMin"];
      v5->_leftShoulderForwardMarginMin = v51;
    }

    [objc_opt_class() defaultLeftShoulderForwardMarginMax];
    v5->_leftShoulderForwardMarginMax = v52;
    if ([v4 containsValueForKey:@"leftShoulderForwardMarginMax"])
    {
      [v4 decodeFloatForKey:@"leftShoulderForwardMarginMax"];
      v5->_leftShoulderForwardMarginMax = v53;
    }

    [objc_opt_class() defaultRightShoulderForwardTargetMin];
    v5->_rightShoulderForwardTargetMin = v54;
    if ([v4 containsValueForKey:@"rightShoulderForwardTargetMin"])
    {
      [v4 decodeFloatForKey:@"rightShoulderForwardTargetMin"];
      v5->_rightShoulderForwardTargetMin = v55;
    }

    [objc_opt_class() defaultRightShoulderForwardTargetMax];
    v5->_rightShoulderForwardTargetMax = v56;
    if ([v4 containsValueForKey:@"rightShoulderForwardTargetMax"])
    {
      [v4 decodeFloatForKey:@"rightShoulderForwardTargetMax"];
      v5->_rightShoulderForwardTargetMax = v57;
    }

    [objc_opt_class() defaultRightShoulderForwardMarginMin];
    v5->_rightShoulderForwardMarginMin = v58;
    if ([v4 containsValueForKey:@"rightShoulderForwardMarginMin"])
    {
      [v4 decodeFloatForKey:@"rightShoulderForwardMarginMin"];
      v5->_rightShoulderForwardMarginMin = v59;
    }

    [objc_opt_class() defaultRightShoulderForwardMarginMax];
    v5->_rightShoulderForwardMarginMax = v60;
    if ([v4 containsValueForKey:@"rightShoulderForwardMarginMax"])
    {
      [v4 decodeFloatForKey:@"rightShoulderForwardMarginMax"];
      v5->_rightShoulderForwardMarginMax = v61;
    }

    [objc_opt_class() defaultBestAlignmentToleranceAngleFrontPose];
    v5->_bestAlignmentToleranceAngleFrontPose = v62;
    if ([v4 containsValueForKey:@"bestAlignmentToleranceAngleFrontPose"])
    {
      [v4 decodeFloatForKey:@"bestAlignmentToleranceAngleFrontPose"];
      v5->_bestAlignmentToleranceAngleFrontPose = v63;
    }

    v64 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  *&v5 = self->_torsoHeadTargetMin;
  v34 = v4;
  [v4 encodeFloat:@"torsoHeadTargetMin" forKey:v5];
  *&v6 = self->_torsoHeadTargetMax;
  [v34 encodeFloat:@"torsoHeadTargetMax" forKey:v6];
  *&v7 = self->_torsoHeadMarginMin;
  [v34 encodeFloat:@"torsoHeadMarginMin" forKey:v7];
  *&v8 = self->_torsoHeadMarginMax;
  [v34 encodeFloat:@"torsoHeadMarginMax" forKey:v8];
  *&v9 = self->_shouldersTwistTargetMin;
  [v34 encodeFloat:@"shouldersTwistTargetMin" forKey:v9];
  *&v10 = self->_shouldersTwistTargetMax;
  [v34 encodeFloat:@"shouldersTwistTargetMax" forKey:v10];
  *&v11 = self->_shouldersTwistMarginMin;
  [v34 encodeFloat:@"shouldersTwistMarginMin" forKey:v11];
  *&v12 = self->_shouldersTwistMarginMax;
  [v34 encodeFloat:@"shouldersTwistMarginMax" forKey:v12];
  *&v13 = self->_leftElbowTargetMin;
  [v34 encodeFloat:@"leftElbowTargetMin" forKey:v13];
  *&v14 = self->_leftElbowTargetMax;
  [v34 encodeFloat:@"leftElbowTargetMax" forKey:v14];
  *&v15 = self->_leftElbowMarginMin;
  [v34 encodeFloat:@"leftElbowMarginMin" forKey:v15];
  *&v16 = self->_leftElbowMarginMax;
  [v34 encodeFloat:@"leftElbowMarginMax" forKey:v16];
  *&v17 = self->_rightElbowTargetMin;
  [v34 encodeFloat:@"rightElbowTargetMin" forKey:v17];
  *&v18 = self->_rightElbowTargetMax;
  [v34 encodeFloat:@"rightElbowTargetMax" forKey:v18];
  *&v19 = self->_rightElbowMarginMin;
  [v34 encodeFloat:@"rightElbowMarginMin" forKey:v19];
  *&v20 = self->_rightElbowMarginMax;
  [v34 encodeFloat:@"rightElbowMarginMax" forKey:v20];
  *&v21 = self->_shouldersHeightAsymmetryTargetMin;
  [v34 encodeFloat:@"shouldersHeightAsymmetryTargetMin" forKey:v21];
  *&v22 = self->_shouldersHeightAsymmetryTargetMax;
  [v34 encodeFloat:@"shouldersHeightAsymmetryTargetMax" forKey:v22];
  *&v23 = self->_shouldersHeightAsymmetryMarginMin;
  [v34 encodeFloat:@"shouldersHeightAsymmetryMarginMin" forKey:v23];
  *&v24 = self->_shouldersHeightAsymmetryMarginMax;
  [v34 encodeFloat:@"shouldersHeightAsymmetryMarginMax" forKey:v24];
  *&v25 = self->_leftShoulderForwardTargetMin;
  [v34 encodeFloat:@"leftShoulderForwardTargetMin" forKey:v25];
  *&v26 = self->_leftShoulderForwardTargetMax;
  [v34 encodeFloat:@"leftShoulderForwardTargetMax" forKey:v26];
  *&v27 = self->_leftShoulderForwardMarginMin;
  [v34 encodeFloat:@"leftShoulderForwardMarginMin" forKey:v27];
  *&v28 = self->_leftShoulderForwardMarginMax;
  [v34 encodeFloat:@"leftShoulderForwardMarginMax" forKey:v28];
  *&v29 = self->_rightShoulderForwardTargetMin;
  [v34 encodeFloat:@"rightShoulderForwardTargetMin" forKey:v29];
  *&v30 = self->_rightShoulderForwardTargetMax;
  [v34 encodeFloat:@"rightShoulderForwardTargetMax" forKey:v30];
  *&v31 = self->_rightShoulderForwardMarginMin;
  [v34 encodeFloat:@"rightShoulderForwardMarginMin" forKey:v31];
  *&v32 = self->_rightShoulderForwardMarginMax;
  [v34 encodeFloat:@"rightShoulderForwardMarginMax" forKey:v32];
  *&v33 = self->_bestAlignmentToleranceAngleFrontPose;
  [v34 encodeFloat:@"bestAlignmentToleranceAngleFrontPose" forKey:v33];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    torsoHeadTargetMin = self->_torsoHeadTargetMin;
    [v5 torsoHeadTargetMin];
    if (torsoHeadTargetMin != v7)
    {
      goto LABEL_32;
    }

    torsoHeadTargetMax = self->_torsoHeadTargetMax;
    [v5 torsoHeadTargetMax];
    if (torsoHeadTargetMax != v9)
    {
      goto LABEL_32;
    }

    torsoHeadMarginMin = self->_torsoHeadMarginMin;
    [v5 torsoHeadMarginMin];
    if (torsoHeadMarginMin != v11)
    {
      goto LABEL_32;
    }

    torsoHeadMarginMax = self->_torsoHeadMarginMax;
    [v5 torsoHeadMarginMax];
    if (torsoHeadMarginMax != v13)
    {
      goto LABEL_32;
    }

    shouldersTwistTargetMin = self->_shouldersTwistTargetMin;
    [v5 shouldersTwistTargetMin];
    if (shouldersTwistTargetMin != v15)
    {
      goto LABEL_32;
    }

    shouldersTwistTargetMax = self->_shouldersTwistTargetMax;
    [v5 shouldersTwistTargetMax];
    if (shouldersTwistTargetMax != v17)
    {
      goto LABEL_32;
    }

    shouldersTwistMarginMin = self->_shouldersTwistMarginMin;
    [v5 shouldersTwistMarginMin];
    if (shouldersTwistMarginMin != v19)
    {
      goto LABEL_32;
    }

    shouldersTwistMarginMax = self->_shouldersTwistMarginMax;
    [v5 shouldersTwistMarginMax];
    if (shouldersTwistMarginMax != v21)
    {
      goto LABEL_32;
    }

    leftElbowTargetMin = self->_leftElbowTargetMin;
    [v5 leftElbowTargetMin];
    if (leftElbowTargetMin != v23)
    {
      goto LABEL_32;
    }

    leftElbowTargetMax = self->_leftElbowTargetMax;
    [v5 leftElbowTargetMax];
    if (leftElbowTargetMax != v25)
    {
      goto LABEL_32;
    }

    leftElbowMarginMin = self->_leftElbowMarginMin;
    [v5 leftElbowMarginMin];
    if (leftElbowMarginMin != v27)
    {
      goto LABEL_32;
    }

    leftElbowMarginMax = self->_leftElbowMarginMax;
    [v5 leftElbowMarginMax];
    if (leftElbowMarginMax != v29)
    {
      goto LABEL_32;
    }

    rightElbowTargetMin = self->_rightElbowTargetMin;
    [v5 rightElbowTargetMin];
    if (rightElbowTargetMin != v31)
    {
      goto LABEL_32;
    }

    rightElbowTargetMax = self->_rightElbowTargetMax;
    [v5 rightElbowTargetMax];
    if (rightElbowTargetMax != v33)
    {
      goto LABEL_32;
    }

    rightElbowMarginMin = self->_rightElbowMarginMin;
    [v5 rightElbowMarginMin];
    if (rightElbowMarginMin != v35)
    {
      goto LABEL_32;
    }

    rightElbowMarginMax = self->_rightElbowMarginMax;
    [v5 rightElbowMarginMax];
    if (rightElbowMarginMax != v37)
    {
      goto LABEL_32;
    }

    shouldersHeightAsymmetryTargetMin = self->_shouldersHeightAsymmetryTargetMin;
    [v5 shouldersHeightAsymmetryTargetMin];
    if (shouldersHeightAsymmetryTargetMin != v39)
    {
      goto LABEL_32;
    }

    shouldersHeightAsymmetryTargetMax = self->_shouldersHeightAsymmetryTargetMax;
    [v5 shouldersHeightAsymmetryTargetMax];
    if (shouldersHeightAsymmetryTargetMax != v41)
    {
      goto LABEL_32;
    }

    shouldersHeightAsymmetryMarginMin = self->_shouldersHeightAsymmetryMarginMin;
    [v5 shouldersHeightAsymmetryMarginMin];
    if (shouldersHeightAsymmetryMarginMin != v43)
    {
      goto LABEL_32;
    }

    shouldersHeightAsymmetryMarginMax = self->_shouldersHeightAsymmetryMarginMax;
    [v5 shouldersHeightAsymmetryMarginMax];
    if (shouldersHeightAsymmetryMarginMax != v45)
    {
      goto LABEL_32;
    }

    leftShoulderForwardTargetMin = self->_leftShoulderForwardTargetMin;
    [v5 leftShoulderForwardTargetMin];
    if (leftShoulderForwardTargetMin != v47)
    {
      goto LABEL_32;
    }

    leftShoulderForwardTargetMax = self->_leftShoulderForwardTargetMax;
    [v5 leftShoulderForwardTargetMax];
    if (leftShoulderForwardTargetMax != v49)
    {
      goto LABEL_32;
    }

    leftShoulderForwardMarginMin = self->_leftShoulderForwardMarginMin;
    [v5 leftShoulderForwardMarginMin];
    if (leftShoulderForwardMarginMin != v51)
    {
      goto LABEL_32;
    }

    leftShoulderForwardMarginMax = self->_leftShoulderForwardMarginMax;
    [v5 leftShoulderForwardMarginMax];
    if (leftShoulderForwardMarginMax != v53)
    {
      goto LABEL_32;
    }

    rightShoulderForwardTargetMin = self->_rightShoulderForwardTargetMin;
    [v5 rightShoulderForwardTargetMin];
    if (rightShoulderForwardTargetMin != v55)
    {
      goto LABEL_32;
    }

    rightShoulderForwardTargetMax = self->_rightShoulderForwardTargetMax;
    [v5 rightShoulderForwardTargetMax];
    if (rightShoulderForwardTargetMax == v57 && (rightShoulderForwardMarginMin = self->_rightShoulderForwardMarginMin, [v5 rightShoulderForwardMarginMin], rightShoulderForwardMarginMin == v59) && (rightShoulderForwardMarginMax = self->_rightShoulderForwardMarginMax, objc_msgSend(v5, "rightShoulderForwardMarginMax"), rightShoulderForwardMarginMax == v61))
    {
      bestAlignmentToleranceAngleFrontPose = self->_bestAlignmentToleranceAngleFrontPose;
      [v5 bestAlignmentToleranceAngleFrontPose];
      v64 = bestAlignmentToleranceAngleFrontPose == v63;
    }

    else
    {
LABEL_32:
      v64 = 0;
    }
  }

  else
  {
    v64 = 0;
  }

  return v64;
}

- (id)toDictionary
{
  v65[29] = *MEMORY[0x277D85DE8];
  v64[0] = @"torsoHeadTargetMin";
  *&v2 = self->_torsoHeadTargetMin;
  v63 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v65[0] = v63;
  v64[1] = @"torsoHeadTargetMax";
  *&v4 = self->_torsoHeadTargetMax;
  v62 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v65[1] = v62;
  v64[2] = @"torsoHeadMarginMin";
  *&v5 = self->_torsoHeadMarginMin;
  v61 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v65[2] = v61;
  v64[3] = @"torsoHeadMarginMax";
  *&v6 = self->_torsoHeadMarginMax;
  v60 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v65[3] = v60;
  v64[4] = @"shouldersTwistTargetMin";
  *&v7 = self->_shouldersTwistTargetMin;
  v59 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v65[4] = v59;
  v64[5] = @"shouldersTwistTargetMax";
  *&v8 = self->_shouldersTwistTargetMax;
  v58 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v65[5] = v58;
  v64[6] = @"shouldersTwistMarginMin";
  *&v9 = self->_shouldersTwistMarginMin;
  v57 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v65[6] = v57;
  v64[7] = @"shouldersTwistMarginMax";
  *&v10 = self->_shouldersTwistMarginMax;
  v56 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v65[7] = v56;
  v64[8] = @"leftElbowTargetMin";
  *&v11 = self->_leftElbowTargetMin;
  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v65[8] = v55;
  v64[9] = @"leftElbowTargetMax";
  *&v12 = self->_leftElbowTargetMax;
  v54 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v65[9] = v54;
  v64[10] = @"leftElbowMarginMin";
  *&v13 = self->_leftElbowMarginMin;
  v53 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v65[10] = v53;
  v64[11] = @"leftElbowMarginMax";
  *&v14 = self->_leftElbowMarginMax;
  v52 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v65[11] = v52;
  v64[12] = @"rightElbowTargetMin";
  *&v15 = self->_rightElbowTargetMin;
  v51 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v65[12] = v51;
  v64[13] = @"rightElbowTargetMax";
  *&v16 = self->_rightElbowTargetMax;
  v50 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v65[13] = v50;
  v64[14] = @"rightElbowMarginMin";
  *&v17 = self->_rightElbowMarginMin;
  v49 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v65[14] = v49;
  v64[15] = @"rightElbowMarginMax";
  *&v18 = self->_rightElbowMarginMax;
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v65[15] = v48;
  v64[16] = @"shouldersHeightAsymmetryTargetMin";
  *&v19 = self->_shouldersHeightAsymmetryTargetMin;
  v47 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v65[16] = v47;
  v64[17] = @"shouldersHeightAsymmetryTargetMax";
  *&v20 = self->_shouldersHeightAsymmetryTargetMax;
  v46 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v65[17] = v46;
  v64[18] = @"shouldersHeightAsymmetryMarginMin";
  *&v21 = self->_shouldersHeightAsymmetryMarginMin;
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v65[18] = v45;
  v64[19] = @"shouldersHeightAsymmetryMarginMax";
  *&v22 = self->_shouldersHeightAsymmetryMarginMax;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v65[19] = v44;
  v64[20] = @"leftShoulderForwardTargetMin";
  *&v23 = self->_leftShoulderForwardTargetMin;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v65[20] = v24;
  v64[21] = @"leftShoulderForwardTargetMax";
  *&v25 = self->_leftShoulderForwardTargetMax;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v65[21] = v26;
  v64[22] = @"leftShoulderForwardMarginMin";
  *&v27 = self->_leftShoulderForwardMarginMin;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v65[22] = v28;
  v64[23] = @"leftShoulderForwardMarginMax";
  *&v29 = self->_leftShoulderForwardMarginMax;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v65[23] = v30;
  v64[24] = @"rightShoulderForwardTargetMin";
  *&v31 = self->_rightShoulderForwardTargetMin;
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v65[24] = v32;
  v64[25] = @"rightShoulderForwardTargetMax";
  *&v33 = self->_rightShoulderForwardTargetMax;
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  v65[25] = v34;
  v64[26] = @"rightShoulderForwardMarginMin";
  *&v35 = self->_rightShoulderForwardMarginMin;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  v65[26] = v36;
  v64[27] = @"rightShoulderForwardMarginMax";
  *&v37 = self->_rightShoulderForwardMarginMax;
  v38 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
  v65[27] = v38;
  v64[28] = @"bestAlignmentToleranceAngleFrontPose";
  *&v39 = self->_bestAlignmentToleranceAngleFrontPose;
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v65[28] = v40;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:29];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

@end