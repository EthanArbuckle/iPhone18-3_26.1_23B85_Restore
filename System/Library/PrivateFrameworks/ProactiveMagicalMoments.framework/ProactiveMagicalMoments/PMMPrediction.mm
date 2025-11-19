@interface PMMPrediction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPrediction:(id)a3;
- (PMMPrediction)initWithPredictedItems:(id)a3 expirationDate:(id)a4;
@end

@implementation PMMPrediction

- (PMMPrediction)initWithPredictedItems:(id)a3 expirationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PMMPrediction;
  v9 = [(PMMPrediction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predictedItems, a3);
    objc_storeStrong(&v10->_expirationDate, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMMPrediction *)self isEqualToPrediction:v5];
  }

  return v6;
}

- (BOOL)isEqualToPrediction:(id)a3
{
  v4 = a3;
  v5 = self->_expirationDate;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_predictedItems;
  v10 = v9;
  if (v9 == v4[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSArray *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

@end