@interface TASingleVisitDetectionMetrics
- (BOOL)isEqual:(id)equal;
- (TASingleVisitDetectionMetrics)initWithCoder:(id)coder;
- (TASingleVisitDetectionMetrics)initWithInterVisitMetrics:(id)metrics loiType:(unint64_t)type previousVisitType:(unint64_t)visitType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TASingleVisitDetectionMetrics

- (TASingleVisitDetectionMetrics)initWithInterVisitMetrics:(id)metrics loiType:(unint64_t)type previousVisitType:(unint64_t)visitType
{
  metricsCopy = metrics;
  v12.receiver = self;
  v12.super_class = TASingleVisitDetectionMetrics;
  v9 = [(TASingleVisitDetectionMetrics *)&v12 init];
  interVisitMetrics = v9->_interVisitMetrics;
  v9->_interVisitMetrics = metricsCopy;

  v9->_loiType = type;
  v9->_previousVisitType = visitType;
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      interVisitMetrics = [(TASingleVisitDetectionMetrics *)self interVisitMetrics];
      interVisitMetrics2 = [(TASingleVisitDetectionMetrics *)v7 interVisitMetrics];
      if (interVisitMetrics == interVisitMetrics2 || (-[TASingleVisitDetectionMetrics interVisitMetrics](self, "interVisitMetrics"), v3 = objc_claimAutoreleasedReturnValue(), -[TASingleVisitDetectionMetrics interVisitMetrics](v7, "interVisitMetrics"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        loiType = [(TASingleVisitDetectionMetrics *)self loiType];
        if (loiType == [(TASingleVisitDetectionMetrics *)v7 loiType])
        {
          previousVisitType = [(TASingleVisitDetectionMetrics *)self previousVisitType];
          v10 = previousVisitType == [(TASingleVisitDetectionMetrics *)v7 previousVisitType];
        }

        else
        {
          v10 = 0;
        }

        if (interVisitMetrics == interVisitMetrics2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (TASingleVisitDetectionMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVInterVisitMetrics"];
  v6 = [coderCopy decodeIntegerForKey:@"SVLOI"];
  v7 = [coderCopy decodeIntegerForKey:@"SVPreviousVisitType"];

  v8 = [(TASingleVisitDetectionMetrics *)self initWithInterVisitMetrics:v5 loiType:v6 previousVisitType:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  interVisitMetrics = self->_interVisitMetrics;
  coderCopy = coder;
  [coderCopy encodeObject:interVisitMetrics forKey:@"SVInterVisitMetrics"];
  [coderCopy encodeInteger:self->_loiType forKey:@"SVLOI"];
  [coderCopy encodeInteger:self->_previousVisitType forKey:@"SVPreviousVisitType"];
}

@end