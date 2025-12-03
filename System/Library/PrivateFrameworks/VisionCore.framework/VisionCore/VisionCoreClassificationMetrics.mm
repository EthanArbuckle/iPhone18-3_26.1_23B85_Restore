@interface VisionCoreClassificationMetrics
- (BOOL)isEqual:(id)equal;
- (VisionCoreClassificationMetrics)initWithCoder:(id)coder;
- (VisionCoreClassificationMetrics)initWithPrecisionCurve:(id)curve recallCurve:(id)recallCurve;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreClassificationMetrics

- (VisionCoreClassificationMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"P"];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"R"];
    if (v7)
    {
      self = [(VisionCoreClassificationMetrics *)self initWithPrecisionCurve:v6 recallCurve:v7];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_precisionCurve forKey:@"P"];
  [coderCopy encodeObject:self->_recallCurve forKey:@"R"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(VisionCoreValueConfidenceCurve *)self->_precisionCurve isEqual:v5->_precisionCurve]&& [(VisionCoreValueConfidenceCurve *)self->_recallCurve isEqual:v5->_recallCurve];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"P: %@\nR: %@", self->_precisionCurve, self->_recallCurve];

  return v2;
}

- (VisionCoreClassificationMetrics)initWithPrecisionCurve:(id)curve recallCurve:(id)recallCurve
{
  curveCopy = curve;
  recallCurveCopy = recallCurve;
  v14.receiver = self;
  v14.super_class = VisionCoreClassificationMetrics;
  v8 = [(VisionCoreClassificationMetrics *)&v14 init];
  if (v8)
  {
    v9 = [curveCopy copy];
    precisionCurve = v8->_precisionCurve;
    v8->_precisionCurve = v9;

    v11 = [recallCurveCopy copy];
    recallCurve = v8->_recallCurve;
    v8->_recallCurve = v11;
  }

  return v8;
}

@end