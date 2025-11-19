@interface RTCellIndex
- (BOOL)isEqual:(id)a3;
- (RTCellIndex)initWithX:(signed __int16)a3 Y:(signed __int16)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation RTCellIndex

- (RTCellIndex)initWithX:(signed __int16)a3 Y:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTCellIndex;
  v6 = [(RTCellIndex *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(RTCellIndex *)v6 setX:v5];
    [(RTCellIndex *)v7 setY:v4];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  x = self->_x;
  y = self->_y;

  return [v4 initWithX:x Y:y];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(RTCellIndex *)self x];
  if (v5 == [v4 x])
  {
    v6 = [(RTCellIndex *)self y];
    v7 = v6 == [v4 y];
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