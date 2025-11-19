@interface RTAuthorizedLocationZDRLocationCurationMetrics
- (RTAuthorizedLocationZDRLocationCurationMetrics)init;
@end

@implementation RTAuthorizedLocationZDRLocationCurationMetrics

- (RTAuthorizedLocationZDRLocationCurationMetrics)init
{
  v3.receiver = self;
  v3.super_class = RTAuthorizedLocationZDRLocationCurationMetrics;
  result = [(RTAuthorizedLocationZDRLocationCurationMetrics *)&v3 init];
  if (result)
  {
    *&result->_numberOfZDRLocationsSchool = -1;
    *&result->_numberOfZDRLocationsHome = -1;
    *&result->_isZDRHomeLearnedALoi = 0;
  }

  return result;
}

@end