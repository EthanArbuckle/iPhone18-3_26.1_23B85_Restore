@interface PGGraphResolvedPlace
- (PGGraphResolvedPlace)initWithPlaceOfInterestType:(id)a3 confidence:(double)a4;
@end

@implementation PGGraphResolvedPlace

- (PGGraphResolvedPlace)initWithPlaceOfInterestType:(id)a3 confidence:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGGraphResolvedPlace;
  v8 = [(PGGraphResolvedPlace *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_placeInterestType, a3);
    v9->_confidence = a4;
  }

  return v9;
}

@end