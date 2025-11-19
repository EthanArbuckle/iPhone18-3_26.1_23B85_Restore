@interface PLExistingMomentData
- (BOOL)isEqual:(id)a3;
- (PLExistingMomentData)initWithMoment:(id)a3;
@end

@implementation PLExistingMomentData

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = self->_objectID;
      v6 = [(PLExistingMomentData *)v4 objectID];
      v7 = [(NSCopying *)objectID isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PLExistingMomentData)initWithMoment:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueObjectID];
  v6 = [v4 startDate];
  v7 = [v4 endDate];

  v8 = 0;
  if (v5 && v6 && v7)
  {
    v14.receiver = self;
    v14.super_class = PLExistingMomentData;
    v9 = [(PLExistingMomentData *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_objectID, v5);
      objc_storeStrong(&v10->_startDate, v6);
      objc_storeStrong(&v10->_endDate, v7);
      v11 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v10->_startDate endDate:v10->_endDate];
      dateInterval = v10->_dateInterval;
      v10->_dateInterval = v11;
    }

    self = v10;
    v8 = self;
  }

  return v8;
}

@end