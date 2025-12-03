@interface TAGeneralDetectionMetrics
- (BOOL)isEqual:(id)equal;
- (TAGeneralDetectionMetrics)initWithCoder:(id)coder;
- (TAGeneralDetectionMetrics)initWithInterVisitMetrics:(id)metrics dominantUserActivity:(unint64_t)activity pdState:(int64_t)state geoNavHint:(BOOL)hint vehicularStateHint:(BOOL)stateHint;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAGeneralDetectionMetrics

- (TAGeneralDetectionMetrics)initWithInterVisitMetrics:(id)metrics dominantUserActivity:(unint64_t)activity pdState:(int64_t)state geoNavHint:(BOOL)hint vehicularStateHint:(BOOL)stateHint
{
  metricsCopy = metrics;
  v18.receiver = self;
  v18.super_class = TAGeneralDetectionMetrics;
  v14 = [(TAGeneralDetectionMetrics *)&v18 init];
  v15 = v14;
  if (v14)
  {
    if (!metricsCopy)
    {
      v16 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v14->_interVisitMetrics, metrics);
    v15->_dominantUserActivity = activity;
    v15->_pdState = state;
    v15->_geoNavHint = hint;
    v15->_vehicularStateHint = stateHint;
  }

  v16 = v15;
LABEL_6:

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      interVisitMetrics = [(TAGeneralDetectionMetrics *)self interVisitMetrics];
      interVisitMetrics2 = [(TAGeneralDetectionMetrics *)v7 interVisitMetrics];
      if (interVisitMetrics == interVisitMetrics2 || (-[TAGeneralDetectionMetrics interVisitMetrics](self, "interVisitMetrics"), v3 = objc_claimAutoreleasedReturnValue(), -[TAGeneralDetectionMetrics interVisitMetrics](v7, "interVisitMetrics"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        dominantUserActivity = [(TAGeneralDetectionMetrics *)self dominantUserActivity];
        if (dominantUserActivity == [(TAGeneralDetectionMetrics *)v7 dominantUserActivity]&& (v13 = [(TAGeneralDetectionMetrics *)self pdState], v13 == [(TAGeneralDetectionMetrics *)v7 pdState]) && (v14 = [(TAGeneralDetectionMetrics *)self geoNavHint], v14 == [(TAGeneralDetectionMetrics *)v7 geoNavHint]))
        {
          vehicularStateHint = [(TAGeneralDetectionMetrics *)self vehicularStateHint];
          v10 = vehicularStateHint ^ [(TAGeneralDetectionMetrics *)v7 vehicularStateHint]^ 1;
          v11 = v10;
        }

        else
        {
          LOBYTE(v10) = 0;
          v11 = 0;
        }

        if (interVisitMetrics == interVisitMetrics2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      v11 = v10;
LABEL_14:

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (TAGeneralDetectionMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GInterVisitMetrics"];
  v6 = [coderCopy decodeIntegerForKey:@"GUserActivity"];
  v7 = [coderCopy decodeIntegerForKey:@"GPeopleDensity"];
  v8 = [coderCopy decodeIntegerForKey:@"GGeoNavHint"] != 0;
  v9 = [coderCopy decodeIntegerForKey:@"GVehicularStateHint"];

  v10 = [(TAGeneralDetectionMetrics *)self initWithInterVisitMetrics:v5 dominantUserActivity:v6 pdState:v7 geoNavHint:v8 vehicularStateHint:v9 != 0];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  interVisitMetrics = self->_interVisitMetrics;
  coderCopy = coder;
  [coderCopy encodeObject:interVisitMetrics forKey:@"GInterVisitMetrics"];
  [coderCopy encodeInteger:self->_dominantUserActivity forKey:@"GUserActivity"];
  [coderCopy encodeInteger:self->_pdState forKey:@"GPeopleDensity"];
  [coderCopy encodeInteger:self->_geoNavHint forKey:@"GGeoNavHint"];
  [coderCopy encodeInteger:self->_vehicularStateHint forKey:@"GVehicularStateHint"];
}

@end