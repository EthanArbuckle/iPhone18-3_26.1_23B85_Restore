@interface RTPeopleDensitySingleRecord
- (RTPeopleDensitySingleRecord)initWithCoder:(id)a3;
- (RTPeopleDensitySingleRecord)initWithStats:(unint64_t)a3 scanDuration:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPeopleDensitySingleRecord

- (RTPeopleDensitySingleRecord)initWithStats:(unint64_t)a3 scanDuration:(double)a4
{
  v10.receiver = self;
  v10.super_class = RTPeopleDensitySingleRecord;
  v6 = [(RTPeopleDensitySingleRecord *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_advertisementsCount = a3;
    v6->_scanDuration = a4;
    startDatetime = v6->_startDatetime;
    v6->_startDatetime = 0;
  }

  return v7;
}

- (id)descriptionDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"numOfAdvs";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_advertisementsCount];
  v10[0] = v3;
  v9[1] = @"duration";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scanDuration];
  v10[1] = v4;
  v9[2] = @"startDatetime";
  startDatetime = self->_startDatetime;
  if (startDatetime)
  {
    v6 = [(NSDate *)startDatetime getFormattedDateString];
  }

  else
  {
    v6 = @"-";
  }

  v10[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  if (startDatetime)
  {
  }

  return v7;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(RTPeopleDensitySingleRecord *)self descriptionDictionary];
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v2 error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
    }

    v6 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  advertisementsCount = self->_advertisementsCount;
  scanDuration = self->_scanDuration;

  return [v4 initWithStats:advertisementsCount scanDuration:scanDuration];
}

- (RTPeopleDensitySingleRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RTPeopleDensitySingleRecord;
  v5 = [(RTPeopleDensitySingleRecord *)&v10 init];
  if (v5)
  {
    v5->_advertisementsCount = [v4 decodeIntegerForKey:@"numOfAdvs"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->_scanDuration = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDatetime"];
    startDatetime = v5->_startDatetime;
    v5->_startDatetime = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  advertisementsCount = self->_advertisementsCount;
  v5 = a3;
  [v5 encodeInteger:advertisementsCount forKey:@"numOfAdvs"];
  [v5 encodeDouble:@"duration" forKey:self->_scanDuration];
  [v5 encodeObject:self->_startDatetime forKey:@"startDatetime"];
}

@end