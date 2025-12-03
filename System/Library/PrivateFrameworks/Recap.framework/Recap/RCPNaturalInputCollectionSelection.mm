@interface RCPNaturalInputCollectionSelection
- (CGPoint)direction;
- (CGPoint)location;
- (RCPNaturalInputCollectionSelection)initWithLocation:(CGPoint)location zPosition:(double)position direction:(CGPoint)direction zDirection:(double)zDirection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation RCPNaturalInputCollectionSelection

- (RCPNaturalInputCollectionSelection)initWithLocation:(CGPoint)location zPosition:(double)position direction:(CGPoint)direction zDirection:(double)zDirection
{
  y = direction.y;
  x = direction.x;
  v10 = location.y;
  v11 = location.x;
  v13.receiver = self;
  v13.super_class = RCPNaturalInputCollectionSelection;
  result = [(RCPNaturalInputCollectionSelection *)&v13 init];
  result->_location.x = v11;
  result->_location.y = v10;
  result->_direction.x = x;
  result->_direction.y = y;
  result->_zPosition = position;
  result->_zDirection = zDirection;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(RCPNaturalInputCollectionSelection *)self location];
  v6 = v5;
  [(RCPNaturalInputCollectionSelection *)self location];
  v8 = v7;
  [(RCPNaturalInputCollectionSelection *)self zPosition];
  v10 = v9;
  [(RCPNaturalInputCollectionSelection *)self direction];
  v12 = v11;
  [(RCPNaturalInputCollectionSelection *)self direction];
  v14 = v13;
  [(RCPNaturalInputCollectionSelection *)self zDirection];
  return [v3 stringWithFormat:@"<%@: { location: (%f, %f), zPosition: %f, direction: (%f, %f), zDirection: %f }>", v4, v6, v8, v10, v12, v14, v15];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  zPosition = self->_zPosition;
  zDirection = self->_zDirection;
  x = self->_location.x;
  y = self->_location.y;
  v9 = self->_direction.x;
  v10 = self->_direction.y;

  return [v4 initWithLocation:x zPosition:y direction:zPosition zDirection:{v9, v10, zDirection}];
}

- (CGPoint)location
{
  objc_copyStruct(v4, &self->_location, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)direction
{
  objc_copyStruct(v4, &self->_direction, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end