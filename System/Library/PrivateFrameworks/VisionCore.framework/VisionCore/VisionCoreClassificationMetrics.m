@interface VisionCoreClassificationMetrics
- (BOOL)isEqual:(id)a3;
- (VisionCoreClassificationMetrics)initWithCoder:(id)a3;
- (VisionCoreClassificationMetrics)initWithPrecisionCurve:(id)a3 recallCurve:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreClassificationMetrics

- (VisionCoreClassificationMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"P"];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:v5 forKey:@"R"];
    if (v7)
    {
      self = [(VisionCoreClassificationMetrics *)self initWithPrecisionCurve:v6 recallCurve:v7];
      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_precisionCurve forKey:@"P"];
  [v4 encodeObject:self->_recallCurve forKey:@"R"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (VisionCoreClassificationMetrics)initWithPrecisionCurve:(id)a3 recallCurve:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VisionCoreClassificationMetrics;
  v8 = [(VisionCoreClassificationMetrics *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    precisionCurve = v8->_precisionCurve;
    v8->_precisionCurve = v9;

    v11 = [v7 copy];
    recallCurve = v8->_recallCurve;
    v8->_recallCurve = v11;
  }

  return v8;
}

@end