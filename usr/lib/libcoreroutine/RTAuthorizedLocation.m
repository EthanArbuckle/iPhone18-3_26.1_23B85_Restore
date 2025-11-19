@interface RTAuthorizedLocation
- (RTAuthorizedLocation)initWithLoi:(id)a3 dwellTime:(double)a4 numberOfDaysVisited:(int64_t)a5 ageDaysFirstVisit:(int64_t)a6 ageDaysFirstRegisteredVisit:(int64_t)a7 locationTechnologyAvailability:(unint64_t)a8 visitsWithTechnologyAnnotation:(int64_t)a9 visitsWithGPS:(int64_t)a10 visitsWithWiFiHI:(int64_t)a11;
@end

@implementation RTAuthorizedLocation

- (RTAuthorizedLocation)initWithLoi:(id)a3 dwellTime:(double)a4 numberOfDaysVisited:(int64_t)a5 ageDaysFirstVisit:(int64_t)a6 ageDaysFirstRegisteredVisit:(int64_t)a7 locationTechnologyAvailability:(unint64_t)a8 visitsWithTechnologyAnnotation:(int64_t)a9 visitsWithGPS:(int64_t)a10 visitsWithWiFiHI:(int64_t)a11
{
  v19 = a3;
  v23.receiver = self;
  v23.super_class = RTAuthorizedLocation;
  v20 = [(RTAuthorizedLocation *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_rank = -1;
    objc_storeStrong(&v20->_loi, a3);
    v21->_dwellTime_s = a4;
    v21->_numberOfDaysVisited = a5;
    v21->_ageDaysFirstVisit = a6;
    v21->_ageDaysFirstRegisteredVisit = a7;
    v21->_locationTechnologyAvailability = a8;
    v21->_visitsWithTechnologyAnnotation = a9;
    v21->_visitsWithGPS = a10;
    v21->_visitsWithWiFiHI = a11;
  }

  return v21;
}

@end