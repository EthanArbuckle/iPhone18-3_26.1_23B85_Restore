@interface PLMomentProcessingData
- (CLLocationCoordinate2D)pl_coordinate;
- (PLMomentProcessingData)initWithMoment:(id)moment;
@end

@implementation PLMomentProcessingData

- (CLLocationCoordinate2D)pl_coordinate
{
  latitude = self->_pl_coordinate.latitude;
  longitude = self->_pl_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PLMomentProcessingData)initWithMoment:(id)moment
{
  momentCopy = moment;
  v17.receiver = self;
  v17.super_class = PLMomentProcessingData;
  v5 = [(PLMomentProcessingData *)&v17 init];
  if (v5)
  {
    pl_uuid = [momentCopy pl_uuid];
    pl_uuid = v5->_pl_uuid;
    v5->_pl_uuid = pl_uuid;

    pl_startDate = [momentCopy pl_startDate];
    pl_startDate = v5->_pl_startDate;
    v5->_pl_startDate = pl_startDate;

    pl_endDate = [momentCopy pl_endDate];
    pl_endDate = v5->_pl_endDate;
    v5->_pl_endDate = pl_endDate;

    v5->_pl_numberOfAssets = [momentCopy pl_numberOfAssets];
    pl_location = [momentCopy pl_location];
    pl_location = v5->_pl_location;
    v5->_pl_location = pl_location;

    [momentCopy pl_coordinate];
    v5->_pl_coordinate.latitude = v14;
    v5->_pl_coordinate.longitude = v15;
    v5->_pl_originatorState = [momentCopy pl_originatorState];
    v5->_pl_locationType = [momentCopy pl_locationType];
  }

  return v5;
}

@end