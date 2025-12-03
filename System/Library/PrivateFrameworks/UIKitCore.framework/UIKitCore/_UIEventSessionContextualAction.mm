@interface _UIEventSessionContextualAction
- (CGPoint)originatingLocation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _UIEventSessionContextualAction

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIEventSessionContextualAction;
  result = [(_UIEventSessionAction *)&v5 copyWithZone:zone];
  *(result + 72) = self->_originatingLocation;
  return result;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = _UIEventSessionContextualAction;
  v3 = [(_UIEventSessionAction *)&v13 description];
  array = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AEC0];
  [(_UIEventSessionContextualAction *)self originatingLocation];
  v7 = v6;
  [(_UIEventSessionContextualAction *)self originatingLocation];
  v9 = [v5 stringWithFormat:@" originatingLocation = (%f, %f)", v7, v8];
  [array addObject:v9];

  if ([array count])
  {
    v10 = [array componentsJoinedByString:{@", "}];
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