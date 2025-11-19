@interface PGMomentNodeCachedValues
- (CLLocationCoordinate2D)bestLocationCoordinate;
- (PGMomentNodeCachedValues)init;
@end

@implementation PGMomentNodeCachedValues

- (CLLocationCoordinate2D)bestLocationCoordinate
{
  latitude = self->_bestLocationCoordinate.latitude;
  longitude = self->_bestLocationCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PGMomentNodeCachedValues)init
{
  v9.receiver = self;
  v9.super_class = PGMomentNodeCachedValues;
  v2 = [(PGMomentNodeCachedValues *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_neighborScore = NAN;
    v2->_bestLocationCoordinate = CLLocationCoordinate2DMake(NAN, NAN);
    v4 = [MEMORY[0x277CBEB68] null];
    previousMomentNode = v3->_previousMomentNode;
    v3->_previousMomentNode = v4;

    v6 = [MEMORY[0x277CBEB68] null];
    nextMomentNode = v3->_nextMomentNode;
    v3->_nextMomentNode = v6;
  }

  return v3;
}

@end