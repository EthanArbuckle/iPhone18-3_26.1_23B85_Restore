@interface RTAuthorizedLocationZDRLocationLiveMetrics
- (RTAuthorizedLocationZDRLocationLiveMetrics)init;
@end

@implementation RTAuthorizedLocationZDRLocationLiveMetrics

- (RTAuthorizedLocationZDRLocationLiveMetrics)init
{
  v3.receiver = self;
  v3.super_class = RTAuthorizedLocationZDRLocationLiveMetrics;
  result = [(RTAuthorizedLocationZDRLocationLiveMetrics *)&v3 init];
  if (result)
  {
    *&result->_zdrConfirmationStatus = -1;
    result->_isVisitUsedForZdrConfirmation = 0;
    result->_zdrConfirmationPlaceType = 0;
    result->_confirmedALOIMatchedWithZDRType = 0;
    result->_zdrComputationTime_s = 0.0;
    result->_timeSinceEraseInstall_s = 0.0;
    result->_distanceBetweenZDRToUserLocation_m = 0.0;
  }

  return result;
}

@end