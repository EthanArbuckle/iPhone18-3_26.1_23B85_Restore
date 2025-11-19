@interface RCPNaturalInputCollectionManipulator
- (CGPoint)location;
- (RCPNaturalInputCollectionManipulator)initWithLocation:(CGPoint)a3 zPosition:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6 isOpen:(BOOL)a7;
- (__n128)initWithLocation:(CGFloat)a3 zPosition:(double)a4 orientation:(uint64_t)a5 sourceGroup:(uint64_t)a6 interactionMethod:(int64_t)a7 isOpen:(int64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation RCPNaturalInputCollectionManipulator

- (RCPNaturalInputCollectionManipulator)initWithLocation:(CGPoint)a3 zPosition:(double)a4 sourceGroup:(int64_t)a5 interactionMethod:(int64_t)a6 isOpen:(BOOL)a7
{
  y = a3.y;
  x = a3.x;
  v14.receiver = self;
  v14.super_class = RCPNaturalInputCollectionManipulator;
  result = [(RCPNaturalInputCollectionManipulator *)&v14 init];
  result->_location.x = x;
  result->_location.y = y;
  result->_zPosition = a4;
  result->_sourceGroup = a5;
  result->_interactionMethod = a6;
  result[1]._zPosition = 0.0;
  result[1]._sourceGroup = 0;
  *&result[1].super.isa = xmmword_261A03DB0;
  result->_isOpen = a7;
  return result;
}

- (__n128)initWithLocation:(CGFloat)a3 zPosition:(double)a4 orientation:(uint64_t)a5 sourceGroup:(uint64_t)a6 interactionMethod:(int64_t)a7 isOpen:(int64_t)a8
{
  v18.receiver = a1;
  v18.super_class = RCPNaturalInputCollectionManipulator;
  v16 = [(RCPNaturalInputCollectionManipulator *)&v18 init];
  v16->_location.x = a2;
  v16->_location.y = a3;
  v16->_zPosition = a4;
  v16->_sourceGroup = a7;
  v16->_interactionMethod = a8;
  v16->_isOpen = a9;
  result = *(a6 + 16);
  *&v16[1].super.isa = *a6;
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
  v11 = [(RCPNaturalInputCollectionManipulator *)self sourceGroup];
  v12 = [(RCPNaturalInputCollectionManipulator *)self interactionMethod];
  v13 = [(RCPNaturalInputCollectionManipulator *)self isOpen];
  v14 = @"NO";
  if (v13)
  {
    v14 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: { Location: (%f, %f), zPosition: %f, Source Group: %ld, Interaction Method: %ld, Open: %@ }>", v4, v6, v8, v10, v11, v12, v14];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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