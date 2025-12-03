@interface PGGraphResolvedPlace
- (PGGraphResolvedPlace)initWithPlaceOfInterestType:(id)type confidence:(double)confidence;
@end

@implementation PGGraphResolvedPlace

- (PGGraphResolvedPlace)initWithPlaceOfInterestType:(id)type confidence:(double)confidence
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = PGGraphResolvedPlace;
  v8 = [(PGGraphResolvedPlace *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_placeInterestType, type);
    v9->_confidence = confidence;
  }

  return v9;
}

@end