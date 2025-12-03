@interface RTStoredLocationOfInterestEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (RTStoredLocationOfInterestEnumerationOptions)init;
- (RTStoredLocationOfInterestEnumerationOptions)initWithAscendingVisitEntryDate:(BOOL)date batchSize:(unint64_t)size dateInterval:(id)interval singleVisit:(BOOL)visit;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation RTStoredLocationOfInterestEnumerationOptions

- (RTStoredLocationOfInterestEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [v3 initWithStartDate:distantPast endDate:distantFuture];

  v7 = [(RTStoredLocationOfInterestEnumerationOptions *)self initWithAscendingVisitEntryDate:1 batchSize:0 dateInterval:v6 singleVisit:0];
  return v7;
}

- (RTStoredLocationOfInterestEnumerationOptions)initWithAscendingVisitEntryDate:(BOOL)date batchSize:(unint64_t)size dateInterval:(id)interval singleVisit:(BOOL)visit
{
  intervalCopy = interval;
  v20.receiver = self;
  v20.super_class = RTStoredLocationOfInterestEnumerationOptions;
  v11 = [(RTStoredLocationOfInterestEnumerationOptions *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_ascendingVisitEntryDate = date;
    if (intervalCopy)
    {
      v13 = intervalCopy;
      dateInterval = v12->_dateInterval;
      v12->_dateInterval = v13;
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277CCA970]);
      dateInterval = [MEMORY[0x277CBEAA8] distantPast];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v17 = [v15 initWithStartDate:dateInterval endDate:distantFuture];
      v18 = v12->_dateInterval;
      v12->_dateInterval = v17;
    }

    v12->_batchSize = size;
    v12->_singleVisit = visit;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      ascendingVisitEntryDate = [(RTStoredLocationOfInterestEnumerationOptions *)self ascendingVisitEntryDate];
      ascendingVisitEntryDate2 = [(RTStoredLocationOfInterestEnumerationOptions *)v5 ascendingVisitEntryDate];
      batchSize = [(RTStoredLocationOfInterestEnumerationOptions *)self batchSize];
      batchSize2 = [(RTStoredLocationOfInterestEnumerationOptions *)v5 batchSize];
      dateInterval = [(RTStoredLocationOfInterestEnumerationOptions *)self dateInterval];
      dateInterval2 = [(RTStoredLocationOfInterestEnumerationOptions *)v5 dateInterval];
      v12 = [dateInterval isEqualToDateInterval:dateInterval2];

      singleVisit = [(RTStoredLocationOfInterestEnumerationOptions *)self singleVisit];
      v14 = v12 & (singleVisit ^ [(RTStoredLocationOfInterestEnumerationOptions *)v5 singleVisit]^ 1);
      if (batchSize != batchSize2)
      {
        LOBYTE(v14) = 0;
      }

      v15 = ascendingVisitEntryDate == ascendingVisitEntryDate2 && v14;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_ascendingVisitEntryDate];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_batchSize];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSDateInterval *)self->_dateInterval hash];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_singleVisit];
  v9 = v7 ^ [v8 hash];

  return v6 ^ v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  ascendingVisitEntryDate = self->_ascendingVisitEntryDate;
  batchSize = self->_batchSize;
  dateInterval = self->_dateInterval;
  singleVisit = self->_singleVisit;

  return [v4 initWithAscendingVisitEntryDate:ascendingVisitEntryDate batchSize:batchSize dateInterval:dateInterval singleVisit:singleVisit];
}

@end