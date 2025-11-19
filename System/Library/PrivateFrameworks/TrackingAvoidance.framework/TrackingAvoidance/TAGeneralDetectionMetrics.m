@interface TAGeneralDetectionMetrics
- (BOOL)isEqual:(id)a3;
- (TAGeneralDetectionMetrics)initWithCoder:(id)a3;
- (TAGeneralDetectionMetrics)initWithInterVisitMetrics:(id)a3 dominantUserActivity:(unint64_t)a4 pdState:(int64_t)a5 geoNavHint:(BOOL)a6 vehicularStateHint:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAGeneralDetectionMetrics

- (TAGeneralDetectionMetrics)initWithInterVisitMetrics:(id)a3 dominantUserActivity:(unint64_t)a4 pdState:(int64_t)a5 geoNavHint:(BOOL)a6 vehicularStateHint:(BOOL)a7
{
  v13 = a3;
  v18.receiver = self;
  v18.super_class = TAGeneralDetectionMetrics;
  v14 = [(TAGeneralDetectionMetrics *)&v18 init];
  v15 = v14;
  if (v14)
  {
    if (!v13)
    {
      v16 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v14->_interVisitMetrics, a3);
    v15->_dominantUserActivity = a4;
    v15->_pdState = a5;
    v15->_geoNavHint = a6;
    v15->_vehicularStateHint = a7;
  }

  v16 = v15;
LABEL_6:

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(TAGeneralDetectionMetrics *)self interVisitMetrics];
      v9 = [(TAGeneralDetectionMetrics *)v7 interVisitMetrics];
      if (v8 == v9 || (-[TAGeneralDetectionMetrics interVisitMetrics](self, "interVisitMetrics"), v3 = objc_claimAutoreleasedReturnValue(), -[TAGeneralDetectionMetrics interVisitMetrics](v7, "interVisitMetrics"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(TAGeneralDetectionMetrics *)self dominantUserActivity];
        if (v12 == [(TAGeneralDetectionMetrics *)v7 dominantUserActivity]&& (v13 = [(TAGeneralDetectionMetrics *)self pdState], v13 == [(TAGeneralDetectionMetrics *)v7 pdState]) && (v14 = [(TAGeneralDetectionMetrics *)self geoNavHint], v14 == [(TAGeneralDetectionMetrics *)v7 geoNavHint]))
        {
          v16 = [(TAGeneralDetectionMetrics *)self vehicularStateHint];
          v10 = v16 ^ [(TAGeneralDetectionMetrics *)v7 vehicularStateHint]^ 1;
          v11 = v10;
        }

        else
        {
          LOBYTE(v10) = 0;
          v11 = 0;
        }

        if (v8 == v9)
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

- (TAGeneralDetectionMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GInterVisitMetrics"];
  v6 = [v4 decodeIntegerForKey:@"GUserActivity"];
  v7 = [v4 decodeIntegerForKey:@"GPeopleDensity"];
  v8 = [v4 decodeIntegerForKey:@"GGeoNavHint"] != 0;
  v9 = [v4 decodeIntegerForKey:@"GVehicularStateHint"];

  v10 = [(TAGeneralDetectionMetrics *)self initWithInterVisitMetrics:v5 dominantUserActivity:v6 pdState:v7 geoNavHint:v8 vehicularStateHint:v9 != 0];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  interVisitMetrics = self->_interVisitMetrics;
  v5 = a3;
  [v5 encodeObject:interVisitMetrics forKey:@"GInterVisitMetrics"];
  [v5 encodeInteger:self->_dominantUserActivity forKey:@"GUserActivity"];
  [v5 encodeInteger:self->_pdState forKey:@"GPeopleDensity"];
  [v5 encodeInteger:self->_geoNavHint forKey:@"GGeoNavHint"];
  [v5 encodeInteger:self->_vehicularStateHint forKey:@"GVehicularStateHint"];
}

@end