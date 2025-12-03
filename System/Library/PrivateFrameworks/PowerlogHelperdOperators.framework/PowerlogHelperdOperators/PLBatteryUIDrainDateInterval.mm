@interface PLBatteryUIDrainDateInterval
- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)date endDate:(id)endDate;
- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)date endDate:(id)endDate accumulatedDrain:(id)drain;
- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)date endDate:(id)endDate accumulatedDrain:(id)drain sortedAppList:(id)list appBreakdown:(id)breakdown;
- (id)description;
@end

@implementation PLBatteryUIDrainDateInterval

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  startDate = [(PLBatteryUIDrainDateInterval *)self startDate];
  endDate = [(PLBatteryUIDrainDateInterval *)self endDate];
  accumulatedDrainLevel = [(PLBatteryUIDrainDateInterval *)self accumulatedDrainLevel];
  v7 = [v3 stringWithFormat:@"Start Date:%@, End Date:%@, Accumulated Drain:%@", startDate, endDate, accumulatedDrainLevel];

  return v7;
}

- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11.receiver = self;
  v11.super_class = PLBatteryUIDrainDateInterval;
  v8 = [(PLBatteryUIDrainDateInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PLBatteryUIDrainDateInterval *)v8 setStartDate:dateCopy];
    [(PLBatteryUIDrainDateInterval *)v9 setEndDate:endDateCopy];
  }

  return v9;
}

- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)date endDate:(id)endDate accumulatedDrain:(id)drain
{
  dateCopy = date;
  endDateCopy = endDate;
  drainCopy = drain;
  v14.receiver = self;
  v14.super_class = PLBatteryUIDrainDateInterval;
  v11 = [(PLBatteryUIDrainDateInterval *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(PLBatteryUIDrainDateInterval *)v11 setStartDate:dateCopy];
    [(PLBatteryUIDrainDateInterval *)v12 setEndDate:endDateCopy];
    [(PLBatteryUIDrainDateInterval *)v12 setAccumulatedDrainLevel:drainCopy];
  }

  return v12;
}

- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)date endDate:(id)endDate accumulatedDrain:(id)drain sortedAppList:(id)list appBreakdown:(id)breakdown
{
  dateCopy = date;
  endDateCopy = endDate;
  drainCopy = drain;
  listCopy = list;
  breakdownCopy = breakdown;
  v20.receiver = self;
  v20.super_class = PLBatteryUIDrainDateInterval;
  v17 = [(PLBatteryUIDrainDateInterval *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(PLBatteryUIDrainDateInterval *)v17 setStartDate:dateCopy];
    [(PLBatteryUIDrainDateInterval *)v18 setEndDate:endDateCopy];
    [(PLBatteryUIDrainDateInterval *)v18 setAccumulatedDrainLevel:drainCopy];
    [(PLBatteryUIDrainDateInterval *)v18 setSortedAppList:listCopy];
    [(PLBatteryUIDrainDateInterval *)v18 setAppBreakdown:breakdownCopy];
  }

  return v18;
}

@end