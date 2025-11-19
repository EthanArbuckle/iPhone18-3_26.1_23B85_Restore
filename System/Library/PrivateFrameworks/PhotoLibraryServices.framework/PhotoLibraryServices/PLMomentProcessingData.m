@interface PLMomentProcessingData
- (CLLocationCoordinate2D)pl_coordinate;
- (PLMomentProcessingData)initWithMoment:(id)a3;
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

- (PLMomentProcessingData)initWithMoment:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PLMomentProcessingData;
  v5 = [(PLMomentProcessingData *)&v17 init];
  if (v5)
  {
    v6 = [v4 pl_uuid];
    pl_uuid = v5->_pl_uuid;
    v5->_pl_uuid = v6;

    v8 = [v4 pl_startDate];
    pl_startDate = v5->_pl_startDate;
    v5->_pl_startDate = v8;

    v10 = [v4 pl_endDate];
    pl_endDate = v5->_pl_endDate;
    v5->_pl_endDate = v10;

    v5->_pl_numberOfAssets = [v4 pl_numberOfAssets];
    v12 = [v4 pl_location];
    pl_location = v5->_pl_location;
    v5->_pl_location = v12;

    [v4 pl_coordinate];
    v5->_pl_coordinate.latitude = v14;
    v5->_pl_coordinate.longitude = v15;
    v5->_pl_originatorState = [v4 pl_originatorState];
    v5->_pl_locationType = [v4 pl_locationType];
  }

  return v5;
}

@end