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

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  lastRequestLocationDate = self->lastRequestLocationDate;
  self->lastRequestLocationDate = distantPast;

  v6 = objc_opt_new();
  state = self->state;
  self->state = v6;

  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  lastLOIUpdateTimestamp = self->lastLOIUpdateTimestamp;
  self->lastLOIUpdateTimestamp = distantPast2;

  distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
  lastPredictedLOIsUpdateTimestamp = self->lastPredictedLOIsUpdateTimestamp;
  self->lastPredictedLOIsUpdateTimestamp = distantPast3;

  distantPast4 = [MEMORY[0x277CBEAA8] distantPast];
  lastPredictedExitTimesUpdateTimestamp = self->lastPredictedExitTimesUpdateTimestamp;
  self->lastPredictedExitTimesUpdateTimestamp = distantPast4;

  MEMORY[0x2821F96F8]();
}

@end