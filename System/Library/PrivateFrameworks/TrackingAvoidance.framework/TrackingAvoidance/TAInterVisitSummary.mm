@interface TAInterVisitSummary
- (TAInterVisitSummary)initWithObservationInterval:(id)a3 andLocationHistory:(id)a4 andLastObservation:(id)a5;
@end

@implementation TAInterVisitSummary

- (TAInterVisitSummary)initWithObservationInterval:(id)a3 andLocationHistory:(id)a4 andLastObservation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = TAInterVisitSummary;
  v11 = [(TAInterVisitSummary *)&v20 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = 0;
  if (v8 && v9 && v10)
  {
    v13 = [v8 copy];
    deviceObservationInterval = v11->_deviceObservationInterval;
    v11->_deviceObservationInterval = v13;

    v15 = [v9 copy];
    deviceLocationHistory = v11->_deviceLocationHistory;
    v11->_deviceLocationHistory = v15;

    v17 = [v10 copy];
    latestObservation = v11->_latestObservation;
    v11->_latestObservation = v17;

LABEL_6:
    v12 = v11;
  }

  return v12;
}

@end