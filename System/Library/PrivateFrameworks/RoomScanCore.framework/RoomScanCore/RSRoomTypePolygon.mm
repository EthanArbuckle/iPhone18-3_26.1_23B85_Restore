@interface RSRoomTypePolygon
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RSRoomTypePolygon

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = RSRoomTypePolygon;
  result = [(RS2DPolygon *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 8) = self->_type;
  }

  return result;
}

@end