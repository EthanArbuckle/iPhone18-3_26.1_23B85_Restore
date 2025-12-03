@interface PLExistingMomentData
- (BOOL)isEqual:(id)equal;
- (PLExistingMomentData)initWithMoment:(id)moment;
@end

@implementation PLExistingMomentData

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = self->_objectID;
      objectID = [(PLExistingMomentData *)equalCopy objectID];
      v7 = [(NSCopying *)objectID isEqual:objectID];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (PLExistingMomentData)initWithMoment:(id)moment
{
  momentCopy = moment;
  uniqueObjectID = [momentCopy uniqueObjectID];
  startDate = [momentCopy startDate];
  endDate = [momentCopy endDate];

  selfCopy = 0;
  if (uniqueObjectID && startDate && endDate)
  {
    v14.receiver = self;
    v14.super_class = PLExistingMomentData;
    v9 = [(PLExistingMomentData *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_objectID, uniqueObjectID);
      objc_storeStrong(&v10->_startDate, startDate);
      objc_storeStrong(&v10->_endDate, endDate);
      v11 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v10->_startDate endDate:v10->_endDate];
      dateInterval = v10->_dateInterval;
      v10->_dateInterval = v11;
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

@end