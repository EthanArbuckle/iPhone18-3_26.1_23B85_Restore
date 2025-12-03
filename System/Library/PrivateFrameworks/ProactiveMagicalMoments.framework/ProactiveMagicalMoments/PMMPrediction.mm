@interface PMMPrediction
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPrediction:(id)prediction;
- (PMMPrediction)initWithPredictedItems:(id)items expirationDate:(id)date;
@end

@implementation PMMPrediction

- (PMMPrediction)initWithPredictedItems:(id)items expirationDate:(id)date
{
  itemsCopy = items;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = PMMPrediction;
  v9 = [(PMMPrediction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predictedItems, items);
    objc_storeStrong(&v10->_expirationDate, date);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMMPrediction *)self isEqualToPrediction:v5];
  }

  return v6;
}

- (BOOL)isEqualToPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = self->_expirationDate;
  v6 = v5;
  if (v5 == predictionCopy[2])
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
  if (v9 == predictionCopy[1])
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