@interface RTPeopleDensitySingleRecord
- (RTPeopleDensitySingleRecord)initWithCoder:(id)coder;
- (RTPeopleDensitySingleRecord)initWithStats:(unint64_t)stats scanDuration:(double)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPeopleDensitySingleRecord

- (RTPeopleDensitySingleRecord)initWithStats:(unint64_t)stats scanDuration:(double)duration
{
  v10.receiver = self;
  v10.super_class = RTPeopleDensitySingleRecord;
  v6 = [(RTPeopleDensitySingleRecord *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_advertisementsCount = stats;
    v6->_scanDuration = duration;
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
    getFormattedDateString = [(NSDate *)startDatetime getFormattedDateString];
  }

  else
  {
    getFormattedDateString = @"-";
  }

  v10[2] = getFormattedDateString;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  if (startDatetime)
  {
  }

  return v7;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  descriptionDictionary = [(RTPeopleDensitySingleRecord *)self descriptionDictionary];
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v11];
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

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v3;
  }

  v7 = string;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  advertisementsCount = self->_advertisementsCount;
  scanDuration = self->_scanDuration;

  return [v4 initWithStats:advertisementsCount scanDuration:scanDuration];
}

- (RTPeopleDensitySingleRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RTPeopleDensitySingleRecord;
  v5 = [(RTPeopleDensitySingleRecord *)&v10 init];
  if (v5)
  {
    v5->_advertisementsCount = [coderCopy decodeIntegerForKey:@"numOfAdvs"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_scanDuration = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDatetime"];
    startDatetime = v5->_startDatetime;
    v5->_startDatetime = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  advertisementsCount = self->_advertisementsCount;
  coderCopy = coder;
  [coderCopy encodeInteger:advertisementsCount forKey:@"numOfAdvs"];
  [coderCopy encodeDouble:@"duration" forKey:self->_scanDuration];
  [coderCopy encodeObject:self->_startDatetime forKey:@"startDatetime"];
}

@end