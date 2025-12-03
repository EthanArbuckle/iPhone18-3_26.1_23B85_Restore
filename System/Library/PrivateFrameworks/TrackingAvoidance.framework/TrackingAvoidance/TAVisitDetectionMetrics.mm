@interface TAVisitDetectionMetrics
- (BOOL)isEqual:(id)equal;
- (TAVisitDetectionMetrics)initWithCoder:(id)coder;
- (TAVisitDetectionMetrics)initWithDistance:(double)distance residualDistance:(double)residualDistance nSigma:(unint64_t)sigma;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAVisitDetectionMetrics

- (TAVisitDetectionMetrics)initWithDistance:(double)distance residualDistance:(double)residualDistance nSigma:(unint64_t)sigma
{
  v9.receiver = self;
  v9.super_class = TAVisitDetectionMetrics;
  result = [(TAVisitDetectionMetrics *)&v9 init];
  result->_distanceToPreviousVisit = distance;
  result->_residualDistanceToPreviousVisit = residualDistance;
  result->_nSigmaBetweenVisits = sigma;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(TAVisitDetectionMetrics *)self distanceToPreviousVisit];
      v7 = v6;
      [(TAVisitDetectionMetrics *)v5 distanceToPreviousVisit];
      if (v7 == v8 && ([(TAVisitDetectionMetrics *)self residualDistanceToPreviousVisit], v10 = v9, [(TAVisitDetectionMetrics *)v5 residualDistanceToPreviousVisit], v10 == v11))
      {
        nSigmaBetweenVisits = [(TAVisitDetectionMetrics *)self nSigmaBetweenVisits];
        v13 = nSigmaBetweenVisits == [(TAVisitDetectionMetrics *)v5 nSigmaBetweenVisits];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (TAVisitDetectionMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"VDistancePrevVisit"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"VResidualDistance"];
  v8 = v7;
  v9 = [coderCopy decodeIntegerForKey:@"VNSigma"];

  return [(TAVisitDetectionMetrics *)self initWithDistance:v9 residualDistance:v6 nSigma:v8];
}

- (void)encodeWithCoder:(id)coder
{
  distanceToPreviousVisit = self->_distanceToPreviousVisit;
  coderCopy = coder;
  [coderCopy encodeDouble:@"VDistancePrevVisit" forKey:distanceToPreviousVisit];
  [coderCopy encodeDouble:@"VResidualDistance" forKey:self->_residualDistanceToPreviousVisit];
  [coderCopy encodeInteger:self->_nSigmaBetweenVisits forKey:@"VNSigma"];
}

@end