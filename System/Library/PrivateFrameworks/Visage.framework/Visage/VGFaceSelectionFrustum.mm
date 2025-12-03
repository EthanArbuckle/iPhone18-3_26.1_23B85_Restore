@interface VGFaceSelectionFrustum
- (BOOL)isEqual:(id)equal;
- (VGFaceSelectionFrustum)init;
- (VGFaceSelectionFrustum)initWithCoder:(id)coder;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
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

- (VGFaceSelectionFrustum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VGFaceSelectionFrustum *)self init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"selectionFrustumYawOffsetLeft"])
    {
      [coderCopy decodeFloatForKey:@"selectionFrustumYawOffsetLeft"];
      v5->_yawOffsetLeft = v6;
    }

    if ([coderCopy containsValueForKey:@"selectionFrustumYawOffsetRight"])
    {
      [coderCopy decodeFloatForKey:@"selectionFrustumYawOffsetRight"];
      v5->_yawOffsetRight = v7;
    }

    if ([coderCopy containsValueForKey:@"selectionFrustumPitchOffsetTop"])
    {
      [coderCopy decodeFloatForKey:@"selectionFrustumPitchOffsetTop"];
      v5->_pitchOffsetTop = v8;
    }

    if ([coderCopy containsValueForKey:@"selectionFrustumPitchOffsetBottom"])
    {
      [coderCopy decodeFloatForKey:@"selectionFrustumPitchOffsetBottom"];
      v5->_pitchOffsetBottom = v9;
    }

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  *&v5 = self->_yawOffsetLeft;
  v9 = coderCopy;
  [coderCopy encodeFloat:@"selectionFrustumYawOffsetLeft" forKey:v5];
  *&v6 = self->_yawOffsetRight;
  [v9 encodeFloat:@"selectionFrustumYawOffsetRight" forKey:v6];
  *&v7 = self->_pitchOffsetTop;
  [v9 encodeFloat:@"selectionFrustumPitchOffsetTop" forKey:v7];
  *&v8 = self->_pitchOffsetBottom;
  [v9 encodeFloat:@"selectionFrustumPitchOffsetBottom" forKey:v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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