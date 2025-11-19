@interface RSRoomTypePolygon
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RSRoomTypePolygon

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = RSRoomTypePolygon;
  result = [(RS2DPolygon *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 8) = self->_type;
  }

  return result;
}

@end