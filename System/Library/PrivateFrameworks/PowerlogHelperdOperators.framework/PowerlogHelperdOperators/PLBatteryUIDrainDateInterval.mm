@interface PLBatteryUIDrainDateInterval
- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)a3 endDate:(id)a4;
- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)a3 endDate:(id)a4 accumulatedDrain:(id)a5;
- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)a3 endDate:(id)a4 accumulatedDrain:(id)a5 sortedAppList:(id)a6 appBreakdown:(id)a7;
- (id)description;
@end

@implementation PLBatteryUIDrainDateInterval

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLBatteryUIDrainDateInterval *)self startDate];
  v5 = [(PLBatteryUIDrainDateInterval *)self endDate];
  v6 = [(PLBatteryUIDrainDateInterval *)self accumulatedDrainLevel];
  v7 = [v3 stringWithFormat:@"Start Date:%@, End Date:%@, Accumulated Drain:%@", v4, v5, v6];

  return v7;
}

- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLBatteryUIDrainDateInterval;
  v8 = [(PLBatteryUIDrainDateInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PLBatteryUIDrainDateInterval *)v8 setStartDate:v6];
    [(PLBatteryUIDrainDateInterval *)v9 setEndDate:v7];
  }

  return v9;
}

- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)a3 endDate:(id)a4 accumulatedDrain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PLBatteryUIDrainDateInterval;
  v11 = [(PLBatteryUIDrainDateInterval *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(PLBatteryUIDrainDateInterval *)v11 setStartDate:v8];
    [(PLBatteryUIDrainDateInterval *)v12 setEndDate:v9];
    [(PLBatteryUIDrainDateInterval *)v12 setAccumulatedDrainLevel:v10];
  }

  return v12;
}

- (PLBatteryUIDrainDateInterval)initWithStartDate:(id)a3 endDate:(id)a4 accumulatedDrain:(id)a5 sortedAppList:(id)a6 appBreakdown:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = PLBatteryUIDrainDateInterval;
  v17 = [(PLBatteryUIDrainDateInterval *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(PLBatteryUIDrainDateInterval *)v17 setStartDate:v12];
    [(PLBatteryUIDrainDateInterval *)v18 setEndDate:v13];
    [(PLBatteryUIDrainDateInterval *)v18 setAccumulatedDrainLevel:v14];
    [(PLBatteryUIDrainDateInterval *)v18 setSortedAppList:v15];
    [(PLBatteryUIDrainDateInterval *)v18 setAppBreakdown:v16];
  }

  return v18;
}

@end