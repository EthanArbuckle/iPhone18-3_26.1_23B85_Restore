@interface VGBodyPoseScore
- (BOOL)isEqual:(id)equal;
- (VGBodyPoseScore)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGBodyPoseScore

- (VGBodyPoseScore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VGBodyPoseScore *)self init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"value"];
    v5->_value = v6;
    v5->_feedback = [coderCopy decodeIntForKey:@"feedback"];
    [coderCopy decodeFloatForKey:@"rawValue"];
    v5->_rawValue = v7;
    [coderCopy decodeFloatForKey:@"rawValueTargetMin"];
    v5->_rawValueTargetMin = v8;
    [coderCopy decodeFloatForKey:@"rawValueTargetMax"];
    v5->_rawValueTargetMax = v9;
    [coderCopy decodeFloatForKey:@"rawValueMarginMin"];
    v5->_rawValueMarginMin = v10;
    [coderCopy decodeFloatForKey:@"rawValueMarginMax"];
    v5->_rawValueMarginMax = v11;
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  *&v5 = self->_value;
  v11 = coderCopy;
  [coderCopy encodeFloat:@"value" forKey:v5];
  [v11 encodeInt:LODWORD(self->_feedback) forKey:@"feedback"];
  *&v6 = self->_rawValue;
  [v11 encodeFloat:@"rawValue" forKey:v6];
  *&v7 = self->_rawValueTargetMin;
  [v11 encodeFloat:@"rawValueTargetMin" forKey:v7];
  *&v8 = self->_rawValueTargetMax;
  [v11 encodeFloat:@"rawValueTargetMax" forKey:v8];
  *&v9 = self->_rawValueMarginMin;
  [v11 encodeFloat:@"rawValueMarginMin" forKey:v9];
  *&v10 = self->_rawValueMarginMax;
  [v11 encodeFloat:@"rawValueMarginMax" forKey:v10];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = self->_value == v5[2] && self->_feedback == *(v5 + 4) && self->_rawValue == v5[3] && self->_rawValueTargetMin == v5[4] && self->_rawValueTargetMax == v5[5] && self->_rawValueMarginMin == v5[6] && self->_rawValueMarginMax == v5[7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end