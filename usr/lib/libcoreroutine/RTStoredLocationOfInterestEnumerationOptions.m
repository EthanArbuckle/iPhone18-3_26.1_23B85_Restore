@interface RTStoredLocationOfInterestEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (RTStoredLocationOfInterestEnumerationOptions)init;
- (RTStoredLocationOfInterestEnumerationOptions)initWithAscendingVisitEntryDate:(BOOL)a3 batchSize:(unint64_t)a4 dateInterval:(id)a5 singleVisit:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation RTStoredLocationOfInterestEnumerationOptions

- (RTStoredLocationOfInterestEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v7 = [(RTStoredLocationOfInterestEnumerationOptions *)self initWithAscendingVisitEntryDate:1 batchSize:0 dateInterval:v6 singleVisit:0];
  return v7;
}

- (RTStoredLocationOfInterestEnumerationOptions)initWithAscendingVisitEntryDate:(BOOL)a3 batchSize:(unint64_t)a4 dateInterval:(id)a5 singleVisit:(BOOL)a6
{
  v10 = a5;
  v20.receiver = self;
  v20.super_class = RTStoredLocationOfInterestEnumerationOptions;
  v11 = [(RTStoredLocationOfInterestEnumerationOptions *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_ascendingVisitEntryDate = a3;
    if (v10)
    {
      v13 = v10;
      dateInterval = v12->_dateInterval;
      v12->_dateInterval = v13;
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277CCA970]);
      dateInterval = [MEMORY[0x277CBEAA8] distantPast];
      v16 = [MEMORY[0x277CBEAA8] distantFuture];
      v17 = [v15 initWithStartDate:dateInterval endDate:v16];
      v18 = v12->_dateInterval;
      v12->_dateInterval = v17;
    }

    v12->_batchSize = a4;
    v12->_singleVisit = a6;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTStoredLocationOfInterestEnumerationOptions *)self ascendingVisitEntryDate];
      v7 = [(RTStoredLocationOfInterestEnumerationOptions *)v5 ascendingVisitEntryDate];
      v8 = [(RTStoredLocationOfInterestEnumerationOptions *)self batchSize];
      v9 = [(RTStoredLocationOfInterestEnumerationOptions *)v5 batchSize];
      v10 = [(RTStoredLocationOfInterestEnumerationOptions *)self dateInterval];
      v11 = [(RTStoredLocationOfInterestEnumerationOptions *)v5 dateInterval];
      v12 = [v10 isEqualToDateInterval:v11];

      v13 = [(RTStoredLocationOfInterestEnumerationOptions *)self singleVisit];
      v14 = v12 & (v13 ^ [(RTStoredLocationOfInterestEnumerationOptions *)v5 singleVisit]^ 1);
      if (v8 != v9)
      {
        LOBYTE(v14) = 0;
      }

      v15 = v6 == v7 && v14;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  ascendingVisitEntryDate = self->_ascendingVisitEntryDate;
  batchSize = self->_batchSize;
  dateInterval = self->_dateInterval;
  singleVisit = self->_singleVisit;

  return [v4 initWithAscendingVisitEntryDate:ascendingVisitEntryDate batchSize:batchSize dateInterval:dateInterval singleVisit:singleVisit];
}

@end