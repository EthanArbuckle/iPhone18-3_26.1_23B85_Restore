@interface VGFaceSelectionFrustum
- (BOOL)isEqual:(id)a3;
- (VGFaceSelectionFrustum)init;
- (VGFaceSelectionFrustum)initWithCoder:(id)a3;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGFaceSelectionFrustum

- (VGFaceSelectionFrustum)init
{
  v9.receiver = self;
  v9.super_class = VGFaceSelectionFrustum;
  v2 = [(VGFaceSelectionFrustum *)&v9 init];
  if (v2)
  {
    [objc_opt_class() defaultYawOffsetLeft];
    v2->_yawOffsetLeft = v3;
    [objc_opt_class() defaultYawOffsetRight];
    v2->_yawOffsetRight = v4;
    [objc_opt_class() defaultPitchOffsetTop];
    v2->_pitchOffsetTop = v5;
    [objc_opt_class() defaultPitchOffsetBottom];
    v2->_pitchOffsetBottom = v6;
    v7 = v2;
  }

  return v2;
}

- (VGFaceSelectionFrustum)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VGFaceSelectionFrustum *)self init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"selectionFrustumYawOffsetLeft"])
    {
      [v4 decodeFloatForKey:@"selectionFrustumYawOffsetLeft"];
      v5->_yawOffsetLeft = v6;
    }

    if ([v4 containsValueForKey:@"selectionFrustumYawOffsetRight"])
    {
      [v4 decodeFloatForKey:@"selectionFrustumYawOffsetRight"];
      v5->_yawOffsetRight = v7;
    }

    if ([v4 containsValueForKey:@"selectionFrustumPitchOffsetTop"])
    {
      [v4 decodeFloatForKey:@"selectionFrustumPitchOffsetTop"];
      v5->_pitchOffsetTop = v8;
    }

    if ([v4 containsValueForKey:@"selectionFrustumPitchOffsetBottom"])
    {
      [v4 decodeFloatForKey:@"selectionFrustumPitchOffsetBottom"];
      v5->_pitchOffsetBottom = v9;
    }

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  *&v5 = self->_yawOffsetLeft;
  v9 = v4;
  [v4 encodeFloat:@"selectionFrustumYawOffsetLeft" forKey:v5];
  *&v6 = self->_yawOffsetRight;
  [v9 encodeFloat:@"selectionFrustumYawOffsetRight" forKey:v6];
  *&v7 = self->_pitchOffsetTop;
  [v9 encodeFloat:@"selectionFrustumPitchOffsetTop" forKey:v7];
  *&v8 = self->_pitchOffsetBottom;
  [v9 encodeFloat:@"selectionFrustumPitchOffsetBottom" forKey:v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    yawOffsetLeft = self->_yawOffsetLeft;
    [v5 yawOffsetLeft];
    if (yawOffsetLeft == v7 && (yawOffsetRight = self->_yawOffsetRight, [v5 yawOffsetRight], yawOffsetRight == v9) && (pitchOffsetTop = self->_pitchOffsetTop, objc_msgSend(v5, "pitchOffsetTop"), pitchOffsetTop == v11))
    {
      pitchOffsetBottom = self->_pitchOffsetBottom;
      [v5 pitchOffsetBottom];
      v14 = pitchOffsetBottom == v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)toDictionary
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"yawOffsetLeft";
  *&v2 = self->_yawOffsetLeft;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v15[0] = v4;
  v14[1] = @"yawOffsetRight";
  *&v5 = self->_yawOffsetRight;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v15[1] = v6;
  v14[2] = @"pitchOffsetTop";
  *&v7 = self->_pitchOffsetTop;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v15[2] = v8;
  v14[3] = @"pitchOffsetBottom";
  *&v9 = self->_pitchOffsetBottom;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end