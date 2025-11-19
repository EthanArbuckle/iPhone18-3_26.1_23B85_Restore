@interface _UIEventSessionContextualAction
- (CGPoint)originatingLocation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _UIEventSessionContextualAction

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIEventSessionContextualAction;
  result = [(_UIEventSessionAction *)&v5 copyWithZone:a3];
  *(result + 72) = self->_originatingLocation;
  return result;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = _UIEventSessionContextualAction;
  v3 = [(_UIEventSessionAction *)&v13 description];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AEC0];
  [(_UIEventSessionContextualAction *)self originatingLocation];
  v7 = v6;
  [(_UIEventSessionContextualAction *)self originatingLocation];
  v9 = [v5 stringWithFormat:@" originatingLocation = (%f, %f)", v7, v8];
  [v4 addObject:v9];

  if ([v4 count])
  {
    v10 = [v4 componentsJoinedByString:{@", "}];
    v11 = [v3 stringByAppendingFormat:@" %@", v10];

    v3 = v11;
  }

  return v3;
}

- (CGPoint)originatingLocation
{
  x = self->_originatingLocation.x;
  y = self->_originatingLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end