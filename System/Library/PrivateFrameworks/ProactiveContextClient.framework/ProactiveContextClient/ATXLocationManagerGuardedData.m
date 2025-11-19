@interface ATXLocationManagerGuardedData
- (ATXLocationManagerGuardedData)init;
- (void)clear;
@end

@implementation ATXLocationManagerGuardedData

- (ATXLocationManagerGuardedData)init
{
  v5.receiver = self;
  v5.super_class = ATXLocationManagerGuardedData;
  v2 = [(ATXLocationManagerGuardedData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ATXLocationManagerGuardedData *)v2 clear];
  }

  return v3;
}

- (void)clear
{
  currentLocation = self->currentLocation;
  self->currentLocation = 0;

  v4 = [MEMORY[0x277CBEAA8] distantPast];
  lastRequestLocationDate = self->lastRequestLocationDate;
  self->lastRequestLocationDate = v4;

  v6 = objc_opt_new();
  state = self->state;
  self->state = v6;

  v8 = [MEMORY[0x277CBEAA8] distantPast];
  lastLOIUpdateTimestamp = self->lastLOIUpdateTimestamp;
  self->lastLOIUpdateTimestamp = v8;

  v10 = [MEMORY[0x277CBEAA8] distantPast];
  lastPredictedLOIsUpdateTimestamp = self->lastPredictedLOIsUpdateTimestamp;
  self->lastPredictedLOIsUpdateTimestamp = v10;

  v12 = [MEMORY[0x277CBEAA8] distantPast];
  lastPredictedExitTimesUpdateTimestamp = self->lastPredictedExitTimesUpdateTimestamp;
  self->lastPredictedExitTimesUpdateTimestamp = v12;

  MEMORY[0x2821F96F8]();
}

@end