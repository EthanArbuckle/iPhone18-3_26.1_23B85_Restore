@interface RCPNaturalInputCollectionManipulator
- (CGPoint)location;
- (RCPNaturalInputCollectionManipulator)initWithLocation:(CGPoint)location zPosition:(double)position sourceGroup:(int64_t)group interactionMethod:(int64_t)method isOpen:(BOOL)open;
- (__n128)initWithLocation:(CGFloat)location zPosition:(double)position orientation:(uint64_t)orientation sourceGroup:(uint64_t)group interactionMethod:(int64_t)method isOpen:(int64_t)open;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation RCPNaturalInputCollectionManipulator

- (RCPNaturalInputCollectionManipulator)initWithLocation:(CGPoint)location zPosition:(double)position sourceGroup:(int64_t)group interactionMethod:(int64_t)method isOpen:(BOOL)open
{
  y = location.y;
  x = location.x;
  v14.receiver = self;
  v14.super_class = RCPNaturalInputCollectionManipulator;
  result = [(RCPNaturalInputCollectionManipulator *)&v14 init];
  result->_location.x = x;
  result->_location.y = y;
  result->_zPosition = position;
  result->_sourceGroup = group;
  result->_interactionMethod = method;
  result[1]._zPosition = 0.0;
  result[1]._sourceGroup = 0;
  *&result[1].super.isa = xmmword_261A03DB0;
  result->_isOpen = open;
  return result;
}

- (__n128)initWithLocation:(CGFloat)location zPosition:(double)position orientation:(uint64_t)orientation sourceGroup:(uint64_t)group interactionMethod:(int64_t)method isOpen:(int64_t)open
{
  v18.receiver = self;
  v18.super_class = RCPNaturalInputCollectionManipulator;
  v16 = [(RCPNaturalInputCollectionManipulator *)&v18 init];
  v16->_location.x = a2;
  v16->_location.y = location;
  v16->_zPosition = position;
  v16->_sourceGroup = method;
  v16->_interactionMethod = open;
  v16->_isOpen = a9;
  result = *(group + 16);
  *&v16[1].super.isa = *group;
  *&v16[1]._zPosition = result;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(RCPNaturalInputCollectionManipulator *)self location];
  v6 = v5;
  [(RCPNaturalInputCollectionManipulator *)self location];
  v8 = v7;
  [(RCPNaturalInputCollectionManipulator *)self zPosition];
  v10 = v9;
  sourceGroup = [(RCPNaturalInputCollectionManipulator *)self sourceGroup];
  interactionMethod = [(RCPNaturalInputCollectionManipulator *)self interactionMethod];
  isOpen = [(RCPNaturalInputCollectionManipulator *)self isOpen];
  v14 = @"NO";
  if (isOpen)
  {
    v14 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: { Location: (%f, %f), zPosition: %f, Source Group: %ld, Interaction Method: %ld, Open: %@ }>", v4, v6, v8, v10, sourceGroup, interactionMethod, v14];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  zPosition = self->_zPosition;
  sourceGroup = self->_sourceGroup;
  interactionMethod = self->_interactionMethod;
  isOpen = self->_isOpen;
  x = self->_location.x;
  y = self->_location.y;
  v11 = *&self[1]._zPosition;
  v13[0] = *&self[1].super.isa;
  v13[1] = v11;
  return [v4 initWithLocation:v13 zPosition:sourceGroup orientation:interactionMethod sourceGroup:isOpen interactionMethod:x isOpen:{y, zPosition}];
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

@end