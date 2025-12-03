@interface RTAuthorizedLocation
- (RTAuthorizedLocation)initWithLoi:(id)loi dwellTime:(double)time numberOfDaysVisited:(int64_t)visited ageDaysFirstVisit:(int64_t)visit ageDaysFirstRegisteredVisit:(int64_t)registeredVisit locationTechnologyAvailability:(unint64_t)availability visitsWithTechnologyAnnotation:(int64_t)annotation visitsWithGPS:(int64_t)self0 visitsWithWiFiHI:(int64_t)self1;
@end

@implementation RTAuthorizedLocation

- (RTAuthorizedLocation)initWithLoi:(id)loi dwellTime:(double)time numberOfDaysVisited:(int64_t)visited ageDaysFirstVisit:(int64_t)visit ageDaysFirstRegisteredVisit:(int64_t)registeredVisit locationTechnologyAvailability:(unint64_t)availability visitsWithTechnologyAnnotation:(int64_t)annotation visitsWithGPS:(int64_t)self0 visitsWithWiFiHI:(int64_t)self1
{
  loiCopy = loi;
  v23.receiver = self;
  v23.super_class = RTAuthorizedLocation;
  v20 = [(RTAuthorizedLocation *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_rank = -1;
    objc_storeStrong(&v20->_loi, loi);
    v21->_dwellTime_s = time;
    v21->_numberOfDaysVisited = visited;
    v21->_ageDaysFirstVisit = visit;
    v21->_ageDaysFirstRegisteredVisit = registeredVisit;
    v21->_locationTechnologyAvailability = availability;
    v21->_visitsWithTechnologyAnnotation = annotation;
    v21->_visitsWithGPS = s;
    v21->_visitsWithWiFiHI = i;
  }

  return v21;
}

@end