@interface RTAuthorizedLocationCurationMetrics
- (RTAuthorizedLocationCurationMetrics)init;
@end

@implementation RTAuthorizedLocationCurationMetrics

- (RTAuthorizedLocationCurationMetrics)init
{
  v8.receiver = self;
  v8.super_class = RTAuthorizedLocationCurationMetrics;
  result = [(RTAuthorizedLocationCurationMetrics *)&v8 init];
  if (result)
  {
    result->_maxCumulativeDwellTimeForNotFamiliarLoiHours = -1.0;
    *&result->_maxUniqueVisitDaysForNotFamiliarLois = -1;
    *&result->_ageDaysFirstAnyLoiVisit = -1;
    *&result->_ageDaysFirstTopLoiRegisteredVisit = -1;
    __asm { FMOV            V0.2S, #-1.0 }

    *&result->_visitRegistrationFraction = _D0;
    result->_visitsToTopLOIWithTechAvailabilityKnown = -1;
    *&result->_fractionOfVisitsToTopLOIWithGPS = _D0;
  }

  return result;
}

@end