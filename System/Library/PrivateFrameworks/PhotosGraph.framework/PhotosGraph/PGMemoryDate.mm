@interface PGMemoryDate
- (PGMemoryDate)initWithLocalDate:(id)date;
- (id)universalDateInTimeZone:(id)zone;
@end

@implementation PGMemoryDate

- (id)universalDateInTimeZone:(id)zone
{
  v4 = MEMORY[0x277CBEAB8];
  zoneCopy = zone;
  v6 = objc_alloc_init(v4);
  [v6 setEra:self->_era];
  [v6 setYear:self->_year];
  [v6 setMonth:self->_month];
  [v6 setDay:self->_day];
  [v6 setHour:2];
  v7 = [MEMORY[0x277D27690] dateFromComponents:v6 inTimeZone:0];
  v8 = [MEMORY[0x277D27690] universalDateFromLocalDate:v7 inTimeZone:zoneCopy];

  return v8;
}

- (PGMemoryDate)initWithLocalDate:(id)date
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = PGMemoryDate;
  v5 = [(PGMemoryDate *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D27690] components:30 fromDate:dateCopy];
    v5->_era = [v6 era];
    v5->_year = [v6 year];
    v5->_month = [v6 month];
    v5->_day = [v6 day];
  }

  return v5;
}

@end