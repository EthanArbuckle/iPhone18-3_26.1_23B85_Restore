@interface TASingleVisitDetectionMetrics
- (BOOL)isEqual:(id)a3;
- (TASingleVisitDetectionMetrics)initWithCoder:(id)a3;
- (TASingleVisitDetectionMetrics)initWithInterVisitMetrics:(id)a3 loiType:(unint64_t)a4 previousVisitType:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TASingleVisitDetectionMetrics

- (TASingleVisitDetectionMetrics)initWithInterVisitMetrics:(id)a3 loiType:(unint64_t)a4 previousVisitType:(unint64_t)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = TASingleVisitDetectionMetrics;
  v9 = [(TASingleVisitDetectionMetrics *)&v12 init];
  interVisitMetrics = v9->_interVisitMetrics;
  v9->_interVisitMetrics = v8;

  v9->_loiType = a4;
  v9->_previousVisitType = a5;
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(TASingleVisitDetectionMetrics *)self interVisitMetrics];
      v9 = [(TASingleVisitDetectionMetrics *)v7 interVisitMetrics];
      if (v8 == v9 || (-[TASingleVisitDetectionMetrics interVisitMetrics](self, "interVisitMetrics"), v3 = objc_claimAutoreleasedReturnValue(), -[TASingleVisitDetectionMetrics interVisitMetrics](v7, "interVisitMetrics"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(TASingleVisitDetectionMetrics *)self loiType];
        if (v11 == [(TASingleVisitDetectionMetrics *)v7 loiType])
        {
          v12 = [(TASingleVisitDetectionMetrics *)self previousVisitType];
          v10 = v12 == [(TASingleVisitDetectionMetrics *)v7 previousVisitType];
        }

        else
        {
          v10 = 0;
        }

        if (v8 == v9)
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

- (TASingleVisitDetectionMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVInterVisitMetrics"];
  v6 = [v4 decodeIntegerForKey:@"SVLOI"];
  v7 = [v4 decodeIntegerForKey:@"SVPreviousVisitType"];

  v8 = [(TASingleVisitDetectionMetrics *)self initWithInterVisitMetrics:v5 loiType:v6 previousVisitType:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  interVisitMetrics = self->_interVisitMetrics;
  v5 = a3;
  [v5 encodeObject:interVisitMetrics forKey:@"SVInterVisitMetrics"];
  [v5 encodeInteger:self->_loiType forKey:@"SVLOI"];
  [v5 encodeInteger:self->_previousVisitType forKey:@"SVPreviousVisitType"];
}

@end