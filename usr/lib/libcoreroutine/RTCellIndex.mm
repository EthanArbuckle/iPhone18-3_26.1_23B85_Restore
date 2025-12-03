@interface RTCellIndex
- (BOOL)isEqual:(id)equal;
- (RTCellIndex)initWithX:(signed __int16)x Y:(signed __int16)y;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation RTCellIndex

- (RTCellIndex)initWithX:(signed __int16)x Y:(signed __int16)y
{
  yCopy = y;
  xCopy = x;
  v9.receiver = self;
  v9.super_class = RTCellIndex;
  v6 = [(RTCellIndex *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(RTCellIndex *)v6 setX:xCopy];
    [(RTCellIndex *)v7 setY:yCopy];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  x = self->_x;
  y = self->_y;

  return [v4 initWithX:x Y:y];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [(RTCellIndex *)self x];
  if (v5 == [equalCopy x])
  {
    v6 = [(RTCellIndex *)self y];
    v7 = v6 == [equalCopy y];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(RTCellIndex *)self x];
  v4 = [(RTCellIndex *)self x];
  if (v3 > 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = [(RTCellIndex *)self y];
  v7 = [(RTCellIndex *)self y];
  v8 = v7;
  if (v6 <= 0)
  {
    v8 = -v7;
  }

  return (2654435761 * v8) ^ (2654435761 * v5);
}

@end