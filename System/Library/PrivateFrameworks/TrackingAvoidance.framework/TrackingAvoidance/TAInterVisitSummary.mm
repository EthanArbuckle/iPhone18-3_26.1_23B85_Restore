@interface TAInterVisitSummary
- (TAInterVisitSummary)initWithObservationInterval:(id)interval andLocationHistory:(id)history andLastObservation:(id)observation;
@end

@implementation TAInterVisitSummary

- (TAInterVisitSummary)initWithObservationInterval:(id)interval andLocationHistory:(id)history andLastObservation:(id)observation
{
  intervalCopy = interval;
  historyCopy = history;
  observationCopy = observation;
  v20.receiver = self;
  v20.super_class = TAInterVisitSummary;
  v11 = [(TAInterVisitSummary *)&v20 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = 0;
  if (intervalCopy && historyCopy && observationCopy)
  {
    v13 = [intervalCopy copy];
    deviceObservationInterval = v11->_deviceObservationInterval;
    v11->_deviceObservationInterval = v13;

    v15 = [historyCopy copy];
    deviceLocationHistory = v11->_deviceLocationHistory;
    v11->_deviceLocationHistory = v15;

    v17 = [observationCopy copy];
    latestObservation = v11->_latestObservation;
    v11->_latestObservation = v17;

LABEL_6:
    v12 = v11;
  }

  return v12;
}

@end